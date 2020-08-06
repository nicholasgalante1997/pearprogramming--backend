# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

User.destroy_all
Post.destroy_all
Comment.destroy_all 
MyChallenge.destroy_all 
Challenge.destroy_all 
Note.destroy_all 

puts '*Cleared*'

puts '*Seeding*'

numberArray = [1, 21, 35, 22, 24]


#Users
User.create(username: (Faker::TvShows::SouthPark.character.gsub(/\s+/, "") + "#{numberArray.sample}"), password_digest: 'flatiron1', bio: 'Just a man who loves react :)', img_url: "")
User.create(username: (Faker::TvShows::SouthPark.character.gsub(/\s+/, "") + "#{numberArray.sample}"), password_digest: 'flatiron2', bio: 'second guy to sign up for pear!', img_url: "")
User.create(username: (Faker::TvShows::SouthPark.character.gsub(/\s+/, "") + "#{numberArray.sample}"), password_digest: 'flatiron3', bio: 'always late to the party :(', img_url: "")

#Post
10.times do 
    Post.create(user_id: User.all.sample.id, topic: Faker::ProgrammingLanguage.name, text_content: Faker::TvShows::SouthPark.quote)
end 

#Comment
20.times do 
    Comment.create(user_id: User.all.sample.id, post_id: Post.all.sample.id, text_content: Faker::TvShows::SouthPark.quote)
end 

#Shorthands
difficulties = ["Easy", 'Med', "Hard"]
nsl = "Backend Challenge: No Specific Language"
bool = [true, false]

#Github - Daily Coding Problem, Python
Challenge.create(topic: 'Python', difficulty: difficulties.sample, git_link: 'https://github.com/r1cc4rdo/daily_coding_problem/tree/master/problems/01', synopsis: 'Given a stack of N elements, interleave the first half of the stack with the second half reversed using one other queue.', title: 'Interleave the elements of a stack using a queue', contributor: 'git: r1cc4do')
Challenge.create(topic: 'Python', difficulty: difficulties.sample, git_link: 'https://github.com/r1cc4rdo/daily_coding_problem/tree/master/problems/02', synopsis: 'Given an array of integers, return a new array such that each element at index i of the new array is the product of all the numbers in the original array except the one at i. Solve it without using division and in O(n).', title: 'Product of every other number in an array', contributor: 'git: r1cc4do')
Challenge.create(topic: 'Python', difficulty: difficulties.sample, git_link: 'https://github.com/r1cc4rdo/daily_coding_problem/tree/master/problems/03', synopsis: 'Given the root to a binary tree, implement serialize(root), which serializes the tree into a string, and deserialize(s), which deserializes the string back into the tree.', title: 'Serialize a tree into a string and back', contributor: 'git: r1cc4do')
Challenge.create(topic: 'Python', difficulty: difficulties.sample, git_link: 'https://github.com/r1cc4rdo/daily_coding_problem/tree/master/problems/04', synopsis: 'Given an array of integers, find the first missing positive integer in linear time and constant space. You can modify the input array in-place.', title: 'Find the first missing positive integer', contributor: 'git: r1cc4do')
Challenge.create(topic: 'Python', difficulty: difficulties.sample, git_link: 'https://github.com/r1cc4rdo/daily_coding_problem/tree/master/problems/05', synopsis: 'cons(a, b) constructs a pair, and car(pair) and cdr(pair) returns the first and last element of that pair.', title: 'Implement Lisps car and cdr given cons', contributor: 'git: r1cc4do')
Challenge.create(topic: 'Python', difficulty: difficulties.sample, git_link: 'https://github.com/r1cc4rdo/daily_coding_problem/tree/master/problems/06', synopsis: 'An XOR linked list is a more memory efficient doubly linked list. Instead of each node holding next and prev fields, it holds a field named both, which is a XOR of the next node and the previous node. Implement a XOR linked list; it has an add(element) which adds the element to the end, and a get(index) which returns the node at index.', title: 'Implement a XOR linked list', contributor: 'git: r1cc4do')
Challenge.create(topic: 'Python', difficulty: difficulties.sample, git_link: 'https://github.com/r1cc4rdo/daily_coding_problem/tree/master/problems/07', synopsis: 'Given the mapping a = 1, b = 2, ... z = 26, and an encoded message, count the number of ways it can be decoded.', title: 'Count the number of decodings for a message', contributor: 'git: r1cc4do')
Challenge.create(topic: 'Python', difficulty: difficulties.sample, git_link: 'https://github.com/r1cc4rdo/daily_coding_problem/tree/master/problems/08', synopsis: 'A unival tree (which stands for "universal value") is a tree where all nodes have the same value. Given the root to a binary tree, count the number of unival subtrees. Example:', title: 'Count the number of unival subtrees', contributor: 'git: r1cc4do')
Challenge.create(topic: 'Python', difficulty: difficulties.sample, git_link: 'https://github.com/r1cc4rdo/daily_coding_problem/tree/master/problems/09', synopsis: 'Given a list of integers, write a function that returns the largest sum of non-adjacent numbers. The "largest sum of non-adjacent numbers" is the sum of any subset of non-contiguous elements.', title: 'Largest sum of non-adjacent numbers', contributor: 'git: r1cc4do')
Challenge.create(topic: 'Python', difficulty: difficulties.sample, git_link: 'https://github.com/r1cc4rdo/daily_coding_problem/tree/master/problems/10', synopsis: 'Implement a job scheduler which takes in a function f and an integer n, and calls f after n milliseconds.', title: 'Call a function after n milliseconds', contributor: 'git: r1cc4do')

