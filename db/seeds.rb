puts "🌱 Seeding spices..."

# Seed your database here

20.times do
    Author.create(name: Faker::Name.name)
end

20.times do
    Blog.create(
        title: Faker::Book.title,
        content: Faker::Lorem.paragraph,
        author_id: rand(Author.first.id..Author.last.id)
    )
end

puts "✅ Done seeding!"
