post '/answers/:id/comments' do
  answer = Answer.find(params[:id])
  question = Question.find(answer.question_id)
  comment = Comment.new(content: params[:comment], user_id: current_user, commentable_id: answer.id, commentable_type: "Answer")
  if comment.save
    answer.comments << comment
  end
  redirect "/questions/#{question.id}"
end
