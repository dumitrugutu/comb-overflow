get '/questions/:id' do
  @question = Question.find(params[:id])
  # p @question
  if @question.answers
    @answers = @question.answers
  end
  erb :'questions/show'
end
