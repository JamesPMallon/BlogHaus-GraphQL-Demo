# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([[{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create([name: 'Luke', movie: movies.first)

Owner.create([{ id: 1, name: 'Blogger' }, { id: 2, name: 'Basecamp' }])

Blog.create([
  { owner_id: 1, title: 'Medium', description: 'Medium is an open platform where readers find dynamic thinking, and where expert and undiscovered voices can share their writing on any topic.' },
  { owner_id: 1, title: 'Coding Horror', description: 'programming and human factors' },
  { owner_id: 2, title: 'Signal Vs. Noise', description: 'Strong opinions and shared thoughts on design, business, and tech. By the makers (and friends) of Basecamp. Since 1999.' }
])

Author.create([
  { name: Faker::Name.unique.name, avatar: 'https://via.placeholder.com/150' },
  { name: Faker::Name.unique.name, avatar: 'https://via.placeholder.com/150' },
  { name: Faker::Name.unique.name, avatar: 'https://via.placeholder.com/150' },
  { name: Faker::Name.unique.name, avatar: 'https://via.placeholder.com/150' }
])

Post.create([
  { blog_id: Blog.pluck(:id).sample, author_id: Author.pluck(:id).sample, title: Faker::Movies::BackToTheFuture.unique.quote, content: Faker::Lorem.paragraphs(number: (1..10).to_a.sample).join(' ') },
  { blog_id: Blog.pluck(:id).sample, author_id: Author.pluck(:id).sample, title: Faker::Movies::BackToTheFuture.unique.quote, content: Faker::Lorem.paragraphs(number: (1..10).to_a.sample).join(' ') },
  { blog_id: Blog.pluck(:id).sample, author_id: Author.pluck(:id).sample, title: Faker::Movies::BackToTheFuture.unique.quote, content: Faker::Lorem.paragraphs(number: (1..10).to_a.sample).join(' ') },
  { blog_id: Blog.pluck(:id).sample, author_id: Author.pluck(:id).sample, title: Faker::Movies::BackToTheFuture.unique.quote, content: Faker::Lorem.paragraphs(number: (1..10).to_a.sample).join(' ') },
  { blog_id: Blog.pluck(:id).sample, author_id: Author.pluck(:id).sample, title: Faker::Movies::BackToTheFuture.unique.quote, content: Faker::Lorem.paragraphs(number: (1..10).to_a.sample).join(' ') },
])
