
def seed_tweets(num_tweets = 100)
  num_tweets.times do
    Tweet.create(user_id:[*1..5].sample, content: Faker::Hacker.say_something_smart)
  end
end

def seed_users(num_users = 5)
  num_users.times do
    User.create(password_hash: Faker::Internet.password, username: Faker::Internet.user_name, email: Faker::Internet.free_email)
  end
end
