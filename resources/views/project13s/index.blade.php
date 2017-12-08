@extends('layouts.main')

@section('title', 'Project13 List')

@section('sidebar')
<div class="panel panel-primary">
    <div class="panel-heading">
        <h3 class="panel-title">
            Menu
        </h3>
    </div>
    <div class="list-group">
        <a class="list-group-item" href="/project13s/create">Add Project13</a>
    </div>
</div>
@stop

@section('content')
<h1>Project13 List</h1>
<table class="table table-hover table-bordered">
    <thead>
        <tr>
            <th>Organization</th>
            <th>Project13</th>
        </tr>
    </thead>
    <tbody>
        @foreach($project13s as $project13)
        <tr>
            <td>{{ $project13->organization->name }}</td>
            <td><a href='/project13s/{{ $project13->id }}'>P13-{{ $project13->id }}</a></td>
        </tr>
        @endforeach
    </tbody>
</table>
@stop

@section('script')
<script type="text/javascript">	function process() {}</script>
@stop

