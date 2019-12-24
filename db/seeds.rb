
# Create a main sample user.
User.create!(name:  "Milos Radenkovic",
             email: "m@br.rs",
             password:              "123456",
             password_confirmation: "123456")

# Generate a bunch of additional users.
99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end