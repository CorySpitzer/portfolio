## A personal Portfolio App
### By Cory Spitzer

[MIT License](http://opensource.org/licenses/MIT)

*tested and built with: Rails 4.2.3 and Ruby 2.2.0*

###### \*Under Construction\* but see a version of it up at [Heroku](http://www.coryspitzer.com/)

TODO:
 * Fix the 'the add reference form adds a reference' spec, which fails because
   it wants AJAX to reload the page.

#### Installation (assuming you have the necessary tools installed on a Unix system):

  * Clone the repo and `cd` into the project directory

  * Install the required gems with `bundle install`

  * Launch `postgres`

  * Run `rake db:setup`

  * Start the rails server `rails s`

  * Point browser to localhost:3000

  * Enjoy!


#### Test the app:

  * run `rspec`

  * To see test coverage (after you've run `rspec`) point a browser to /path/to/app/coverage/index.html (for example: file:///Users/Guest/Desktop/portfolio/coverage/index.html#_AllFiles)

#### Deploy it to Heroku:

  * See devcenter.heroku.com/articles/getting-started-with-rails4#local-workstation-setup
