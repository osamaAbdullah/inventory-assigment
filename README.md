# inventory-assignment

## requirement to run the application
- PHP v7.2
- composer
- MySQL 


## Features
- Contain three levels of privileges (admin, developer, normal)
- The normal user also have their roles
- Resting password.
- Active/Deactive users
- protection against SQL injections
- csrf protection
- Mobile API
- and more

each point will be discussed in more detail.

## Installation

Execute this command in the root directory of the project

```bash
$ composer install
```
#### then create a database and import /DB/all.sql file to the database that you created
#### then check configurations in /config/*
#### important note: you must set the root URL to something like example.demo 
#### the (/) are not allowed in root URL kile: example.demo/projects/ this will not work be aware of that
#### if you have done above steps successfully you can import the postman collection and run it,

# Contain three level of privileges

## Usage

in your controllers, you can specify which type of user has the access to run any method by calling

```php
$this->type(['admin', 'developer', 'normal']);
```

the mentioned user types will be able to access the method

if the user type is __normal__ you can specify where user can or can't access by

```php
$this->normalUserRole('can-see-expenses');
```

if the value of the mentioned permission in __normal__ user roles are true he/she will have access

# Resting password

#### resetting the password is fully implemented, when you request a password reset a link will be generated in the log file in /logs/inventory.log you can paste the URL in the browser and reset your password

# Deactivate user 

#### If the user has been deactivated he can not have access to the system at all



# mobile API

#### everything is explained in postman file further details are in request's description
