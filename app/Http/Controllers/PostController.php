<?php

namespace App\Http\Controllers;

use App\Post;
use App\College;
use App\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;

class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $posts = Post::where('user_id', (Auth::user()->id))->get();
        foreach ($posts as $post) {
            $post->posted_by = $post->user->name;
            $post->college = College::find($post->college_id);
        }
        return $posts;
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        if(!isset(Auth::user()->id)) return view('auth.login');
        else{
        $colleges=College::all();
        return view('addpost')->with('colleges',$colleges);
        }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if(!isset(Auth::user()->id)) return view('auth.login');
        else{
        if(Post::create(array_merge($request->except('_token'), ['user_id' => Auth::user()->id]))){
            session()->flash('msg', 'Successfully added post');
            return $this->show();
        }
        else return redirect()->back();
    }
    }

     /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function display(Request $request)
    {
        $user= User::where('email',$request->email)->first();
        $posts = Post::where('user_id', $user->id)->get();
        foreach ($posts as $post) {
            $post->posted_by = $post->user->name;
            $post->college = College::find($post->college_id);
        }
        return $posts;

    }
    /**
     * Display the specified resource.
     *
     * @param  \App\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function show()
    {
        if(!isset(Auth::user()->id)) return view('auth.login');
        else{
        $posts = Post::where('user_id', (Auth::user()->id))->get();
        foreach ($posts as $post) {
            $post->posted_by = $post->user->name;
            $post->college = College::find($post->college_id);
        }

        return view('home')->with('posts', $posts);
    }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function edit(Post $post)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Post $post)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function destroy(Post $post)
    {
       
        if($post->delete()) {
            session()->flash('msg', 'Successfully deleted post');
            return $this->show();
        } 
    
    }
}
