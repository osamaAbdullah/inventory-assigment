<?php require_once 'partials/_header.php' ?>
<?php $title = 'Product'; require_once 'partials/_navigation.php' ?>
<div class="row">
	<div class="col-12 p-5">
		<table id="products-table" class="table table-striped table-bordered" style="width:100%">
			<thead>
				<tr>
					<th>id</th>
					<th>name</th>
					<th>color</th>
					<th>code</th>
					<th>manufacture</th>
					<th>classification</th>
				</tr>
			</thead>
			<tfoot>
				<tr>
					<th>id</th>
					<th>name</th>
					<th>color</th>
					<th>code</th>
					<th>manufacture</th>
					<th>classification</th>
				</tr>
			</tfoot>
		</table>
	</div>
</div>
<script>
    $(document).ready( function () {

        $('#products-table').DataTable({
            'processing': true,
            'serverSide': true,
            'serverMethod': 'GET',
            'ajax': {
                'url': '<?= url('/product/get') ?>'
            },
            columns: [
                { data: 'id' },
                { data: 'name' },
                { data: 'color' },
                { data: 'code' },
                { data: 'manufacture' },
                { data: 'classification' },
            ]
        });

    } );
</script>
<?php require_once 'partials/_footer.php' ?>