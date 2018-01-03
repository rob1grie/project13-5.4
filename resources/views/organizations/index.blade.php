@extends('layouts.main')

@section('title', 'Organizations List')

@section('content')
<div class="subsection-head">
	<div class="page-title"><h1>Organizations List</h1></div>
	<div class="subsection-buttons">
		<a class="btn btn-primary" href="{{ URL::to('organizations/create') }}">Add Organization</a>
	</div>
</div>

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
