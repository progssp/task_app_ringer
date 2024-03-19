@extends('main')
@section('title','Login')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md">
                @if (Auth::check())
                    <h4>{{Auth::user()->name}}</h4>
                    <h6>{{Auth::user()->email}}</h6>
                    <a href="/logout">Logout</a>
                @endif
            </div>
        </div>

        <div class="row">
            <div class="col-md-6">
                <div class="jumbotron">
                    <h1 class="display-4">Total users</h1>
                    <p class="lead">{{$user_count}}</p>
                    <hr class="my-4">
                </div>
            </div>
            <div class="col-md-6">
                <div class="jumbotron">
                    <h1 class="display-4">Total books</h1>
                    <p class="lead">{{$book_count}}</p>
                    <hr class="my-4">
                </div>
            </div>
        </div>

        @foreach ($user_roles->roles as $item)
            @if ($item->role_name == "Admin")
                
                <div class="row">
                    <div class="col-md">
                        <table class="table table-striped" id="example">
                            <thead>
                                <tr>
                                    <th>Id</th>
                                    <th>Year</th>
                                    <th>Title</th>
                                    <th>Handle</th>
                                    <th>Publisher</th>
                                    <th>ISBN</th>
                                    <th>Pages</th>
                                    <th>Notes</th>
                                </tr>
                            </thead>
                            <tbody>
                                @php
                                    $counter = 0;
                                @endphp
                                @forelse ($books_data as $item)
                                    @php
                                        $counter++;
                                    @endphp
                                    
                                <tr>
                                    <td>{{$counter}}</td>
                                    <td>{{$item->year}}</td>
                                    <td>{{$item->title}}</td>
                                    <td>{{$item->handle}}</td>
                                    <td>{{$item->publisher}}</td>
                                    <td>{{$item->isbn}}</td>
                                    <td>{{$item->pages}}</td>
                                    <td>{{implode(",",json_decode($item->notes))}}</td>
                                </tr>
                                @empty
                                    
                                @endforelse
                                
                            </tbody>
                        </table>
                    </div>
                </div>
            @endif    
        @endforeach
        
    </div>

    
    <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
    <script src="https://cdn.datatables.net/2.0.2/js/dataTables.min.js"></script>
    <script>
        $('#example').DataTable();
    </script>
    
    
@endsection