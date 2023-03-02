puts "🌱 Seeding authors..."

# Seed your database here

20.times do
    Author.create(name: Faker::Name.name)
end

puts "✅ Done seeding!"
puts "🌱 Seeding blogs..."

20.times do
    Blog.create(
        title: Faker::Book.title,
        content:Faker::Lorem.paragraph_by_chars(number: 300),
        author_id: rand(Author.first.id..Author.last.id)
    )
end

puts "✅ Done seeding!"
