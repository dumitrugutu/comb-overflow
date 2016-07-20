get '/answers/:id/comments' do
  answer = Answer.find(params[:id])
end
