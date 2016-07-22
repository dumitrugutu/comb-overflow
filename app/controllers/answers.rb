post '/answers/:id/comments' do
  authenticate!
  answer = Answer.find(params[:id])
  question = Question.find(answer.question_id)
  comment = Comment.new(content: params[:comment], user_id: current_user.id, commentable_id: answer.id, commentable_type: "Answer")
  if comment.save
    answer.comments << comment
  end
  redirect "/questions/#{question.id}"
end

post '/answers/:id/votes' do
  authenticate!
  answer = Answer.find(params[:id])
  question = Question.find(answer.question_id)
  vote = Vote.new(point: params[:cast_vote], votable_id: params[:id], votable_type: params[:votable_type], user_id: session[:user_id])
  vote.save
  redirect "/questions/#{question.id}"
end

post '/answers/questions/:id' do
  @question = Question.find_by(id: params[:id])
  if logged_in?
    answer = Answer.new(content: params[:answer], user_id: current_user.id, question_id: @question.id)
    answer.save
    if answer.valid?
      @question.answers << answer
      redirect "/questions/#{@question.id}"
    else
      @error = "Your answer sucked potatoe juice!"
      erb :'questions/show'
    end
  end
end
