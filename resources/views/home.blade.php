@extends('layouts.app')

@section('content')
<div class="container-fluid">
    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <div class="card">
                    {!! Session::has('msg') ? Session::get("msg") : '' !!}
                <div class="card-header">
                    <span>View Your Posts Here</span>
                    <span style="float:right"><a id="AddPost" class="nav-link"  href="{{ url('/posts/add')}}" role="button" aria-haspopup="true" aria-expanded="false" v-pre>
                            Add Post  
                         </a></span>
                </div>
                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success">
                            {{ session('status') }}
                        </div>
                    @endif   
                </div>
               <div>
                    <table style="width:100%">
                            <tr>
                              <th>Posted By</th>
                              <th>Title</th>
                              <th>Description</th>
                              <th>College</th>
                              <th>Actions</th>
                            </tr>
                            <?php
                            foreach($posts as $post)
                            {?>
                                <tr>
                                    <td>{{$post->user->name}}</td>
                                    <td>{{$post->title}}</td>
                                    <td>{{$post->description}}</td>
                                    <td>{{$post->college->college_name}}</td>
                                    <td>
                                            <a href="#"
                                            onclick="event.preventDefault();
                                                          document.getElementById('delete-form').submit();">
                                             
                                         Delete</a> 
     
                                         <form id="delete-form" action="{{ url("/posts/delete/$post->id") }}" method="POST" style="display: none;">
                                             @csrf
                                             {{ method_field('DELETE') }}
                                         </form>
                                    </td>
                                  </tr>
                           <?php }?>
                            
                          </table>
               </div> 
            </div>
        </div>
    </div>
</div>
@endsection
