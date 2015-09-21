# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Create all the references and projects in their own files
require_relative './references'
require_relative './projects'

admin = User.create email: 'coryspitzer@gmail.com',
                    # set this environment variable in a .env file and make sure
                    # to add that file to your gitignore if the code is public;
                    # see env.example and tinyurl.com/pdfp2be for details
                    password: ENV['ADMIN_PASSWORD'],
                    admin: true

guest = User.create email: 'guest@coryspitzer.com',
                    password: 'guest',
                    admin: false

# Post.create title: 'Implement Markdown, please?',
#             body: '<p>HTML will have to do.</p>
#                    <p>For now.</p>'
