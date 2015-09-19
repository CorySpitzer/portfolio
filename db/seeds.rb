# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin = User.create email: 'coryspitzer@gmail.com',
                    # set this environment variable in your .bashrc or similar; 
                    # see tinyurl.com/pdfp2be
                    password: ENV['PORTFOLIO_PASSWORD'],
                    admin: true

guest = User.create email: 'guest@guest.com',
                    password: '12341234',
                    admin: false

(0..45).each do |i|
  post = Post.create title: "Test Post #{i}",
               body: "This is test post #{i}'s body."
  admin.posts << post
end

Reference.create referee: 'Elias Winston',
                 referee_info: 'Founder of TaskMap',
                 body: 'I fully recommend Mr. Spitzer!'

Project.create name: 'Personal Portfolio App',
               description: "A personal portfolio application - the very project you are using right now!"
