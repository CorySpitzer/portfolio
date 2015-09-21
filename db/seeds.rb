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

Post.create title: 'Implement Markdown, please?',
            body: '<p>HTML will have to do.</p>
                   <p>For now.</p>'

Reference.create referee: 'Joshua Lifton',
                 referee_info: 'Co-founder & CEO of Crowd Supply',
                 body: "<p>September 20, 2015</p>

                        <p>To Whom It May Concern,</p>

                        <p>Please take this letter as my full recommendation for Cory Spitzer. I had the pleasure of managing and working directly with Cory in his capacity as one of the two Epicodus developer interns we took on at Crowd Supply during the last five weeks of the summer of 2015. In the interview process, Cory quickly rose to the top of the field of eight qualified candidates. Having previously worked with Epicodus interns in the spring of 2014, I was immediately impressed with how much more prepared and qualified the 2015 class was.</p>

                        <p>I’d tasked Cory and the other intern with jointly creating from scratch a localdevelopment environment for the crowdsupply.com website using a Vagrant-managed virtual machine and the Ansible configuration management tool, both of which were entirely new to Cory. Doing so required understanding every level of the website’s python-based technology stack, which includes nginx, redis, elasticsearch, mysql, uwsgi, pyramid, mako, and bootstrap. Working together, the interns adeptly applied what they’d learned from Epicodus’s ruby-based curriculum and soon had a reproducible development environment. During this time, Cory impressed me with how quickly he came up to speed in areas in which he didn’t have any previous experience and how well he worked with his peer.</p>

                        <p>With a common development environment in hand, the two interns spent the remaining few weeks working individually on their own sets of bug fixes andenhancements. This is where Cory truly excelled - he is methodical and has a natural talent for properly scoping the problems he’s solving. Two things stand out in this regard. First, Cory’s ability to focus and run things to ground meant that he very quickly had code merged into our master branch and running on our production servers. Second, during a particular code review, I noticed that Cory’s enhancement, while correct, wasn’t as general as it could have been because, with some refactoring, it could also be applied to another part of the code base. I didn’t say anything at the time and merged the code anyway, thinking that it would be difficult for Cory to know about this other part of the code base and we’d refactor later. I was happily surprised to see that Cory’s very next pull request, without any prompting, was the exact refactoring and generalization I’d had in mind.</p>

                        <p>In summary, I’ve been impressed with Cory’s mature problem solving skills, ability to work well with other developers, and easy going style. He’s a pleasure to work with and I’m sure he will be a valuable addition as a junior software developer to any team. Don’t hesitate to contact me if you have any questions.</p>

                        <p>Sincerely,</p>

                        <p>Joshua Lifton</p>"


Reference.create referee: 'Jessica Engel',
                 referee_info: 'Support and Tools Developer at Cozy',
                 body: "<p>Cory was a great pair to work with at Epicodus, he has a solid understanding of math and programming and the inquisitive and passionate nature that drives his desire to learn something new. He always took his time when we were working out a problem, and I really appreciated how willing he was to discover the 'why' even if we had figured out the 'how.' I enjoyed pair programming and grabbing tacos after school with him many times. He'd be a great addition to any developer team.<p>"

Reference.create referee: 'Jim Mahoney',
                 referee_info: 'Professor of Computer Science at Marlboro College',
                 body: "<p>Cory was a student of mine in 2013 - 2014 at Marlboro College, where I teach computer science . Since Marlboro is a tiny school (40 faculty, under 300 students), I worked closely with Cory in several CS classes including Intro Programming, Algorithms, and an internet seminar.</p>

                 <p>Cory did some great work in my classes. He asked good questions, looking for a thorough understanding of the material, and helped tutor other students.</p>

                 <p>Personally, he's a friendly, likable guy who works well with others.</p>

                 <p>While I haven't worked with him lately, I know that he's been working on his web developer chops, and can easily imagine him in that role.</p>

                 <p>If you have questions about his work with me, you're welcome to contact me, Jim Mahoney (mahoney@marlboro.edu)</p>"

Reference.create referee: 'Rob Lederer',
                 referee_info: 'President at Management Resources',
                 body: "<p>I've known Cory for many years. He has a very good, incisive mind and a big heart. When he sees what he wants he goes for it and makes it happen. He also is a very principled person who stands for what he believes in.</p>"


# Reference.create referee: 'Josh Lifton',
#                  referee_info: 'Founder and CEO of Crowd Supply',
#                  body: "<p></p>"



Project.create name: 'Personal Portfolio App',
               description: 'A personal portfolio application - the very project you are using right now!',
               link: 'https://github.com/CorySpitzer/portfolio'
