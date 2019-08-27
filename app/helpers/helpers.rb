class Helpers
  def current_user()
    @user = User.findsession[:user_id]
  end
  def is_logged_in?
  end
end