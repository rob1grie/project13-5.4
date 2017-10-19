@extends('layouts.main')

@section('title', 'Add Project13')

@section('content')
<div class="panel panel-default">
    <div class="panel-heading">
        <h3 class="panel-title">Add Project13</h3>
    </div>
    <div class="panel-body">
        {!! Form::open(array('action' => 'Project13sController@store', 'enctype' => 'multipart/form-data')) !!}
        <div class="form-group">
            {!! Form::label('organization', 'Select Organization: ') !!}
            {{ Form::select('organization', $organizations) }}
			{!! Form::hidden('org_p13', 'FALSE') !!}

        </div>
        <div>
            <div id="test"></div>
			@include('layouts.p13-selects-table');
        </div>


        {!! Form::close() !!}
    </div>
</div>
@stop

@section('script')
<script src="/js/project13Create.js" type="text/javascript"></script>
<script type="text/javascript">	function process() {}</script>
@stop
