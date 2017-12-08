@extends('layouts.main')

@section('title', 'Add Organization')

@section('content')
<div class="panel panel-default">
	<div class="panel-heading">
		<h3 class="panel-title">Add Organization</h3>
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
		{!! Form::open(array('action' => 'OrganizationsController@store', 'enctype' => 'multipart/form-data')) !!}
		<div class="form-group">
			{!! Form::label('name', 'Name') !!}
			{!! Form::text('name', $value=null, $attributes = ['class' => 'form-control', 'name' => 'name']) !!}
		</div>

		<div class="form-group">
			{!! Form::label('address1', 'Address') !!}
			{!! Form::text('address1', $value=null, $attributes = ['class' => 'form-control', 'name' => 'address1']) !!}
		</div>

		<div class="form-group">
			{!! Form::label('address2', '') !!}
			{!! Form::text('address2', $value=null, $attributes = ['class' => 'form-control', 'name' => 'address2']) !!}
		</div>

		<div class="form-group form-inline">
			{!! Form::label('city', 'City') !!}
			{!! Form::text('city', 
			$value=null, 
			$attributes = ['class' => 'form-control', 'name' => 'city', 'size' => 30]) !!}

			{!! Form::label('state', 'State') !!}
			{{ Form::select('state', $states, 'TX') }}

			{!! Form::label('zipcode', 'Zip Code') !!}
			{!! Form::text('zipcode', 
			$value=null, 
			$attributes = ['class' => 'form-control', 'name' => 'zipcode', 'size' => 12]) !!}
        </div>

        <div class="form-group">
			{!! Form::label('main_phone', 'Phone (Main)') !!}
			{!! Form::text('main_phone',
			$value=null,
			$attributes = ['class' => 'form-control', 'name' => 'main_phone', 'size' => 12]) !!}

			{!! Form::label('alt_phone', 'Phone (Alternate)') !!}
			{!! Form::text('alt_phone',
			$value=null,
			$attributes = ['class' => 'form-control', 'name' => 'alt_phone', 'size' => 12]) !!}
		</div>

		{!! Form::submit('Save', $attributes = ['class' => 'btn btn-primary btn-10rem']) !!}
		<a class="btn btn-warning btn-10rem" href="/organizations/">Cancel</a>

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
