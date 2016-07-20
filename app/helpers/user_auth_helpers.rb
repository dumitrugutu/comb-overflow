module UserAuthHelpers
  def current_user
    User.find(session[:user_id])
  end

  def user_authorization(original_poster)
    session[:user_id] && session[:user_id] == original_poster.id
  end

  def restricted_access
    halt(404, erb(:'404'))
  end
end

helpers UserAuthHelpers
