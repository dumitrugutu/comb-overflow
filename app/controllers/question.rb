get '/questions/:id' do
  puts "----------------"
  p params
  puts "----------------"

  @question = Question.find(params[:id])
  erb :'questions/show'
end
