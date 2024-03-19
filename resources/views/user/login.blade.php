@extends('main')
@section('title','Login')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <form action="" method="post">
                    @csrf
                    @if ($errors->any())
                        <div class="alert alert-danger">
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif
                    @if (Session::has('success'))
                        <div class="alert alert-success">{{Session::get('success')}}</div>                        
                    @endif
                    <div class="form-group">
                        <label>Email</label>
                        <input type="email" name="email" class="form-control" />
                    </div>
                    <div class="form-group" style="margin-top:15px;">
                        <label>Password</label>
                        <input type="password" name="password" class="form-control" />
                    </div>
                    <div class="form-group" style="margin-top:15px;">
                        <input type="submit" value="Login" class="btn btn-success btn-md" />
                    </div>
                </form>
            </div>
        </div>
    </div>

    
    <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
    <script>
        if(document.getElementsByClassName('alert')[0] != null){
            setTimeout(() => {
                $(".alert").fadeOut();
            }, 2000);
        }
    </script>
    
@endsection