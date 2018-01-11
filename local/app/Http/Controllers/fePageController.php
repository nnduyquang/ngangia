<?php

namespace App\Http\Controllers;

use App\Category;
use App\Post;
use Illuminate\Http\Request;

class fePageController extends Controller
{
    public function getPageInfo($path){
        $page=Post::where('post_type','=',0)->where('path','=',$path)->first();
        $menu_horizon= Category::where('level', '=', 0)->orderBy('order')->get();
        return view('frontend.page.gioithieu', compact('page','menu_horizon'));
    }
}
