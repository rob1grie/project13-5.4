<?php

use App\Helpers\Custom; ?>

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
            <div class="col-md-9">{{ Custom::formatPhoneNumber($org->main_phone) }}&nbsp;</div>
            <div class="col-md-3 text-right">Phone (alternate):</div>
            <div class="col-md-9">{{ Custom::formatPhoneNumber($org->alt_phone) }}&nbsp;</div>
        </div>
    </div>
</div>
<div class="panel panel-default">
	<h4 class="pad-left-20">Project 13s</h4>
	<div class="panel-body">
		<div class="row">
			@foreach($project13s as $project13)
			P13-{{$project13->id}}<br>
			@endforeach
		</div>
	</div>
</div>
<div class="panel panel-default">
	<h4 class="pad-left-20">Members</h4>
	<div class="panel-body">
    <div class="row">
        <div class="col-md-12">
            <div class="box">
                <div class="box-header with-border">
                    <div class="row">
                        <div class="col-md-6">
                            <a href="" class="btn btn-primary" onclick="add_action()" data-toggle="modal" data-target="#form-modal"><i class="fa fa-plus"></i> Add Member</a>
                        </div>
                        <div class="col-md-6 text-right form-inline">
                            <div class="form-group">
                                <select class="form-control search-option"></select>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control search-input" placeholder="Search...">
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.box-header -->
                <div class="box-body table-responsive">
                    <table class="table table-bordered table-hover" id="datagrid"></table>
                </div>
                <!-- /.box-body -->
                <div class="box-footer clearfix">
                    <div class="row">
                        <div class="col-md-4 form-inline">
                            <div class="form-group">
                                <select class="form-control option"></select>
                            </div>
                        </div>
                        <div class="col-md-4 text-center info"></div>
                        <div class="col-md-4">
                            <ul class="pagination pagination-sm no-margin pull-right pagination-main"></ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="form-modal" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">New Member</h4>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal" id="form-action">
                        <input type="text" name="id" class="form-control hide">
                        <div class="form-group">
                            <label class="col-sm-3 control-label">First Name</label>
                            <div class="col-sm-8">
                                <input type="text" name="first_name" class="form-control">
                                <div class="validation-message" data-field="first_name"></div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">Last Name</label>
                            <div class="col-sm-8">
                                <input type="text" name="last_name" class="form-control">
                                <div class="validation-message" data-field="last_name"></div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">Username</label>
                            <div class="col-sm-8">
                                <input type="text" name="username" class="form-control">
                                <div class="validation-message" data-field="username"></div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">Email Address</label>
                            <div class="col-sm-8">
                                <input type="text" name="email" class="form-control">
                                <div class="validation-message" data-field="email"></div>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="save_action()" title="save">Save</button>
                </div>
            </div>
        </div>
    </div>
	</div>
</div>
@stop

@section('script')
<script src="{!! url('assets/plugins/jQuery/jquery-2.2.3.min.js'); !!}"></script>
<script src="{!! url('assets/bootstrap/js/bootstrap.min.js'); !!}"></script>
<script src="{!! url('assets/plugins/slimScroll/jquery.slimscroll.min.js'); !!}"></script>
<script src="{!! url('assets/dist/js/app.min.js'); !!}"></script>
<script src="{!! url('assets/plugins/datagrid/datagrid.js'); !!}"></script>
<script src="{!! url('assets/plugins/sweetalert/dist/sweetalert.min.js'); !!}"></script>
<script src="{!! url('assets/plugins/datepicker/bootstrap-datepicker.js'); !!}"></script>
<script type="text/javascript">
    var datagrid;
    $(document).ready(function() {
        datagrid = $("#datagrid").datagrid({
            url                     : '{!! url('member/data'); !!}', 
            primaryField            : 'id', 
            rowNumber               : true,
            searchInputElement      : '.search-input',
            searchFieldElement      : '.search-option',
            pagingElement           : '.pagination-main',
            optionPagingElement     : '.option',
            pageInfoElement         : '.info',
            columns                 : [
                {field: 'last_name', title: 'Last Name', editable: true, sortable: true, width: 180, align: 'left', search: true},
                {field: 'first_name', title: 'First Name', editable: true, sortable: true, width: 180, align: 'left', search: true},
                {field: 'username', title: 'Username', editable: false, sortable: true, width: 180, align: 'left', search: true},
                {field: 'email', title: 'Email', editable: true, sortable: true, width: 180, align: 'left', search: true},
                {field: 'menu', title: 'Menu', sortable: false, width: 200, align: 'center', search: false, 
                    rowStyler: function(rowData, rowIndex) {
                        return menu(rowData, rowIndex);
                    }
                }
            ]
        });

        datagrid.run();
    });

    function menu(rowData, rowIndex) {
        var menu = '<a class="table-link" data-toggle="modal" data-target="#form-modal" onclick="update_action(' + rowIndex + ')"><i class="fa fa-pencil"></i> Edit</a> ' +
        '<a class="table-link" onclick="delete_action(' + rowIndex + ')"><i class="fa fa-trash"></i> Delete</a>';
        return menu;
    }

    function add_action(rowIndex) {
        $('#form-action')[0].reset();
    }

    function update_action(rowIndex) {
        datagrid.formLoad('#form-action', rowIndex);
    }

    function save_action() {
        var formData = $('#form-action').serialize();
        $("button[title='save']").html("Saving data, please wait...");
        $.post("{!! url('album/action'); !!}", formData).done(function(data) {
            $("button[title='save']").html("Save");
            $('#form-modal').modal("hide");
            swal({   
                title: "Success",
                text: "Data successfully saved",
                type: "success"
            });
            datagrid.reload();
        });
    }

    function delete_action(rowIndex) {
        swal({   
            title: "Are you sure want to delete this member?",   
            text: "Deleted data can not be restored!",
            type: "warning",
            showCancelButton: true,
            confirmButtonColor: "#DD6B55",
            cancelButtonText: "Cancel",
            confirmButtonText: "Delete",
            closeOnConfirm: true ,
			animation: false
        }, function() {
            var row = datagrid.getRowData(rowIndex);
            $.post("{!! url('album/delete'); !!}", { id : row.id }).done(function(data) {
                swal({   
                    title: "Info",
                    text: "Data successfully deleted",
                    type: "info"
                });
                datagrid.reload();
            });
        });
    }
</script>
@stop