#Github - Backend Challenges
Challenge.create(topic: "#{nsl}", difficulty: difficulties.sample, git_link: 'https://github.com/addisonglobal/backend-technical-test', synopsis: "The goal of the exercise is to improve the definition of a backend service/module and provide an implementation for it. Once this is finished, you'll create a microservice that offers a REST API to consume the service/module functionality.", title: "Stack: Java or Scala, Any Framework & REST API", contributor: 'Addison-Global')
Challenge.create(topic: "#{nsl}", difficulty: difficulties.sample, git_link: "https://github.com/AfricasTalkingTalent/BackendCodeChallengeSeptember2018", synopsis: "Unavailable", title: "Stack: Regex, Scala", contributor: "Africa's Talking - 1")
Challenge.create(topic: "#{nsl}", difficulty: difficulties.sample, git_link: "https://github.com/AfterShip/challenge/blob/software-engineer/coding-challenge.md", synopsis: "You can pick one of the challenges and try to finish it with 3-4 days. Please organize, design, test, document and deploy your code as if it were going into production, then send us a link to the hosted repository (e.g. Github, Bitbucket...).", title: "Stack: Node.js, PHP, Java, or Ruby", contributor: "AfterShip")
Challenge.create(topic: "#{nsl}", difficulty: difficulties.sample, git_link: "https://github.com/AlayaCare/backend-python-test", synopsis: "You will be asked to improve the code of this app with the following tasks.", title: "Backend-Python-test", contributor: "Alayacare")
Challenge.create(topic: "#{nsl}", difficulty: difficulties.sample, git_link: "https://github.com/chamatheapp/chama-backend-assignment-course-signup", synopsis: "The assignment is designed to check your coding and problem-solving skills. It is intentionally made too big. We suggest you spend a maximum of 4 hours on it, therefore you need to decide which components of the system you will code and which you will mock. For example, we are more interested in Architecture and Domain model design than in Swagger setup or Mongo repository implementation.", title: "chama-backend", contributor: "git: chamatheapp")
Challenge.create(topic: "#{nsl}", difficulty: difficulties.sample, git_link: "https://github.com/RocketBus/quero-ser-clickbus/tree/master/testes/backend-developer", synopsis: "This is a simple challenge to test your skills on building APIs. The ClickBus services use mainly Java and Springboot technologies. However, you can use any language and framework that you feel more confortable.", title: "ClickBus", contributor: "RocketBus" )
Challenge.create(topic: "#{nsl}", difficulty: difficulties.sample, git_link: "https://github.com/cubonetwork/fullstack-challenge", synopsis: "The objective of this challenge is to evaluate your domain in fullstack development: its organization, style and good practices with code, APIs creation, frameworks knowledge and technologies.", title: "{'developer': 'fullstack'}", contributor: "CuboNetwork")
Challenge.create(topic: "#{nsl}", difficulty: difficulties.sample, git_link: "https://github.com/getninjas/backend-rover-challenge", synopsis: "A squad of robotic rovers are to be landed by NASA on a plateau on Mars. This plateau, which is curiously rectangular, must be navigated by the rovers so that their on-board cameras can get a complete view of the surrounding terrain to send back to Earth.", title: "backend-rover-challenge", contributor: "GetNinjas")
Challenge.create(topic: "#{nsl}", difficulty: difficulties.sample, git_link: "https://github.com/hurbcom/challenge-bravo", synopsis: "Build an API, which responds to JSON, for currency conversion. It must have a ballast currency (USD) and make conversions between different currencies with real and current quotes.", title: "Bravo-Challenge", contributor: "Hurbcom")
Challenge.create(topic: "#{nsl}", difficulty: difficulties.sample, git_link: "https://github.com/Ontraport/Backend-Test", synopsis: "Write a function that accepts a multi-dimensional container of any size and converts it into a one dimensional associative array whose keys are strings representing their value's path in the original container.", title: "ONTRAPORT Backend Skills", contributor: "ONTRAPORT")
Challenge.create(topic: "#{nsl}", difficulty: difficulties.sample, git_link: "https://github.com/ZeLabs/code-challenge/blob/master/backend.md", synopsis: "Using the previous information, create an API in REST or GraphQL (if connected to new trends😉) that performs the functions below. You can use any programming language and also any database. Do it the way you prefer, or feel more comfortable.", title: "Blob", contributor: "ZeLabs")

