<?php

namespace App\Http\Controllers;

use App\Category;
use App\Post;
use Illuminate\Http\Request;

class fePageController extends Controller
{
    public function getGioiThieuInfo(){
//        $page=Post::where('post_type','=',0)->where('path','=',$path)->first();
        $menu_horizon= Category::where('level', '=', 0)->orderBy('order')->get();
        return view('frontend.page.gioithieu', compact('menu_horizon'));
    }
    public  function getLienHeInfo(){
//        $page=Post::where('post_type','=',0)->where('path','=',$path)->first();
        $list_sidebar = Category::select('id', 'name', 'level', 'parent_id','path')->where('level', '=', 0)->orWhere('level', '=', 1)->orderBy('order')->get();
        $menu_sidebar = [];
        self::showCategoryDropDown($list_sidebar, 0, $menu_sidebar);
        $menu_horizon= Category::where('level', '=', 0)->orderBy('order')->get();
        return view('frontend.page.lienhe', compact('menu_horizon','menu_sidebar'));
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
}
