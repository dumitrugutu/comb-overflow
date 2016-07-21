get '/' do
  @questions = Question.all.order(created_at: :desc)
  erb :index
end

post '/questions/votes/:id' do
  authenticate!
  vote = Vote.new(point: params[:cast_vote], votable_id: params[:id], votable_type: params[:votable_type], user_id: session[:user_id])
  vote.save
  redirect '/'
end