#Github - Ruby Challenges 
Challenge.create(topic: "Ruby & Rails", difficulty: difficulties.sample, git_link: 'https://github.com/aircall/backend-test-5', synopsis:"This test is a part of our hiring process at Aircall for backend positions. It should take you between 2 and 4 hours depending on your experience. Hope you will have as much fun as we did coding this test!" , title: "AirCall.io Backend Technical test", contributor: "Aircall")
Challenge.create(topic: "Ruby & Rails", difficulty: difficulties.sample, git_link: "https://github.com/AmbulnzLLC/fullstack-challenge/tree/master/backend", synopsis: "This application serves the purpose of exposing a JSON API to be consumed by a frontend client for ordering pizza.", title: "AmbulnzLLC: Full Stack Challenge", contributor: "AmbulnzLLC")
Challenge.create(topic: "Ruby & Rails", difficulty: difficulties.sample, git_link: "https://github.com/Creditas/challenge/tree/master/backend", synopsis: "You are reviewing the design decisions for software that processes online Orders. For these requests, payments are made that receive treatments depending on the specific situations of each one as follows...", title: "challenge/backend", contributor: "git: Credits")
Challenge.create(topic: "Ruby & Rails", difficulty: difficulties.sample, git_link: "https://github.com/doghero/test-backend/wiki/Test-Case", synopsis: "We recently launched a new tour service. Your challenge will be to think of a structure that supports users to request this new service for their furry ones.", title: "Test-Case", contributor: "git: Doghero")
Challenge.create(topic: "Ruby & Rails", difficulty: difficulties.sample, git_link: "https://github.com/estantevirtual/vagas/blob/master/desafios/backend.md", synopsis: "With the arrival of the Olympic Games, we were assigned to build an API REST in Ruby for the COB (Brazilian Olímico Committee) who will be responsible for marking and tell the winners of the following ways: 100m dash: Shortest time wins, Javelin Throw: Longest distance wins", title: "Practical Test for EstanteVirtual", contributor: "EstanteVirtual")
Challenge.create(topic: "Ruby & Rails", difficulty: difficulties.sample, git_link: "https://github.com/getninjas/backend-challenge", synopsis: "The purpose of this exercise is to create a very simple Rails application, with an administrative interface that allows you to create / edit forms for each of the existing subcategories.", title: "Dynamic-Forms-BackendChallenge", contributor: "GetNinjas")
Challenge.create(topic: "Ruby & Rails", difficulty: difficulties.sample, git_link: "https://github.com/icasei/teste-back-end", synopsis: "Develop an application using Ruby on Rails that contains a contact list. It must contain the email and name field .", title: "iCasei test: backend", contributor: "iCasei")
Challenge.create(topic: "Ruby & Rails", difficulty: difficulties.sample, git_link: "https://github.com/ingenious-agency/backend-test", synopsis: "The test is to develop a Web App using this repository as a guide.", title: "Ingenious Softworks Test", contributor: "Ingenious-Agency")
Challenge.create(topic: "Ruby & Rails", difficulty: difficulties.sample, git_link: "https://github.com/petlove/vagas/tree/master/backend-ruby", synopsis: "The purpose of this exercise is to analyze your familiarity with the Rails platform, taking care of a use case with the modeling and validation resources that the framework offers. Please try to solve the test yourself. Remember that we will discuss the solution in person.", title: "Vacancies", contributor: "Petlove")

#Github - PHP
Challenge.create(topic: "PHP", difficulty: difficulties.sample, git_link: "https://github.com/amarofashion/back-end-challenge", synopsis: "API creation for product registration and consultation", title: "Amaro Backend Challenge", contributor: "Amaro")
Challenge.create(topic: "PHP", difficulty: difficulties.sample, git_link: "https://github.com/SamKnows/backend-engineering-test/blob/master/README.md", synopsis: "This is a quick test put together by the backend team at SamKnows to test your skills in writing clear business logic and testing code (functional and unit). We've setup a base project using Symfony 4 with Flex and Docker.", title: "SamKnows: backend engineering test", contributor:"SamKnows" )

