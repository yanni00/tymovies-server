User.destroy_all

puts "Creating users"

u1 = User.create! name:'Yanni', email: 'yanni@test.com', password: 'chicken', admin: 'true'

u2 = User.create! name:'Tony', email:'tony@test.com', password: 'chicken', admin:'true'

puts "Created #{ User.count } users."


Review.destroy_all

puts "Creating reviews"

r1 = Review.create! name:'The Best Movie Review Ever!!', userReview:'A great laugh for some ages. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', tmdb_movie_id:'290859', user_id:u1.id

r2 = Review.create! name:'I Really Liked This Movie', movieTitle:'Monty Python and the Holy Grail', movieRating: '89', userReview: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', tmdb_movie_id:'290859', user_id:u2.id

r3 = Review.create! name:'The Best Movie Review Ever!!', userReview:'A great laugh for some ages. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', tmdb_movie_id:'359724', user_id:u1.id

r4= Review.create! name:'I Really Liked This Movie', movieTitle:'Monty Python and the Holy Grail', movieRating: '89', userReview: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', tmdb_movie_id:'359724', user_id:u2.id

puts "Created #{ Review.count } reviews."


Comment.destroy_all

puts "Creating comments"

c1 = Comment.create! name:'Good Advice', userComment:'This review is written really well! This review is written really well! This review is written really well! This review is written really well!', user_id:u1.id, review_id:r1.id

c2 = Comment.create! name:'Good Advice', userComment:'This review is written really well! This review is written really well! This review is written really well! This review is written really well!', user_id:u2.id, review_id:r2.id

c3 = Comment.create! name:'Bad Review', userComment:'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', user_id:u1.id, review_id:r3.id

c4 = Comment.create! name:'Bad Review', userComment:'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', user_id:u2.id, review_id:r4.id

puts "Created #{ Comment.count } comments"
