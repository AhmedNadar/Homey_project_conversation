# Create 3 users and 5 projects for each user
# Create 5 comments for each project
# Output the number of users, projects, and comments created
# Run the seed file with rails db:seed

User.destroy_all
Project.destroy_all
Comment.destroy_all

user1 = User.create!(email: "say@homey.com", password: "password", password_confirmation: "password")
user2 = User.create!(email: "ahmed@homey.com", password: "password", password_confirmation: "password")
user3 = User.create!(email: "admin@homey.com", password: "password", password_confirmation: "password")

5.times do
  user1.projects.create!(title: Faker::Lorem.sentence(word_count: 3), status: rand(0..2))
end

5.times do
  user2.projects.create!(title: Faker::Lorem.sentence(word_count: 3), status: rand(0..2))
end

5.times do
  user3.projects.create!(title: Faker::Lorem.sentence(word_count: 3), status: rand(0..2))
end

# Create 5 comments for each project
Project.all.each do |project|
  5.times do
    project.comments.create!(user: User.all.sample, content: Faker::Lorem.sentence(word_count: 3))
  end
end

puts "Created #{User.count} users"
puts "Created #{Project.count} projects"
puts "Created #{Comment.count} comments"
