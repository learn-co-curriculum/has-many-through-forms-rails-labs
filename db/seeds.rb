User.destroy_all
Category.destroy_all
Post.destroy_all
Comment.destroy_all
PostCategory.destroy_all

# Create Users
user1 = User.create!(username: 'john_doe', email: 'john@example.com')
user2 = User.create!(username: 'jane_smith', email: 'jane@example.com')
user3 = User.create!(username: 'admin_user', email: 'admin@example.com')

# Create Categories
category1 = Category.create!(name: 'Technology')
category2 = Category.create!(name: 'Health')
category3 = Category.create!(name: 'Lifestyle')

# Create Posts
post1 = Post.create!(title: 'The Future of AI', content: 'AI is transforming the world...', created_at: Time.now, updated_at: Time.now)
post2 = Post.create!(title: 'Healthy Living Tips', content: 'To live a healthy life, you should...', created_at: Time.now, updated_at: Time.now)
post3 = Post.create!(title: 'Work-Life Balance', content: 'Finding balance in life is crucial...', created_at: Time.now, updated_at: Time.now)

# Associate Posts with Categories
PostCategory.create!(post: post1, category: category1)
PostCategory.create!(post: post2, category: category2)
PostCategory.create!(post: post3, category: category3)

# Create Comments
Comment.create!(content: 'Great article on AI!', user: user1, post: post1, created_at: Time.now, updated_at: Time.now)
Comment.create!(content: 'Very helpful tips, thanks!', user: user2, post: post2, created_at: Time.now, updated_at: Time.now)
Comment.create!(content: 'I totally agree with this.', user: user3, post: post3, created_at: Time.now, updated_at: Time.now)

puts "Seeding completed successfully!"
