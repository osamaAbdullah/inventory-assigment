<?php

return [
	
	// the root url of the application like 'http://inventory-assignment.demo'
	'root-url' => 'http://inventory-assignment.demo',
	
	'debugging' => true,
	
	'mail' => [
		'MAIL_DRIVER' => 'smtp',
		'MAIL_HOST' => 'smtp.mailtrap.io',
		'MAIL_PORT' => '2525',
		'MAIL_USERNAME' => '75f659ee1eacba',
		'MAIL_PASSWORD' => '47c54354e9d527',
		'MAIL_ENCRYPTION' => 'tls',
	],
	
	// measured with minutes minutes
	'password_reset_token_expiration' => 30,
	
	
	
];