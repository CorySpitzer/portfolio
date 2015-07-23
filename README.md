## A personal Portfolio App
### By Cory Spitzer

[MIT License](http://opensource.org/licenses/MIT)

*tested and built with: Rails 4.2.3 and Ruby 2.2.0*

###### \*Under Construction\* but see a version of it up at [Heroku](https://cory-spitzers-portfolio.herokuapp.com/)

TODO:
 * The edit project button has issues, but going directly to the page by
   typing in the path works.
 * Fix the 'the add reference form adds a reference' spec, which fails because
   it wants AJAX to reload the page.

Install and run the app (assuming you have the necessary tools installed on a
Unix system):

  * Clone the repo and `cd` into the project directory

  * launch `postgres`

  * run `rake db:setup`

  * start the rails server `rails s`

  * Point browser to localhost:3000


To test the app, run `rspec`

To see test coverage (after you've run `rspec`) point a browser to
/path/to/app/coverage/index.html#_AllFiles
