module UsersHelper
  def has_posted?(user)
    user.posts.count > 0
  end  
end
