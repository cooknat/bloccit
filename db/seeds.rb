 require 'random_data'

 # Create Posts
 5.times do
 
   Post.create!(
     title:  RandomData.random_sentence,
     body:   RandomData.random_paragraph
   )
 end
 posts = Post.all
 
 # Create Comments

 10.times do
   Comment.create!(

     post: posts.sample,
     body: RandomData.random_paragraph
   )
 end
 
 20.times do
   Advertisement.create!(
     title:  RandomData.random_sentence,
     copy:   RandomData.random_paragraph,
     price:  RandomData.random_num
   )
 end
 
 puts "Seed finished"
 puts "#{Post.count} posts created"
 puts "#{Comment.count} comments created"
 puts "#{Advertisement.count} ads created"