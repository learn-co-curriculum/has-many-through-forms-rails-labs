# Clear existing data to avoid duplication issues
User.destroy_all
Category.destroy_all
Post.destroy_all
Comment.destroy_all
PostCategory.destroy_all

# Create Users
user1 = User.create!(username: "john_doe", email: "john@example.com")
user2 = User.create!(username: "jane_doe", email: "jane@example.com")

# Create Categories
cat1 = Category.create!(name: "Technology")
cat2 = Category.create!(name: "Health")
cat3 = Category.create!(name: "Education")

# Create Posts
post1 = Post.create!(title: "Advances in AI", content: "Exploring the new era of artificial intelligence.")
post2 = Post.create!(title: "Healthcare Innovations", content: "Recent breakthroughs in healthcare.")

# Create Comments
comment1 = Comment.create!(content: "Very informative post!", user_id: user1.id, post_id: post1.id)
comment2 = Comment.create!(content: "Thanks for sharing.", user_id: user2.id, post_id: post1.id)

# Assign Categories to Posts
PostCategory.create!(post_id: post1.id, category_id: cat1.id)
PostCategory.create!(post_id: post1.id, category_id: cat3.id)
PostCategory.create!(post_id: post2.id, category_id: cat2.id)

puts "Seeds data created successfully!"
