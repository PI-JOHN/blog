@extends('layouts.site')

@section('content')
<!-- Main jumbotron for a primary marketing message or call to action -->
<div class="jumbotron">
    <div class="container">
        <h1 class="display-3">{{ $header }}</h1>
        <p>{{ $message }}</p>
        <p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more &raquo;</a></p>
    </div>
</div>

<div class="container">
    <!-- Example row of columns -->
    <div class="row">
        @foreach($articles as $article)
            <div class="col-md-4">
                <h2>{{ $article->title }}</h2>
                <p>{{ $article->desc }} </p>
                <p><a class="btn btn-secondary" href="{{ route('articleShow', ['id' => $article->id]) }}" role="button">Подробнее &raquo;</a></p>

                <form action="{{ route('articleDelete', ['article' => $article->id]) }}" method="post">
{{--                    <input type="hidden" name="_method" value="DELETE">--}}
                    {{ method_field('DELETE') }}

                    {{ csrf_field() }}
                    <button type="submit" class="btn btn-danger">
                        Delete
                    </button>
                </form>
            </div>
        @endforeach

    </div>

    <hr>

    <footer>
        <p>&copy; Company 2017</p>
    </footer>
</div> <!-- /container -->


<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
<script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
<script src="../../dist/js/bootstrap.min.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
@endsection
