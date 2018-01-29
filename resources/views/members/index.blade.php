@extends('layouts.main')

@section('title')Members List @endsection

@section('content')
<h1>Members List</h1>
<table class="table table-hover table-bordered">
    <thead>
        <tr>
			<th>Name</th>
            <th>Organization</th>
            <th>Project13</th>
        </tr>
    </thead>
    <tbody>
        @foreach($members as $member)
        <tr>
			<td>{{ $member->last_name . ', ' . $member->first_name }}</td>
            <td>{{ $member->organization->name }}</td>
            <td>
				@if($member->project13)
				P13-{{ $member->project13->id }}
				@else
				&nbsp;
				@endif
			</td>
        </tr>
        @endforeach
    </tbody>
</table>
@endsection