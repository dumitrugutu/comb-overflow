get '/login' do
  erb :'users/login'
end

post '/login' do
  user = User.find_by(display_name: params[:display_name])
  if user && user.authenticate(params[:password])
    session[:user_id] = user.id
    redirect '/'
  else
    @error = "Invalid credentials"
    erb :'users/login'
  end
end

get '/logout' do
  session[:user_id] = nil
  redirect '/'
end
