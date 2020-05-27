<div class="container-fluid">
	<div class="row">
		<div class="col-md-2 p-0" id="sidebar-div">
			<div>
				<div class="text-center pt-2"><a class="remove-link-style" href="<?= url('/') ?>">INVENTORY</a></div>
				<div id="hr-div" class="mt-2 mb-3"></div>
				<ul class="m-0 p-0">
					<li class="pt-2 pb-2<?php activeLink('dashboard'); ?>">
						<a class="remove-link-style pl-4 " href="<?= url('/') ?>">Dashboard</a>
					</li>
					<li class="pt-2 pb-2<?php activeLink('product'); ?>">
						<a class="remove-link-style pl-4" href="<?= url('/product') ?>">Product</a>
					</li>
					<li class="pt-2 pb-2<?php activeLink('receiving'); ?>">
						<a class="remove-link-style pl-4" href="<?= url('/receiving') ?>">Receiving</a>
					</li>
					<li class="pt-2 pb-2<?php activeLink('transmit'); ?>">
						<a class="remove-link-style pl-4" href="<?= url('/transmit') ?>">Transmit</a>
					</li>
					<li class="pt-2 pb-2<?php activeLink('sell'); ?>">
						<a class="remove-link-style pl-4" href="<?= url('/sell') ?>">Sell</a>
					</li>
					<li class="pt-2 pb-2<?php activeLink('report'); ?>">
						<a class="remove-link-style pl-4" href="<?= url('/report') ?>">Report</a>
					</li>
					<li class="pt-2 pb-2<?php activeLink('expense'); ?>">
						<a class="remove-link-style pl-4" href="<?= url('/expense') ?>">Expense</a>
					</li>
					<li class="pt-2 pb-2<?php activeLink('capital'); ?>">
						<a class="remove-link-style pl-4" href="<?= url('/capital') ?>">Capital</a>
					</li>
				</ul>
			</div>
			<div id="bottom-sidebar-div">
				<div class="row p-0 m-0">
					<div class="col-12 text-center p-0 mb-1 mt-1" id="logout-div">
						<form action="<?= url('/logout') ?>" method="post" onclick="this.submit()">
							LOGOUT
						</form>
					</div>
					<div class="col-12 text-center p-0 pt-2 mb-1 mt-1" id="username-div">USERNAME</div>
				</div>
			</div>
		</div>
		<div class="col-md-10">