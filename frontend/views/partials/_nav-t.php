<div class="container-fluid">
	<div class="row">
		<div class="col-md-2 p-0" id="sidebar-div">
			<div class="">
				<div class="text-center pt-2">
                    <a class="remove-link-style" href="<?= url('/') ?>">INVENTORY</a>
                </div>
				<div id="hr-div" class="mt-2"></div>
                <div class="sidebar-color">
                    <div class="sidebar-color height-10"></div>
                </div>
				<ul class="m-0 p-0">
					<li class="<?php activeLink('dashboard'); ?>">
						<a class="width-full pt-2 pb-2 d-inline-block remove-link-style pl-4 " href="<?= url('/') ?>">Dashboard</a>
					</li>
                </ul>
                <ul class="m-0 p-0">
					<li class="<?php activeLink('product'); ?>">
						<a class="width-full pt-2 pb-2 d-inline-block remove-link-style pl-4" href="<?= url('/product') ?>">Product</a>
					</li>
                </ul>
                <ul class="m-0 p-0">
					<li class="<?php activeLink('receiving'); ?>">
						<a class="width-full pt-2 pb-2 d-inline-block remove-link-style pl-4" href="<?= url('/receiving') ?>">Receiving</a>
					</li>
                </ul>
                <ul class="m-0 p-0">
					<li class="<?php activeLink('transmit'); ?>">
						<a class="width-full pt-2 pb-2 d-inline-block remove-link-style pl-4" href="<?= url('/transmit') ?>">Transmit</a>
					</li>
                </ul>
                <ul class="m-0 p-0">
					<li class="<?php activeLink('sell'); ?>">
						<a class="width-full pt-2 pb-2 d-inline-block remove-link-style pl-4" href="<?= url('/sell') ?>">Sell</a>
					</li>
                </ul>
                <ul class="m-0 p-0">
					<li class="<?php activeLink('report'); ?>">
						<a class="width-full pt-2 pb-2 d-inline-block remove-link-style pl-4" href="<?= url('/report') ?>">Report</a>
					</li>
                </ul>
                <ul class="m-0 p-0">
					<li class="<?php activeLink('expense'); ?>">
						<a class="width-full pt-2 pb-2 d-inline-block remove-link-style pl-4" href="<?= url('/expense') ?>">Expense</a>
					</li>
                </ul>
                <ul class="m-0 p-0">
					<li class="<?php activeLink('capital'); ?>">
						<a class="width-full pt-2 pb-2 d-inline-block remove-link-style pl-4" href="<?= url('/capital') ?>">Capital</a>
					</li>
				</ul>
                <ul class="m-0 p-0">
					<li class="<?php activeLink('customer'); ?>">
						<a class="width-full pt-2 pb-2 d-inline-block remove-link-style pl-4" href="<?= url('/customer') ?>">Customer</a>
					</li>
				</ul>
                <ul class="m-0 p-0">
					<li class="<?php activeLink('supplier'); ?>">
						<a class="width-full pt-2 pb-2 d-inline-block remove-link-style pl-4" href="<?= url('/supplier') ?>">Supplier</a>
					</li>
				</ul>
                <div class="sidebar-color">
                    <div class="sidebar-color height-10"></div>
                </div>
			</div>
			<div id="bottom-sidebar-div">
				<div class="row p-0 m-0">
					<div class="col-12 text-center p-0 mb-1 mt-1" id="logout-div">
						<form action="<?= url('/logout') ?>" method="post" onclick="this.submit()">
							LOGOUT
						</form>
					</div>
					<div class="col-12 text-center p-0 pt-2 pb-1 mt-1" id="username-div">
                        <?= user()['name'] ?>
                    </div>
				</div>
			</div>
		</div>
		<div class="col-md-10">