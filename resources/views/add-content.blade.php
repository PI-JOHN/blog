@extends('layouts.site')

@section('content')

<div class="jumbotron">
    <div class="container">
        <h1>{{ $header }}</h1>
        <p>{{ $message }}</p>
        <p><a href="#" class="btn btn-primary btn-lg" role="button">Learn more</a></p>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="form col-md-12">
            <form action="{{ route('articleStore') }}" method="post">
                <div class="form-group">
                    <label for="title">Заголовок</label>
                    <input type="text" class="form-control" id="title" name="title">
                </div>
                <div class="form-group">
                    <label for="alias">Псевдоним</label>
                    <input type="text" class="form-control" id="alias" name="alias">
                </div>
                <div class="form-group">
                    <label for="exampleInputFile">Краткое описание</label>
                    <textarea name="desc" class="form-control" id="" cols="40" rows="5"></textarea>
                </div>
                <div class="form-group">
                    <label for="exampleInputFile">Полный текст</label>
                    <textarea name="text" class="form-control" id="" cols="40" rows="10"></textarea>
                </div>
                <button type="submit" class="btn btn-default">Submit</button>

                {{ csrf_field() }}
            </form>
        </div>
    </div>
</div>

@endsection
