<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Book;
use App\Models\User;
use Illuminate\Support\Facades\Auth;

class UserController extends Controller
{
    public function dashboard_view(Request $request){        
        $response['book_count'] = Book::count();
        $response['user_count'] = User::count();
        $response['books_data'] = Book::get();
        $response['user_roles'] = User::where('id',Auth::user()->id)->with('roles')->first();
            // echo json_encode($response['user_roles']);die();
        return view('user.dashboard',$response);
    }


    
    public function load_books(){
        $url = "https://stephen-king-api.onrender.com/api/books";

        $curl = curl_init();
        curl_setopt($curl,CURLOPT_RETURNTRANSFER,1);
        curl_setopt($curl,CURLOPT_URL,$url);

        $result = curl_exec($curl);
        curl_close($curl);

        $result = json_decode($result,true);

        for($i=0;$i<count($result['data']);$i++){
            $book = new Book();
            $book->year = $result['data'][$i]['Year'];
            $book->title = $result['data'][$i]['Title'];
            $book->handle = $result['data'][$i]['handle'];
            $book->publisher = $result['data'][$i]['Publisher'];
            $book->isbn = $result['data'][$i]['ISBN'];
            $book->pages = $result['data'][$i]['Pages'];
            $book->notes = json_encode($result['data'][$i]['Notes']);
            
            $book->save();
        }
        echo "done";
    }
}
