User.destroy_all

puts "Creating users"

u1 = User.create! name:'Yanni', email: 'yanni@test.com', password: 'chicken', admin: 'true'

u2 = User.create! name:'Tony', email:'tony@test.com', password: 'chicken', admin:'true'

puts "Created #{ User.count } users."
