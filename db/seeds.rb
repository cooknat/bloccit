 require 'random_data'

 # Create Posts
 5.times do
   Post.create!(
     title:  RandomData.random_sentence,
     body:   RandomData.random_paragraph
   )
 end
 posts = Post.all
 
10.times do
   Comment.create!(
     post: posts.sample,
     body: RandomData.random_paragraph
   )
 end

 @p = Post.find_or_create_by(title: "5am", body: "wish i was asleep") do |post|
  #@p = post
  post.title = "5am"
  post.body = "wish i was asleep"
 end
 
 Comment.find_or_create_by(body: "coffee") do |comment|
  comment.post = @p
  comment.body = "coffee"
 end 
 
 
 
 puts "Seed finished"
 puts "#{Post.count} posts created"
 puts "#{Comment.count} comments created"