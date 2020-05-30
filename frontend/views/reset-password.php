<!doctype html>
<html lang="en" class="height-full">
<?php require_once 'partials/_head.php' ?>
<body class="height-full">
<div class="container-fluid height-full">
    <div class="row login-background-div">
        <div class="col-md-4 col-offset-4">
            <div class="login-div">
                <form action="<?= url('/password-reset') ?>" method="POST" class="login-form" data-parsley-validate>
                    <div class="login-inventory text-center pt-3 pb-3">INVENTORY</div>
                    <div class="password-reset-text text-center pb-2">PASSWORD RESET</div>
					<?php if ( isset($error) ) {
						echo '
                            <div class="mb-3">
                                <ul class="parsley-errors-list parsley-error-alert filled text-center">
                                    <li class="parsley-required">' . $error . '</li>
                                </ul>
                            </div>
                            ';
					} ?>
					<?php if ( isset($success) ) {
						echo '
                            <div class="mb-3">
                                <ul class="parsley-success-list parsley-success-alert filled text-center">
                                    <li class="parsley-required">' . $success . '</li>
                                </ul>
                            </div>
                            ';
					} ?>
                    <div class="login-label">USERNAME</div>
                    <input type="text"
                           class="login-input  <?= (isset($inputError) && array_key_exists('username', $inputError)) ? 'parsley-error' : '' ?>"
                           name="username"
                           placeholder="Username"
                           value="<?= $username ?? ''; ?>"
                           data-parsley-minlength="3"
                           data-parsley-required>
					<?php if ( isset($inputError) && array_key_exists('username', $inputError) ) {
						foreach ($inputError['username'] as $key => $value) {
							echo '
                                    <ul class="parsley-errors-list filled">
                                        <li class="parsley-required">' . $value . '</li>
                                    </ul>
                                    ';
						}
					} ?>
                    <div class="login-label mt-2">PASSWORD</div>
                    <input type="password"
                           class="login-input  <?= (isset($inputError) && array_key_exists('password', $inputError)) ? 'parsley-error' : '' ?>"
                           name="password"
                           id="password"
                           placeholder="&#9679;&#9679;&#9679;&#9679;&#9679;&#9679;&#9679;&#9679;"
                           data-parsley-minlength="8"
                           data-parsley-required>
					<?php if ( isset($inputError) && array_key_exists('password', $inputError) ) {
						foreach ($inputError['password'] as $key => $value) {
							echo '
                                    <ul class="parsley-errors-list filled">
                                        <li class="parsley-required">' . $value . '</li>
                                    </ul>
                                    ';
						}
					} ?>
                    
                    <div class="login-label mt-2">CONFIRM PASSWORD</div>
                    <input type="password"
                           class="login-input  <?= (isset($inputError) && array_key_exists('password_confirmation', $inputError)) ? 'parsley-error' : '' ?>"
                           name="password_confirmation"
                           placeholder="&#9679;&#9679;&#9679;&#9679;&#9679;&#9679;&#9679;&#9679;"
                           data-parsley-minlength="8"
                           data-parsley-equalto="#password"
                           data-parsley-required>
					<?php if ( isset($inputError) && array_key_exists('password_confirmation', $inputError) ) {
						foreach ($inputError['password_confirmation'] as $key => $value) {
							echo '
                                    <ul class="parsley-errors-list filled">
                                        <li class="parsley-required">' . $value . '</li>
                                    </ul>
                                    ';
						}
					} ?>
                    <button type="submit" class="login-submit-btn mb-4 mt-4">RESET PASSWORD</button>
                    <input type="hidden" name="token" value="<?= $token ?>">
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>