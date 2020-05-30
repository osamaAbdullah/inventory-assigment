<?php require_once 'partials/_header.php' ?>
<div class="row nav-div">
	<div class="col-md-1 pt-2 text-bold text-center">
		Expense
	</div>
	<div class="col-md-7"></div>
	<div class="col-md-3 text-right">
		<input type="text" placeholder="search..." class="search-input pl-2 pr-2">
	</div>
	<div class="col-md-1 pl-0">
		<button class="btn btn-sm add-button" data-toggle="modal" data-target="#addExpense" data-whatever="@getbootstrap">ADD</button>
	</div>
</div>
<?php require_once 'partials/_alerts.php' ?>

<div class="modal fade" id="addExpense" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">New Expense</h5>
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
					<div class="form-group">
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
					<div class="form-group">
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
					<div class="form-group">
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
					<div class="form-group">
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
				<button type="button" class="btn btn-secondary" data-dismiss="modal">CLOSE</button>
				<button type="button" class="btn btn-primary" onclick="$('#expense-form').submit()">SAVE</button>
			</div>
		</div>
	</div>
</div>
<script>
	$(document).ready(function () {
	    <?php
		if (isset($modal) && $modal === 'creation-modal') {
			echo "$('#addExpense').modal('show');";
		}
		?>
		
    })
</script>
<?php require_once 'partials/_footer.php' ?>



