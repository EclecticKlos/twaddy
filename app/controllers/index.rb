enable :sessions

get "/" do
#unless logged in, redirects to login page
  redirect "/twaddies"
end
