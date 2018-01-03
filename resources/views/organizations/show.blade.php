@extends('layouts.main')

@section('title', 'Organization Detail')

@section('sidebar')
<div class="panel panel-primary">
    <div class="panel-heading">
        <h3 class="panel-title">
            Menu
        </h3>
    </div>
    <div class="list-group">
        <a class="list-group-item" href="create">Add Organization</a>
        <a class="list-group-item" href="{{ $org->id }}/edit">Edit Organization</a>
        <a class="list-group-item" href="/project13s/addp13/false/{{ $org->id }}">Add Project13</a>
        <a class="list-group-item" href="/organizations/">Return to List</a>
    </div>
</div>
@stop 

@section('content')
<div class="panel panel-default">
    <h3 class="pad-left-20">{{ $org->name }}</h3>
	<div class="subsection-buttons">
		<a class="btn btn-primary btn-15rem" href="{{ $org->id }}/edit">Edit Organization</a>
	</div>
    <div class="panel-body">
        <div class="row">
            <div class="col-md-3 text-right">Address:</div> 
            <div class="col-md-9">{{ $org->address1 }}</div>
            @if($org->address2)
            <div class="col-md-3">&nbsp;</div> 
            <div class="col-md-9">{{ $org->address2 }}</div>
            @endif
            <div class="col-md-3">&nbsp;</div> 
            <div class="col-md-9">{{ $org->city }}, {{ $org->state }} {{ $org->zipcode }}</div>
            <div class="col-md-3 text-right">Phone (main):</div>
            <div class="col-md-9">{{ $org->main_phone }}&nbsp;</div>
            <div class="col-md-3 text-right">Phone (alternate):</div>
            <div class="col-md-9">{{ $org->alt_phone }}&nbsp;</div>
        </div>
    </div>
</div>
<div class="panel panel-default">
	<h4 class="pad-left-20">Project 13s</h4>
	<div class="subsection-buttons">
		<a class="btn btn-primary btn-15rem" href="/project13s/addp13/false/{{ $org->id }}">Add Project 13</a>
	</div>
	<div class="panel-body">
		<div class="row">
			@foreach($project13s as $project13)
			{{ 'P13-' . $project13['id'] . '  ' }}
			@endforeach
		</div>
	</div>
</div>
<div class="panel panel-default">
	<h4 class="pad-left-20">Members</h4>
	<div class="panel-body">
		<div class="row">
			<table class="table table-hover table-bordered" >
				<thead>
					<tr>
						<th>Name</th>
						<th class="center-text">Project 13</th>
					</tr>
				</thead>
				@foreach($members as $member)
				<tr>
					<td>{{$member->last_name}}, {{$member->first_name}}</td>
					<td class="center-text">
						@if ($member->project13_id)
							P13-{{$member->project13_id}}
						@endif
					</td>
				</tr>
				@endforeach
			</table>
		</div>
	</div>
</div>
@stop