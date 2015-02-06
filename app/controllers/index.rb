enable :sessions

get "/" do
#unless logged in, redirects to login page
  redirect "/twaddies"
end

get '/login' do
  erb :login
end

post '/login' do
  user = User.find_by(email: params[:email])
  if user.authenticate(params[:password])
    session[:user_id] = user.id
    redirect '/users'
  else
    redirect '/login'
    erb :login
  end
end
