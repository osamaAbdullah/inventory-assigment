<div class="container">
	<?php
	if (isset($alerts)) {
		foreach ($alerts as $alert) {
			if ($alert['type'] === 'success') {
				echo '<div class="alert alert-success alert-dismissible fade show mt-1" role="alert">
                          <strong>Congratulations! </strong> ' . $alert['message'] . '
                          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                              <span aria-hidden="true">&times;</span>
                          </button>
                          </div>';
			} else if ($alert['type'] === 'error') {
				echo '<div class="alert alert-danger alert-dismissible fade show mt-1" role="alert">
                          <strong>Whoops! </strong> ' . $alert['message'] . '
                          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                              <span aria-hidden="true">&times;</span>
                          </button>
                          </div>';
			}
		}
	}
	?>
</div>