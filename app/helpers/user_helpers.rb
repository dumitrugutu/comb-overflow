helpers do
  def current_user
    @cached_user = @cached_user || User.find_by(id: session[:user_id])
  end

  def logged_in?
    session[:user_id] != nil
  end

  def authenticate!
  redirect '/login' unless logged_in?
  end
end
