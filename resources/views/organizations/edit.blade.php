@extends('layouts.main')

@section('title', 'Edit Organization')

@section('content')
<div class="panel panel-default">
	<div class="panel-heading">
		<h3 class="panel-title">Edit Organization</h3>
	</div>
	@if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
				<li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
	@endif
	<div class="panel-body">
		{!! Form::open(array('action' => ['OrganizationsController@update', $org->id], 'method' => 'PUT', 'enctype' => 'multipart/form-data')) !!}
        {!! Form::hidden('id', $org->id) !!}
		<div class="form-group">
			{!! Form::label('name', 'Name', $attributes = ['class' => 'col-md-2 control-label']) !!}
			{!! Form::text('name', $value=$org->name, $attributes = ['class' => 'form-control', 'name' => 'name']) !!}
		</div>

		<div class="form-group">
			{!! Form::label('address1', 'Address', $attributes = ['class' => 'col-md-2 control-label']) !!}
			{!! Form::text('address1', $value=$org->address1, $attributes = ['class' => 'form-control', 'name' => 'address1']) !!}
		</div>

		<div class="form-group">
			{!! Form::label('address2', 'Address (2)', $attributes = ['class' => 'col-md-2 control-label']) !!}
			{!! Form::text('address2', $value=$org->address2, $attributes = ['class' => 'form-control', 'name' => 'address2']) !!}
		</div>

		<div class="form-group form-inline">
			{!! Form::label('city', 'City') !!}
			{!! Form::text('city', 
			$value=$org->city, 
			$attributes = ['class' => 'form-control', 'name' => 'city', 'size' => 30]) !!}

			{!! Form::label('state', 'State') !!}
			{{ Form::select('state', $states, $org->state) }}

			{!! Form::label('zipcode', 'Zip Code') !!}
			{!! Form::text('zipcode', 
			$value=$org->zipcode, 
			$attributes = ['class' => 'form-control', 'name' => 'zipcode', 'size' => 12]) !!}
		</div>

		<div class="form-group form-inline">
			{!! Form::label('main_phone', 'Phone (Main)', $attributes = ['class' => 'col-md-2 control-label']) !!}
			{!! Form::text('main_phone',
			$value=$org->main_phone,
			$attributes = ['class' => 'form-control', 'name' => 'main_phone', 'size' => 12]) !!}
		</div>

		<div class="form-group form-inline">
			{!! Form::label('alt_phone', 'Phone (Alternate)', $attributes = ['class' => 'col-md-2 control-label']) !!}
			{!! Form::text('alt_phone',
			$value=$org->alt_phone,
			$attributes = ['class' => 'form-control', 'name' => 'alt_phone', 'size' => 12]) !!}

		</div>

		{!! Form::submit('Save Changes', $attributes = ['class' => 'btn btn-primary btn-15rem']) !!} 
		<a class="btn btn-warning btn-15rem" href="/organizations/{{ $org->id }}">Cancel</a>

		{!! Form::close() !!}
	</div>
</div>
@stop

@section('script')
<script type="text/javascript">
	function process() {
	}
</script>
@stop
