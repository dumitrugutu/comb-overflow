get '/login' do
  erb :'entries/login'
end

post '/login' do
  user = User.find_by(email: params[:email])
  if user && user.authenticate(params[:password])
    session[:user_id] = user.id
    redirect '/'
  else
    @error = "Invalid credentials"
    erb :'entries/login'
  end

end
