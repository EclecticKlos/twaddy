def create_tweets(num_tweets=10)
  num_tweets.times do
    Tweet.create(user_id:[*1..9].sample, content:(Faker::Hacker.ingverb + " " + Faker::App.name))
  end
end

def create_users(num_users=9)
  num_users.times do
    User.create(username: Faker::App.author)
  end
end
