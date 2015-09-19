# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin = User.create email: 'coryspitzer@gmail.com',
                    # set this environment variable in a .env file and make sure
                    # to add that file to your gitignore if the code is public;
                    # see env.example and tinyurl.com/pdfp2be for details
                    password: ENV['ADMIN_PASSWORD'],
                    admin: true

guest = User.create email: 'guest@coryspitzer.com',
                    password: 'guest',
                    admin: false

# (0..45).each do |i|
#   post = Post.create title: "Test Post #{i}",
#                body: "This is test post #{i}'s body."
#   admin.posts << post
# end

Post.create title: 'Implement Markdown, please?',
            body: 'Blog posts are not very readable without paragraphs!'

Reference.create referee: 'Jim Mahoney',
                 referee_info: 'Professor of Computer Science at Marlboro College',
                 body: "Cory was a student of mine in 2013 - 2014 at Marlboro College, where I teach computer science . Since Marlboro is a tiny school (40 faculty, under 300 students), I worked closely with Cory in several CS classes including Intro Programming, Algorithms, and an internet seminar.

                Cory did some great work in my classes. He asked good questions, looking for a thorough understanding of the material, and helped tutor other students.

                Personally, he's a friendly, likable guy who works well with others.

                While I haven't worked with him lately, I know that he's been working on his web developer chops, and can easily imagine him in that role.

                If you have questions about his work with me, you're welcome to contact me, Jim Mahoney (mahoney@marlboro.edu)"

Reference.create referee: 'Rob Lederer',
                 referee_info: 'President at Management Resources',
                 body: "I've known Cory for many years. He has a very good, incisive mind and a big heart. When he sees what he wants he goes for it and makes it happen. He also is a very principled person who stands for what he believes in."

Reference.create referee: 'Jessica Engel',
                 referee_info: 'Support and Tools Developer at Cozy',
                 body: "Cory was a great pair to work with at Epicodus, he has a solid understanding of math and programming and the inquisitive and passionate nature that drives his desire to learn something new. He always took his time when we were working out a problem, and I really appreciated how willing he was to discover the 'why' even if we had figured out the 'how.' I enjoyed pair programming and grabbing tacos after school with him many times. He'd be a great addition to any developer team."
# Reference.create referee: 'Josh Lifton',
#                  referee_info: 'Founder and CEO of Crowd Supply',
#                  body: "I've known Cory for many years. He has a very good, incisive mind and a big heart. When he sees what he wants he goes for it and makes it happen. He also is a very principled person who stands for what he believes in."



Project.create name: 'Personal Portfolio App',
               description: "A personal portfolio application - the very project you are using right now!"
