# README


Specifications:

* Ruby version 2.2.6
* Rails version 5.1.4
* Data base Postgresql


This is a project on Rails framework, replicating 'dnsimple.com' site which is used for registering and managing domains. I am using Ruby version 2.2.6 and Rails version 5.1.4. 
When you create a new rails project, the default database being set up along with it is SQLite3.But I set up Postgresql as the data base for this project
steps to setup Postgresql as the database:
1. Download and install Postgresql in your machine, you can use the link https://www.postgresql.org/download/
2.To create a Rails app configured for Postgres, run this command:

rails new myapp --database=postgresql

This creates a directory called "myapp" which houses an app called "myapp" (you can name it anything you like when running the command). Rails expects the name of the database user to match the name of the application, but you can easily change that if need be.

3.We will now configure which database Rails will talk to. This is done using the database.yml file, located at:

RAILS_ROOT/config/database.yml

The database.yml file is used by Rails to connect to the appropriate database for the current Rails environment. It uses YAML, a data serialization standard. There are a few databases listed here for different environments; development, test, and production. By default Rails will expect a different database for each environment. This is handy because, for example, the test database is emptied and rebuilt every time you run Rails tests. For each database, ensure that the username and password match the username and password you gave your Postgres user.

Once configured, your database.yml should contain something like this:

development:
  adapter: postgresql
  encoding: unicode
  database: myapp_development
  pool: 5
  username: myapp
  password: password1

test:
  adapter: postgresql
  encoding: unicode
  database: myapp_test
  pool: 5
  username: myapp
  password: password1


4.You can then run:

rake db:setup

This will create development and test databases, set their owners to the user specified, and create "schema_migrations" tables in each. This table is used to record your migrations to schemas and data.

RAILS COMMANDS
_______________
1. generating a new Model
  rails generate model NAME [field[:type][:index] field[:type][:index]] [options]
 
2. Generate a new Controller
  rails generate controller NAME [action action] [options]
  
3.instead of generating a model directly, let's set up a scaffold. A scaffold in Rails is a full set of model, database migration for that model, controller to manipulate it, views to view and manipulate the data, and a test suite for each of the above.
 
rails generate scaffold NAME  [field[:type]

4. rake db:migrate => runs (single) migrations that have not run yet.
5. rake db:create =>creates the database
6. rake db:drop => deletes the database
7. rake db:schema:load => creates tables and columns within the (existing) database following schema.rb
8. rake db:setup => does db:create, db:schema:load, db:seed
9. rake db:reset => does db:drop, db:setup
10. rails s or rails server =>The rails server command launches a small web server named WEBrick which comes bundle

11.  rails c or rails console => The console command lets you interact with your Rails application from the command line. On the underside, rails console uses IRB, so if you've ever used it, you'll be right at home. This is useful for testing out quick ideas with code and changing data server-side without touching the website.

You can get more details about Rails commands from this site http://guides.rubyonrails.org/command_line.html





