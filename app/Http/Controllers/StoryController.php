<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class StoryController extends Controller
{
    function index(){
        
        $story = DB::table('story')
        ->orderBy('created_at','DESC')
        ->get();

        return view('index', ['story' => $story]);
    }

    function post_story(Request $request){
        $judul=$request->input('judul');
        $cerita=$request->input('cerita');

        DB::table('story')->insert([
            "judul" => $judul,
            "cerita" => $cerita,
            "created_at" => date('Y-m-d H:i:s'),
            "user_id" => \Auth::id(),
        ]);

        return redirect('/story');
    }

    function like(Request $request){
        $cerita_id=$request->input('cerita_id');
        DB::table('likers')->insert([
            "cerita_id" => $cerita_id,
            "user_id" => \Auth::id()
        ]);

        return response()->json([
            "code" => 200,
            "message" => "Berhasil"
        ]);
    }
}
