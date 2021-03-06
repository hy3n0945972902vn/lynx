<!-- BEGIN: main -->
<div class="well">
    <form action="{NV_BASE_SITEURL}index.php" method="get">
        <input type="hidden" name="{NV_LANG_VARIABLE}" value="{NV_LANG_DATA}" /> <input type="hidden" name="{NV_NAME_VARIABLE}" value="{MODULE_NAME}" /> <input type="hidden" name="{NV_OP_VARIABLE}" value="{OP}" />
        <div class="row">
            <div class="col-xs-24 col-md-6">
                <div class="form-group">
                    <input class="form-control" type="text" value="{Q}" name="q" maxlength="255" placeholder="{LANG.search_title}" />
                </div>
            </div>
            <div class="col-xs-12 col-md-3">
                <div class="form-group">
                    <input class="btn btn-primary" type="submit" value="{LANG.search_submit}" />
                </div>
            </div>
        </div>
    </form>
</div>
<form class="form-inline m-bottom">
    <select class="form-control" id="action-top">
        <!-- BEGIN: action_top -->
        <option value="{ACTION.key}">{ACTION.value}</option>
        <!-- END: action_top -->
    </select>
    <button class="btn btn-primary" onclick="nv_list_action( $('#action-top').val(), '{BASE_URL}', '{LANG.error_empty_data}' ); return false;">{LANG.perform}</button>
    <a class="btn btn-primary" href="{ADD_URL}">{LANG.project_add}</a>
</form>
<form action="{NV_BASE_SITEURL}index.php?{NV_LANG_VARIABLE}={NV_LANG_DATA}&amp;{NV_NAME_VARIABLE}={MODULE_NAME}&amp;{NV_OP_VARIABLE}={OP}" method="post">
    <div class="table-responsive">
        <table class="table table-striped table-bordered table-hover">
            <thead>
                <tr>
                    <th class="text-center" width="50"><input name="check_all[]" type="checkbox" value="yes" onclick="nv_checkAll(this.form, 'idcheck[]', 'check_all[]',this.checked);"></th>
                    <th>{LANG.title}</th>
                    <th>{LANG.workforceid}</th>
                    <th width="200">{LANG.customerid}</th>
                    <th width="150">{LANG.begintime}</th>
                    <th width="150">{LANG.endtime}</th>
                    <th width="190">{LANG.realtime}</th>
                    <th width="150">{LANG.status}</th>
                    <th width="70">&nbsp;</th>
                </tr>
            </thead>
            <!-- BEGIN: generate_page -->
            <tfoot>
                <tr>
                    <td class="text-center" colspan="9">{NV_GENERATE_PAGE}</td>
                </tr>
            </tfoot>
            <!-- END: generate_page -->
            <tbody>
                <!-- BEGIN: loop -->
                <tr onclick="nv_table_row_click(event, '{VIEW.link_view}', false);" class="pointer">
                    <td class="text-center"><input type="checkbox" onclick="nv_UncheckAll(this.form, 'idcheck[]', 'check_all[]', this.checked);" value="{VIEW.id}" name="idcheck[]" class="post"></td>
                    <td>{VIEW.title}</td>
                    <td>{VIEW.performer_str}</td>
                    <td><a href="{VIEW.customer.link}">{VIEW.customer.fullname}</a></td>
                    <td>{VIEW.begintime}</td>
                    <td>{VIEW.endtime}</td>
                    <td>{VIEW.realtime}</td>
                    <td>{VIEW.status}</td>
                    <td class="text-center form-tooltip"><a href="{VIEW.link_edit}" class="btn btn-default btn-xs" data-toggle="tooltip" data-original-title="{LANG.edit}"><i class="fa fa-edit"></i></a> <a href="{VIEW.link_delete}" onclick="return confirm(nv_is_del_confirm[0]);" class="btn btn-default btn-xs" data-toggle="tooltip" data-original-title="{LANG.delete}"><em class="fa fa-trash-o"></em></a></td>
                </tr>
                <!-- END: loop -->
            </tbody>
        </table>
    </div>
</form>
<form class="form-inline m-bottom">
    <select class="form-control" id="action-bottom">
        <!-- BEGIN: action_bottom -->
        <option value="{ACTION.key}">{ACTION.value}</option>
        <!-- END: action_bottom -->
    </select>
    <button class="btn btn-primary" onclick="nv_list_action( $('#action-bottom').val(), '{BASE_URL}', '{LANG.error_empty_data}' ); return false;">{LANG.perform}</button>
</form>
<!-- END: main -->