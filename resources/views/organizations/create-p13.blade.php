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
			<h3>for {{ $organization->name }} </h3>
			{!! Form::hidden('organization', $organization->id) !!}
			{!! Form::hidden('org_p13', TRUE) !!}
		</div>
		<div id="testcontent" />
		<div>
			@include('layouts.p13-selects-table');
		</div>

		{!! Form::close() !!}
	</div>
</div>
@stop

@section('script')
<script type="text/javascript" src="/js/ajaxJS.js"></script>
<script type="text/javascript" src="/js/json2.js"></script>
<script src="/js/project13Create.js" type="text/javascript"></script>

<script type="text/javascript">
	window.onload = loadControls;

	function loadControls() {
		var id = <?php echo $organization->id; ?>;
		initSelectControls(id, true);
	}
	
	function process() {
	}
</script>
@stop

