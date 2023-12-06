<div class="alert alert-danger" role="alert">
	<strong>Info!</strong> Add row and Delete row are working. Edit row
	displays modal with row cells information.
</div>
<a class="btn btn-success" style="float: left; margin-right: 20px;"
	href="https://codepen.io/collection/XKgNLN/" target="_blank">Other
	examples on Codepen</a>
<table id="example" class="table table-striped table-bordered"
	cellspacing="0" width="100%">
	<thead>
		<tr>
			<th>Order</th>
			<th>Description</th>
			<th>Deadline</th>
			<th>Status</th>
			<th>Amount</th>
			<th style="text-align: center; width: 100px;">Add row
				<button type="button" data-func="dt-add"
					class="btn btn-success btn-xs dt-add">
					<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
				</button>
			</th>
		</tr>
	</thead>
	<tbody>

		<tr>
			<td>10</td>
			<td>Halloween invite</td>
			<td>2016/09/12</td>
			<td>Planned</td>
			<td>400</td>
			<td>
				<button type="button" class="btn btn-primary btn-xs dt-edit"
					style="margin-right: 16px;">
					<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
				</button>
				<button type="button" class="btn btn-danger btn-xs dt-delete">
					<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
				</button>
			</td>
		</tr>

		<tr>
			<td>30</td>
			<td>TV carton</td>
			<td>2019/02/08</td>
			<td>Offer</td>
			<td>1369</td>
			<td>
				<button type="button" class="btn btn-primary btn-xs dt-edit"
					style="margin-right: 16px;">
					<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
				</button>
				<button type="button" class="btn btn-danger btn-xs dt-delete">
					<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
				</button>
			</td>
		</tr>
	</tbody>
</table>

<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">Row information</h4>
			</div>
			<div class="modal-body"></div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			</div>
		</div>

	</div>
</div>