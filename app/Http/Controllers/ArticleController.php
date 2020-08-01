<?php


namespace App\Http\Controllers;


use App\Article;
use Illuminate\Http\Request;

class ArticleController extends IndexController
{
    public function show($id)
    {
        //$article = Article::find($id);
        $article = Article::select(['id','title','text'])->where('id', $id)->first();
        //dump($article);
        return view('article-content')->with(['message'=> $this->message,
            'header'=> $this->header,
            'article' => $article]);
    }


    public function add()
    {
        return view('add-content')->with(['message'=> $this->message,
            'header'=> $this->header
        ]);
    }


    public function store(Request $request)
    {
        $this->validate($request, [
            'title' => 'required|max:255',
            'alias' => 'required|unique:articles,alias',
            'text' => 'required'
        ]);

        $data = $request->all();
        $article = new Article;
        $article->fill($data);
        $article->save();

        return redirect('/');

    }
}
