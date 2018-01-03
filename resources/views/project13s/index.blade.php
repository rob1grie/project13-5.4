@extends('layouts.main')

@section('title', 'Project13 List')

@section('content')
<div class="subsection-head">
	<div class="page-title"><h1>Project13 List</h1></div>
	<div class="subsection-buttons">
		<a class="btn btn-primary" href="{{ URL::to('/project13s/create') }}">Add Project13</a>
	</div>
</div>


<table class="table table-hover table-bordered">
    <thead>
        <tr>
            <th>Organization</th>
			<th>Location</th>
            <th>Project13</th>
        </tr>
    </thead>
    <tbody>
        @foreach($project13s as $project13)
        <tr>
            <td>{{ $project13->organization['name'] }}</td>
			<td>{{ $project13->organization['city'] . ',' . $project13->organization['state']}} </td>
            <td><a href='/project13s/{{ $project13->id }}'>P13-{{ $project13->id }}</a></td>
        </tr>
        @endforeach
    </tbody>
</table>
@stop

@section('script')
<script type="text/javascript">	function process() {}</script>
@stop

