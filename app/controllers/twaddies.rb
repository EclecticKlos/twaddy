# get a list of twaddies
get '/twaddies' do
  erb :twaddies
end
# get a form to add a new twaddies
get '/twaddies/new' do
  erb :new_twaddy
end
# add a new twaddies
post '/twaddies' do
  Tweet.create(user_id: params[:session[user_id]], content: params[:message]) #user_id is not real yet
end
# get a specific instance of twaddies
# get '/twaddies/:id' do
# end
# get a form to edit a specific instance of twaddies
# get '/twaddies/:id/edit' do
# end
# edit a specific instance of twaddies
# put '/twaddies/:id' do
# end
# delete a specific instance of twaddies
# delete '/twaddies/:id' do
# end
