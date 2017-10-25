module TopicsHelper
  def user_is_authorized_for_topics_create_delete?
    current_user && current_user.admin?
  end
  def user_is_authorized_for_topics_update?
    current_user && current_user.moderator? || current_user.admin?
  end
end