#Github - Node.js
Challenge.create(topic: "Node.js", difficulty: difficulties.sample, git_link: "https://github.com/AmbulnzLLC/fullstack-challenge/tree/master/backend", synopsis: "This application serves the purpose of exposing a JSON API to be consumed by a frontend client for ordering pizza.", title: "AmbulnzLLC: Full Stack Challenge", contributor: "AmbulnzLLC")
Challenge.create(topic: "Node.js", difficulty: difficulties.sample, git_link: "https://github.com/eaze/take-home-backend", synopsis: "Build the API to allow for the anonymous creation/taking of surveys (i.e. you don't have to create a user account to create a survey).", title: "Take-Home-backend", contributor: "Eaze")
Challenge.create(topic: "Node.js", difficulty: difficulties.sample, git_link: "https://github.com/FotonTech/join", synopsis: "Recruitment Challenge", title: "Join Foton", contributor: "Foton")
Challenge.create(topic: "Node.js", difficulty: difficulties.sample, git_link: "https://github.com/goomerdev/job-dev-backend-interview", synopsis: "Project Objective: To create a RESTful API capable of managing the restaurants and products on its menu.", title: "Challenge - Developer Backend", contributor: "Goomer Dev")
Challenge.create(topic: "Node.js", difficulty: difficulties.sample, git_link: "https://github.com/ingenious-agency/backend-test", synopsis: "The test is to develop a Web App using this repository as a guide.", title: "Ingenious Softworks Test", contributor: "Ingenious-Agency")
Challenge.create(topic: "Node.js", difficulty: difficulties.sample, git_link: "https://github.com/join-com/coding-challenge-backend-nodejs", synopsis: "Stolen bikes are a typical problem in Berlin. The Police want to be more efficient in resolving stolen bike cases. They decided to build a software that can automate their processes — the software that you're going to develop.", title: "Stolen Bikes", contributor: "join-com" )
Challenge.create(topic: "Node.js", difficulty: difficulties.sample, git_link: "https://github.com/RedFoxTech/vaga-backend-teste", synopsis: "Its mission is to import data from Pokemon Go, which are in excel, and create an API using NodeJS so that we can consume this data in a practical, fast and automated way. This API should follow the minimum of RESTful practices and contain listings, search, pagination and filters. Feel free to decide which filters are most interesting.", title: "Pokemon Go! Challenge", contributor: "RedFoxTech")
Challenge.create(topic: "Node.js", difficulty: difficulties.sample, git_link: "https://github.com/Wiredcraft/test-backend", synopsis: "Build a RESTful API that can get/create/update/delete user data from a persistence database", title: "WiredCraft-backend", contributor: "WiredCraft")

#Github - Java
Challenge.create(topic: "Java", difficulty: difficulties.sample, git_link: "https://github.com/b2w-marketplace/challenge-backend", synopsis: "Develop a rest service that uses this Order API (link) and, based on the result, filters by data according to the parameters sent by HTTP request. ", title: "Backend Challenge BIT SP", contributor: "git: b2w-marketplace")
Challenge.create(topic: "Java", difficulty: difficulties.sample, git_link: "https://github.com/ORCAapplicants/backend-test", synopsis: "You want to manage vehicle access to a paid parking lot. Parking is not automated, so there is an employee in charge of registering vehicle entrances and exits.", title: "technical-test-ORCA", contributor: "ORCAapplicants")
Challenge.create(topic: "Java", difficulty: difficulties.sample, git_link: "https://github.com/ifood/ifood-backend-logistic-test", synopsis: "You have been hired to create a completely new micro-service to route orders minimizing overall distance. This problem is well known as Vehicle Routing Problem, please find a reference for it at (https://en.wikipedia.org/wiki/Vehicle_routing_problem).", title: "iFood Backend Test", contributor: "iFood" )
Challenge.create(topic: "Java", difficulty: difficulties.sample, git_link: "https://github.com/PaytmLabs/WeblogChallenge", synopsis: "The challenge is to make make analytical observations about the data using the distributed tools below.", title: "Weblog Challenge", contributor: "Paytm Labs")
Challenge.create(topic: "Java", difficulty: difficulties.sample, git_link: "https://github.com/geektimus/java-challenges", synopsis: "8 Java Challenges", title: "Java-Challenges", contributor: "Geektimus")

#MyChallenges
50.times do 
    MyChallenge.create(user_id: User.all.sample.id, challenge_id: Challenge.all.sample.id, completed: bool.sample)
end 

#Notes
20.times do 
    Note.create(my_challenge_id: MyChallenge.all.sample.id, text: Faker::TvShows::SouthPark.quote)
end 

puts "All Done 🥰"