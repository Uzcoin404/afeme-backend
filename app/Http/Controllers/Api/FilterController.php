<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Helpers\Traits\ApiResponcer;
use App\Models\Product;
use App\Http\Resources\PostResource;

class FilterController extends Controller
{
    use ApiResponcer;

    public function filter(Request $request)
    {

        // $data = PostResource::collection(Product::all());
        $data = Product::query();

        if ($request->keyword) {
            $lang = $request->lang;
            $key = $request->keyword;

            $data = Product::where('description', 'like', '%' . $key . '%')
                ->orWhere('room', 'like', '%' . $key . '%')
                ->orWhereHas('region', function ($query) use ($key, $lang) {
                    $query->where('name_' . $lang, 'LIKE', "%$key%");
                })
                ->orWhereHas('htype', function ($query) use ($key, $lang) {
                    $query->where('name_' . $lang, 'LIKE', "%$key%");
                })
                ->orWhereHas('city', function ($query) use ($key, $lang) {
                    $query->where('name_' . $lang, 'LIKE', "%$key%");
                })
                ->orWhereHas('sale', function ($query) use ($key, $lang) {
                    $query->where('name_' . $lang, 'LIKE', "%$key%");
                })
                ->orWhereHas('material', function ($query) use ($key, $lang) {
                    $query->where('name_' . $lang, 'LIKE', "%$key%");
                })
                ->orWhereHas('repair', function ($query) use ($key, $lang) {
                    $query->where('name_' . $lang, 'LIKE', "%$key%");
                });
        }

        if ($request->city_id) {
            $data = $data->where('city_id', $request->city_id);
        }

        if ($request->region_id) {
            $data = $data->where('region_id', $request->region_id);
        }

        if ($request->room) {
            if ($request->room == '5*') {
                $data->where('room', '>=', '5');
            } else {
                $data->where('room', $request->room);
            }
        }


        if ($request->htype) {
            $data = $data->where('htype_id', $request->htype);
        }

        if ($request->sale_id) {
            $data = $data->where('sale_id', $request->sale_id);
        }

        $request->from ? $from = $request->from : $from = 0;
        $request->to ? $to = $request->to : $to = 99999999;

        if ($request->price_type == 'usd') {
            $json = json_decode(file_get_contents('https://nbu.uz/uz/exchange-rates/json/'), true);



            foreach ($json as $key => $valeu) {
                if ($valeu['code'] == 'USD') {
                    $usd = $valeu['cb_price'];
                }
            }

            $from = $from * $usd;
            $to = $to * $usd;

            $data = $data->whereBetween('price_som', [$from, $to]);
        } elseif ($request->price_type == 'som') {

            $data = $data->whereBetween('price_som', [$from, $to]);
        }

        // accept several possible representations of a moderated/approved product
        $data = $data->whereIn('check', ['1', 'true', 1, true]);

        $data = PostResource::collection($data->paginate($request->perpage));




        $count = count($data);

        if ($count) {
            $massage = $count . "ta ma'lumot topildi";
            return  $data;
        } else {

            $massage = "Ma'lumot topilmadi";
            return $this->error($massage, 404);
        }
    }

    public function position()
    {
        $user = auth()->guard('api')->user();

        $data = Product::where('region_id', $user->region_id)->get();
        $data = PostResource::collection($data);
        $count = count($data);

        if ($count) {
            $massage = $count . "ta ma'lumot topildi";
            return  $this->success($data, $massage, 200);
        } else {

            $massage = "Ma'lumot topilmadi";
            return $this->error($massage, 404);
        }
    }
}
