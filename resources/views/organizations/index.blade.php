@extends('layouts.main')

@section('title', 'Organizations List')

@section('sidebar')
<div class="panel panel-primary">
    <div class="panel-heading">
        <h3 class="panel-title">
            Menu
        </h3>
    </div>
    <div class="list-group">
        <a class="list-group-item" href="{{ URL::to('organizations/create') }}">Add Organization</a>
    </div>
</div>
@stop

@section('content')
<h1>Organizations List</h1>
<table class="table table-hover table-bordered">
    <thead>
        <tr>
            <th>Organization</th>
            <th>Location</th>
        </tr>
    </thead>
    <tbody>
        @foreach($orgs as $org)
        <tr>
            <td><a href='/organizations/{{ $org->id }}'>{{$org->name}}</a></td>
            <td>{{$org->city}}, {{$org->state}}</td>
        </tr>
        @endforeach
    </tbody>
</table>
@stop
