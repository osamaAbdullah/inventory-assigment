<?php require_once 'partials/_header.php' ?>
<div class="row nav-div">
	<div class="col-md-1 pt-2 text-bold text-center">
		Expense
	</div>
	<div class="col-md-7"></div>
	<div class="col-md-4">
        <input type="text" placeholder="search..." class="search-input pl-2 pr-2">
		<button class="btn btn-sm add-button ml-2" data-toggle="modal" data-target="#addExpense" data-whatever="@getbootstrap">ADD</button>
	</div>
</div>
<?php require_once 'partials/_alerts.php' ?>
<div class="modal fade" id="addExpense" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="ModalLabel">New Expense</h5>
			</div>
			<div class="modal-body">
				
				<?php if ( isset($errors) && array_key_exists('error', $errors) ) {
					echo '
                            <div class="mb-3">
                                <ul class="parsley-errors-list parsley-error-alert filled text-center">
                                    <li class="parsley-required">' . $errors['error'] . '</li>
                                </ul>
                            </div>
                            ';
				} ?>
				
				<form id="expense-form" action="<?= url('/expense/save') ?>" method="POST" data-parsley-validate>
					<input type="hidden" name="_token" value="<?= $token ?>">
					<div class="form-group-sm">
						<?php $title_err = isset($errors) && array_key_exists('title', $errors); ?>
						<label for="title" class="col-form-label">Title:</label>
						<input type="text"
						       class="form-control <?= ($title_err) ? 'parsley-error' : '' ?>"
						       id="title"
						       name="title"
						       data-parsley-required
						       data-parsley-minlength="3"
						       data-parsley-maxlength="254">
						<?php if ( $title_err ) {
							foreach ($errors['title'] as $key => $value) {
								echo '
                            <ul class="parsley-errors-list filled">
                                <li class="parsley-required">' . $value . '</li>
                            </ul>
                            ';
							}
						} ?>
					</div>
					<div class="form-group-sm">
						<?php $type_err = isset($errors) && array_key_exists('type', $errors); ?>
						<label for="type" class="col-form-label">Type:</label>
						<select type="text"
						        class="form-control <?= ($type_err) ? 'parsley-error' : '' ?>"
						        id="type"
						        data-parsley-required
						        name="type">
							<option value="" selected disabled hidden>Chose Expense Type</option>
							<option value="cost-of-goods-sold">cost-of-goods-sold</option>
							<option value="administration-expenses">administration-expenses</option>
							<option value="selling-expenses">selling-expenses</option>
						</select>
						<?php if ( $type_err ) {
							foreach ($errors['type'] as $key => $value) {
								echo '
                            <ul class="parsley-errors-list filled">
                                <li class="parsley-required">' . $value . '</li>
                            </ul>
                            ';
							}
						} ?>
					</div>
					<div class="form-group-sm">
						<?php $amount_err = isset($errors) && array_key_exists('amount', $errors); ?>
						<label for="amount" class="col-form-label">Amount:</label>
						<input type="text"
						       class="form-control <?= ($amount_err) ? 'parsley-error' : '' ?>"
						       data-parsley-required
						       data-parsley-min="0"
						       data-parsley-type="number"
						       id="amount"
						       name="amount">
						<?php if ( $amount_err ) {
							foreach ($errors['amount'] as $key => $value) {
								echo '
                            <ul class="parsley-errors-list filled">
                                <li class="parsley-required">' . $value . '</li>
                            </ul>
                            ';
							}
						} ?>
					</div>
					<div class="form-group-sm">
						<?php $note_err = isset($errors) && array_key_exists('note', $errors); ?>
						<label for="note" class="col-form-label">Note:</label>
						<input type="text"
						       class="form-control <?= ($note_err) ? 'parsley-error' : '' ?>"
						       data-parsley-maxlength="254"
						       id="note"
						       name="note">
						<?php if ( $note_err ) {
							foreach ($errors['note'] as $key => $value) {
								echo '
                            <ul class="parsley-errors-list filled">
                                <li class="parsley-required">' . $value . '</li>
                            </ul>
                            ';
							}
						} ?>
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary btn-sm" data-dismiss="modal">CLOSE</button>
				<button type="button" class="btn btn-primary btn-sm" onclick="$('#expense-form').submit()">SUBMIT</button>
			</div>
		</div>
	</div>
</div>

<div class="row">
	<div class="col-12 p-5">
		<table id="expenses-table" class="table table-striped table-bordered" style="width:100%">
			<thead>
			<tr>
				<th>id</th>
				<th>title</th>
				<th>type</th>
				<th>amount</th>
				<th>created_at</th>
				<th></th>
			</tr>
			</thead>
			<tfoot>
			<tr>
				<th>id</th>
				<th>title</th>
				<th>type</th>
				<th>amount</th>
				<th>created_at</th>
				<th></th>
			</tr>
			</tfoot>
		</table>
	</div>
</div>
<script>
    $(document).ready( function () {
	
	    <?php
	    if (isset($modal) && $modal === 'creation-modal') {
		    echo "$('#addExpense').modal('show');";
	    }
	    ?>
        
        let expenseTable = $('#expenses-table');
        let table;
        function initializeDataTable() {
            table = expenseTable.DataTable({
                processing: true,
                serverSide: true,
                serverMethod: 'GET',
                ajax: {
                    url: '<?= url('/expense/get') ?>'
                },
                columns: [
                    { data: 'id' },
                    { data: 'title' },
                    { data: 'type' },
                    { data: 'amount' },
                    { data: 'created_at' },
                    { data: 'action' },
                ],
                columnDefs: [{
                    targets  : 5,
                    orderable: false,
                }],
            });
        }
        initializeDataTable();
        
        $(document).on('click', '.delete-row', function () {
            if (confirm('Are you sure you want to delete this row?')) {
                let id = this.id;
                $.ajax({
                    data: {
                        id,
                        _token: '<?= $token ?>'
                    },
                    method: 'POST',
                    url: "<?= url('/expense/delete') ?>",
                    success: function () {
                        table.ajax.reload();
                    },
                    error: function (response) {
                        alert(response.responseText)
                    },
                });
            }
        });
        
        $(document).on('click', '.update-row', function () {
            let id = this.id;
            $.ajax({
                data: {
                    id,
                    _token: '<?= $token ?>'
                },
                method: 'POST',
                url: "<?= url('/expense/get-row') ?>",
                success: function (response) {
                    let expense = JSON.parse(response).expense
                    $('#ModalLabel').text('Update Expense')
                    $('#title').val(expense.title)
                    $('#type').val(expense.type)
                    $('#amount').val(expense.amount)
                    $('#note').val(expense.note)
                    $('#expense-form').attr('action', "<?= url('/expense/update') ?>")
                        .append(`<input type="hidden" name="id" value="${id}">`)
                    $('#addExpense').modal('show')
                },
                error: function (response) {
                    alert(response.responseText)
                },
            });
        })
        
    } );
</script>

<?php require_once 'partials/_footer.php' ?>



