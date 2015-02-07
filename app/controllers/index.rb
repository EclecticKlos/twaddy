enable :sessions

get "/" do
#unless logged in, redirects to login page
  redirect "/login"
end

get '/login' do
  erb :login
end

post '/login' do
  user = User.find_by(email: params[:email])
  if user.authenticate(params[:password])
    session[:user_id] = user.id
    redirect "/#{user.username}"
  else
    erb :login
  end
end


get '/register' do
  erb :registration
end


get '/:user' do
  @user = User.find(session[:user_id])

  erb :user
end

get '/:user/feed' do
  #SHOWS ALL TWEETS AND ALLOWS YOU TO FOLLOW
end

get '/:user/create_twaddy' do
  erb :create_twaddy
end

post '/create_twaddy' do
  Tweet.create(user_id: session[:user_id], content: params[:message])
  redirect "/#{User.find(session[:user_id]).username}"
end