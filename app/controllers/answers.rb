post '/answers/:id/comments' do
  authenticate!
  answer = Answer.find(params[:id])
  question = Question.find(answer.question_id)
  comment = Comment.new(content: params[:comment], user_id: current_user, commentable_id: answer.id, commentable_type: "Answer")
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

