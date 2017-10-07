class Post < ApplicationRecord
  has_many :comments
  
  def self.censoredList
   Post.all.each do |post| 
    if post.id % 5 == 1
     post.update(:title => "SPAM")
    end
   end
  end   
end
