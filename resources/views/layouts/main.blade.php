<!doctype html>
<html>
    <head>
        <title>Project13Men.org | @yield('title')</title>
        <!-- Bootstrap core CSS -->
        <link href="/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="/css/style.css" rel="stylesheet">
    </head>
    <body>
		@include('layouts.navbar');

        <div class="container">
            @yield('content')
        </div>
    </body>
</html>
