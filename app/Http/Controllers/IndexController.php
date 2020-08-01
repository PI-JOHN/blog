<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Article;

class IndexController extends Controller
{
    protected $message;
    protected $header;

    public function __construct()
    {
        $this->header = 'Start Page';
        $this->message = 'This is a template for a simple marketing or informational website. It includes a large callout
                    called a jumbotron and three supporting pieces of content. Use it as a starting point to create
                    something more unique.';
    }


    public function index()
    {

        $articles = Article::select(['id', 'title', 'desc'])->get();
        //dump($articles);

        return view('page')->with(['message'=> $this->message,
                                        'header'=> $this->header,
                                        'articles' => $articles]);
    }



}
