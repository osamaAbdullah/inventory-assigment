<?php require_once 'partials/_header.php' ?>
<div class="login-background-div">
    <div class="login-div">
        <form action="<?= url('/login') ?>" method="POST" data-parsley-validate>
            <div class="login-inventory">INVENTORY</div>
            <div class="login-login">LOGIN</div>
	        <?php if (isset($errors) && array_key_exists('credential', $errors)) {
                echo '
                    <div class="login-input-group mb-4">
                        <ul class="parsley-errors-list filled">
                            <li class="parsley-required">'. $errors['credential'] .'</li>
                        </ul>
                    </div>
                    ';
	        } ?>
            <div class="login-input-group">
                <div class="login-label">USERNAME</div>
                <input type="text"
                       class="login-input  <?= (isset($errors) && array_key_exists('username', $errors)) ? 'parsley-error' : '' ?>"
                       name="username"
                       placeholder="Username"
                       value="<?= $oldUsername ?? '' ; ?>"
                       data-parsley-minlength="3"
                       data-parsley-required>
                <?php if (isset($errors) && array_key_exists('username', $errors)) {
                    foreach ($errors['username'] as $key => $value) {
                        echo '
                        <ul class="parsley-errors-list filled">
                            <li class="parsley-required">'. $value .'</li>
                        </ul>
                        ';
                    }
	             } ?>
            </div>
            <div class="login-input-group">
                <div class="login-label">PASSWORD</div>
                <input type="password"
                       class="login-input login-password <?= (isset($errors) && array_key_exists('password', $errors)) ? 'parsley-error' : '' ?>"
                       name="password"
                       placeholder="&#9679;&#9679;&#9679;&#9679;&#9679;&#9679;&#9679;&#9679;"
                       data-parsley-minlength="8"
                       data-parsley-required>
	            <?php if (isset($errors) && array_key_exists('password', $errors)) {
		            foreach ($errors['password'] as $key => $value) {
			            echo '
                        <ul class="parsley-errors-list filled">
                            <li class="parsley-required">'. $value .'</li>
                        </ul>
                        ';
		            }
	            } ?>
            </div>
            <div class="login-input-group">
                <button type="submit" class="login-submit-btn">LOGIN</button>
            </div>
        
          
        </form>

    </div>
</div>
<?php require_once 'partials/_footer.php' ?>