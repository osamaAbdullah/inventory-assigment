<?php require_once 'partials/_header.php' ?>
<?php $title = 'Supplier'; require_once 'partials/_navigation.php' ?>
	<div class="row">
		<div class="col-12 p-5">
			<table id="suppliers-table" class="table table-striped table-bordered" style="width:100%">
				<thead>
				<tr>
					<th>id</th>
					<th>name</th>
					<th>email</th>
					<th>phone_number</th>
					<th>address</th>
				</tr>
				</thead>
				<tfoot>
				<tr>
					<th>id</th>
					<th>name</th>
					<th>email</th>
					<th>phone_number</th>
					<th>address</th>
				</tr>
				</tfoot>
			</table>
		</div>
	</div>
	<script>
        $(document).ready( function () {

            $('#suppliers-table').DataTable({
                'processing': true,
                'serverSide': true,
                'serverMethod': 'GET',
                'ajax': {
                    'url': '<?= url('/supplier/get') ?>'
                },
                columns: [
                    { data: 'id' },
                    { data: 'name' },
                    { data: 'email' },
                    { data: 'phone_number' },
                    { data: 'address' },
                ]
            });

        } );
	</script>
<?php require_once 'partials/_footer.php' ?>