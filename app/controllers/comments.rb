get '/questions/:id/comments/new' do
  @question = Question.find(params[:id])
  erb :'questions/comment'
end

get '/answers/:id/comments/new' do
  @answer = Answer.find(params[:id])
  erb :'answers/comment'
end
