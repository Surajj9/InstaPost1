 README

This README would normally document whatever steps are necessary to get the
application up and running.

-Prerequisites
The setups steps expect following tools installed on the system.

-Github
-Ruby [3.0.0]
-Rails [7.0.0]

 1. Check out the repository
```bash
https://github.com/Surajj9/InstaPost1.git
```




- go to your terminal  to add all the required gems present in the gem file.
  ```bash
  gem bundle install
  ```

- then, to migrate all the tables to database.
  ```bash
  Rails db:migrate
  ```
  
 - Start the Rails server
  ```bash
  Rails s 
  ```
  
  And now you can visit the site with the URL http://localhost:3000

# note
- so now on the ui side register yourself and then login .
- post login in the home click on post listings to see all the posts
- only the logged in user has the ability to create  ,edit and delete his own posts ,he dont have access to edit or delete other User posts ,
  he can only see the posts




- testing
 ```bash
 rails test
 ```

* ...
