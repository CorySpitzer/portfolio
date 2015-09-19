## A personal Portfolio App
### By Cory Spitzer

[MIT License](http://opensource.org/licenses/MIT)

*tested and built with: Rails 4.2.3 and Ruby 2.2.0*

###### \*Under Construction\* but see a version of it up at [Heroku](http://www.coryspitzer.com/)

TODO:
 * Fix the 'the add reference form adds a reference' spec, which fails because
   it wants AJAX to reload the page.
 * Improve styling, maybe with bootswatch
 * Add Unique landing page
 * Add Content

#### Installation (assuming you have the necessary tools installed on a Unix system):

  * Clone the repo and `cd` into the project directory

  * Install the required gems with `bundle install`

  * Make sure that the Postgres database is running, see the [docs](http://www.postgresql.org/docs/9.3/static/server-start.html) for instructions

  * Run `rake db:setup`
    * If you get a `PG::ConnectionBad: FATAL:  password authentication failed for user "postgres"`, fix it by running `sudo -u postgres psql` then `ALTER USER postgres PASSWORD 'newPassword';` in the psql prompt. See config/database.yml for the password and username. See the first answer on [StackOverflow](http://stackoverflow.com/questions/7695962/postgresql-password-authentication-failed-for-user-postgres) for details.

  * Start the rails server `rails s`

  * Point browser to localhost:3000

  * Enjoy!


#### Test the app:

  * run `rspec`

  * To see test coverage (after you've run `rspec`) point a browser to /path/to/app/coverage/index.html (for example: file:///Users/Guest/Desktop/portfolio/coverage/index.html#_AllFiles)

#### Deploy it to Heroku:

  * See [these intructions](devcenter.heroku.com/articles/getting-started-with-rails4#local-workstation-setup)
