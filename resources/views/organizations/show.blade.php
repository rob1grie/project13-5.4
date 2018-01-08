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
    <div class="panel-body">
        <div class="row">
        </div>
    </div>
</div>
<div class="panel panel-default">
    <h4 class="pad-left-20">Members</h4>
    <div class="panel-body">
        <div class="row">
            <table id="dg" class="easyui-datagrid" style="width:100%;"
                   url="get_users.php"
                   fitColumns="true" singleSelect="true">
                <thead>
                    <tr>
                        <th field="lastname" width="50">Last Name</th>
                        <th field="firstname" width="50">First Name</th>
                        <th field="phone" width="50">Phone</th>
                        <th field="email" width="50">Email</th>
                    </tr>
                </thead>
            </table>
            <div id="toolbar">
                <a href="javascript:void(0)" class="btn btn-default" iconCls="icon-add" plain="true" onclick="newUser()">New User</a>
                <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="editUser()">Edit User</a>
                <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="destroyUser()">Remove User</a>
            </div>

            <div id="dlg" class="easyui-dialog" style="width:400px;height:280px;padding:10px 20px"
                 closed="true" buttons="#dlg-buttons">
                <div class="ftitle">Member Information</div>
                <form id="fm" method="post" novalidate>
                    <div class="fitem">
                        <label>Last Name:</label>
                        <input name="lastname" class="easyui-textbox" required="true">
                    </div>
                    <div class="fitem">
                        <label>First Name:</label>
                        <input name="firstname" class="easyui-textbox" required="true">
                    </div>
                    <div class="fitem">
                        <label>Phone:</label>
                        <input name="phone" class="easyui-textbox">
                    </div>
                    <div class="fitem">
                        <label>Email:</label>
                        <input name="email" class="easyui-textbox" validType="email">
                    </div>
                </form>
            </div>
            <div id="dlg-buttons">
                <a href="javascript:void(0)" class="easyui-linkbutton c6" iconCls="icon-ok" onclick="saveUser()" style="width:90px">Save</a>
                <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#dlg').dialog('close')" style="width:90px">Cancel</a>
            </div>
        </div>
    </div>
</div>
@stop

@section('script')
<script type="text/javascript">
	var url;
	function newUser() {
		$('#dlg').dialog('open').dialog('setTitle', 'New User');
		$('#fm').form('clear');
		url = 'save_user.php';
	}
	function editUser() {
		var row = $('#dg').datagrid('getSelected');
		if (row) {
			$('#dlg').dialog('open').dialog('setTitle', 'Edit User');
			$('#fm').form('load', row);
			url = 'update_user.php?id=' + row.id;
		}
	}
	function saveUser() {
		$('#fm').form('submit', {
			url: url,
			onSubmit: function () {
				return $(this).form('validate');
			},
			success: function (result) {
				var result = eval('(' + result + ')');
				if (result.errorMsg) {
					$.messager.show({
						title: 'Error',
						msg: result.errorMsg
					});
				} else {
					$('#dlg').dialog('close');		// close the dialog
					$('#dg').datagrid('reload');	// reload the user data
				}
			}
		});
	}
	function destroyUser() {
		var row = $('#dg').datagrid('getSelected');
		if (row) {
			$.messager.confirm('Confirm', 'Are you sure you want to destroy this user?', function (r) {
				if (r) {
					$.post('destroy_user.php', {id: row.id}, function (result) {
						if (result.success) {
							$('#dg').datagrid('reload');	// reload the user data
						} else {
							$.messager.show({// show error message
								title: 'Error',
								msg: result.errorMsg
							});
						}
					}, 'json');
				}
			});
		}
	}
</script>
<style type="text/css">
	#fm{
		margin:0;
		padding:10px 30px;
	}
	.ftitle{
		font-size:14px;
		font-weight:bold;
		padding:5px 0;
		margin-bottom:10px;
		border-bottom:1px solid #ccc;
	}
	.fitem{
		margin-bottom:5px;
	}
	.fitem label{
		display:inline-block;
		width:80px;
	}
	.fitem input{
		width:160px;
	}
</style>
@stop