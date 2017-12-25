<?php

namespace App\Http\Controllers;

use App\Category;
use App\Product;
use Illuminate\Http\Request;

class HomepageController extends Controller
{
    public function showHomepage()
    {
        $list_sidebar = Category::select('id', 'name', 'level', 'parent_id')->where('level', '=', 0)->orWhere('level', '=', 1)->orderBy('order')->get();
        $menu_sidebar = [];
        self::showCategoryDropDown($list_sidebar, 0, $menu_sidebar);
        $list_sidebar2 = Category::where('level', '=', 0)->orderBy('order')->get();
        $list_product = [];
        $final_array = [];
        foreach ($list_sidebar2 as $key => $data) {
            self::test($data, $list_product);
            array_push($final_array, array(["category" => $data, "list_product" => collect($list_product)->sortByDESC('created_at')->take(6)]));
//            dd(collect($list_product)->sortByDESC('created_at')->take(6)->toArray());
            $list_product = [];
        }
//        dd($final_array[0][0]['list_product']);
        dd($final_array);
        return view('frontend.homepage.index', compact('menu_sidebar','final_array'));
    }

    public function showCategoryDropDown($dd_categories, $parent_id = 0, &$newArray)
    {
        foreach ($dd_categories as $key => $data) {
            if ($data->parent_id == $parent_id) {
                array_push($newArray, $data);
                $dd_categories->forget($key);
                self::showCategoryDropDown($dd_categories, $data->id, $newArray);
            }
        }
    }

    public function test($category, &$list_product)
    {
        $list = Product::where('category_id', '=', $category->id)->orderBy('created_at')->get();
        foreach ($list as $key2 => $data2) {
            array_push($list_product, $data2);
        }
        $sub = Category::where('parent_id', '=', $category->id)->get();
        foreach ($sub as $key => $data) {
            self::test($data, $list_product);
        }
    }

}
