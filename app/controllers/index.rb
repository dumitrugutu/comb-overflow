get '/' do
  @questions = Question.all
  erb :index
end

post '/vote' do
 vote = Vote.new
 p params[:cast_vote]
 vote.cast(params[:cast_vote])
 # vote.save
 p '======================================================'
 p vote.point
 redirect '/'
end
