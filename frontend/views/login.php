<!doctype html>
<html lang="en" class="height-full">
<?php require_once 'partials/_head.php' ?>
<body class="height-full">
<div class="container-fluid height-full">
    <div class="row login-background-div">
        <div class="col-md-4 col-offset-4">
            <div class="login-div">
                <form action="<?= url('/login') ?>" method="POST" class="login-form" data-parsley-validate>
                    <div class="login-inventory text-center pt-4">INVENTORY</div>
                    <div class="login-login text-center pb-5">LOGIN</div>
                    <?php if ( isset($errors) && array_key_exists('credential', $errors) ) {
                        echo '
                            <div class="mb-3">
                                <ul class="parsley-errors-list parsley-error-alert filled text-center">
                                    <li class="parsley-required">' . $errors['credential'] . '</li>
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
                           class="login-input  <?= (isset($errors) && array_key_exists('username', $errors)) ? 'parsley-error' : '' ?>"
                           name="username"
                           placeholder="Username"
                           value="<?= $oldUsername ?? ''; ?>"
                           data-parsley-minlength="3"
                           data-parsley-required>
                    <?php if ( isset($errors) && array_key_exists('username', $errors) ) {
                        foreach ($errors['username'] as $key => $value) {
                            echo '
                                    <ul class="parsley-errors-list filled">
                                        <li class="parsley-required">' . $value . '</li>
                                    </ul>
                                    ';
                        }
                    } ?>
                    <div class="login-label mt-3">PASSWORD</div>
                    <input type="password"
                           class="login-input login-password <?= (isset($errors) && array_key_exists('password', $errors)) ? 'parsley-error' : '' ?>"
                           name="password"
                           placeholder="&#9679;&#9679;&#9679;&#9679;&#9679;&#9679;&#9679;&#9679;"
                           data-parsley-minlength="8"
                           data-parsley-required>
                    <?php if ( isset($errors) && array_key_exists('password', $errors) ) {
                        foreach ($errors['password'] as $key => $value) {
                            echo '
                            <ul class="parsley-errors-list filled">
                                <li class="parsley-required">' . $value . '</li>
                            </ul>
                            ';
                            }
                        } ?>
                    <div class="mt-2 text-right forget-password-link">
                        <a href="<?= url('/password-reset-request') ?>">Forgot your password?</a>
                    </div>
                    <button type="submit" class="login-submit-btn mb-4 mt-2">LOGIN</button>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>