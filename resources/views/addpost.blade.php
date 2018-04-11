@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Add Post </div>

                <div class="card-body">
                    <form method="POST" action="{{ route('add') }}">
                        @csrf

                        <div class="form-group row">
                            <label for="title" class="col-sm-4 col-form-label text-md-right">Title</label>

                            <div class="col-md-6">
                                <input id="title" type="text" class="form-control{{ $errors->has('title') ? ' is-invalid' : '' }}" name="title" value="{{ old('title') }}" required autofocus>

                                @if ($errors->has('title'))
                                    <span class="invalid-feedback">
                                        <strong>{{ $errors->first('title') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group row">
                                <label for="description" class="col-sm-4 col-form-label text-md-right">Description</label>
    
                                <div class="col-md-6">
                                    <input id="description" type="textarea" class="form-control{{ $errors->has('description') ? ' is-invalid' : '' }}" name="description" value="{{ old('description') }}" required autofocus>
    
                                    @if ($errors->has('description'))
                                        <span class="invalid-feedback">
                                            <strong>{{ $errors->first('description') }}</strong>
                                        </span>
                                    @endif
                                </div>
                            </div>

                        <div class="form-group row">
                                <label for="college_id" class="col-sm-4 col-form-label text-md-right"> College </label>
                                <div class="col-md-6">
                                    <select class="form-control{{ $errors->has('college_id') ? ' is-invalid' : '' }}" name="college_id" placeholder="Select College"  required autofocus>
                                            <option selected disabled hidden>Choose College</option>
                                        <?php foreach($colleges as $college) {?>
                                            <option value={{$college->id}}>{{$college->college_name}}</option>
                                            <?php }?>
                                    </select>
                                    @if ($errors->has('college_id'))
                                        <span class="invalid-feedback">
                                            <strong>{{ $errors->first('college_id') }}</strong>
                                        </span>
                                    @endif
                                </div>
                            </div>

                        <div class="form-group row mb-0">
                            <div class="col-md-8 offset-md-4">
                                <button type="submit" class="btn btn-primary">
                                    ADD POST
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
