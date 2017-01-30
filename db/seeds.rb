100.times do |n|
  email = Faker::Internet.free_email
  name = Forgery:: Name.full_name
  password = "password"
  User.create!(name: name,
               email: email,
               password: password,
               password_confirmation: password,
               )
end
100.times do |s|
  user_id = Faker:: Number.between(1,100)
  title = Forgery:: Name.full_name  
  content = Faker:: Team.creature
  Blog.create!(title: title,
               content: content,
               user_id: user_id
               )
end               