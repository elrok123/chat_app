# Create some test users
user1 = User.find_or_initialize_by(email: "conner@example.com") do |user|
              user.update!(username: "Conner",
                           password: "password",)
            end
user2 = User.find_or_initialize_by(email: "marco@example.com") do |user|
              user.update!(username: "Marco",
                           password: "password",)
            end
user3 = User.find_or_initialize_by(email: "francesca@example.com") do |user|
              user.update!(username: "Francesca",
                password: "password",)
            end

# Add users to array
users = [user1, user2, user3]

# Create messages and assign to users in array using random indexing
20.times do
    message = Message.create!(body: Faker::Lorem.sentence(word_count: 10),
                   user: users[rand(0..2)])
end
