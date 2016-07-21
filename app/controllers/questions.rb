get '/questions/:id' do
  @question = Question.find(params[:id])
  if @question.answers
    @answers = @question.answers
  end
  erb :'questions/show'
end

post '/questions/:id/comments' do
  question = Question.find(params[:id])
  comment = Comment.new(content: params[:comment], user_id: current_user, commentable_id: question.id, commentable_type: "Question")
  if comment.save
    question.comments << comment
  end
  redirect "/questions/#{question.id}"
end


post '/questions/:id/votes' do
  authenticate!
  vote = Vote.new(point: params[:cast_vote], votable_id: params[:id], votable_type: params[:votable_type], user_id: session[:user_id])
  vote.save
end

get '/questions/:id/edit' do
  @question = Question.find_by(id:params[:id])
  erb :'questions/edit'
end

put '/questions/:id/edit' do
  update_question = Question.find(params[:id])
  update_question.update_attributes(content: params[:content])
  redirect "/questions/#{params[:id]}"
end

delete '/questions/:id' do
  question = Question.find(params[:id])
  if logged_in? && (current_user == question.user)
    question.destroy
  end
  redirect "/"
end
