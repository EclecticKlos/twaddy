require 'bcrypt'

class User < ActiveRecord::Base
  has_many :follower_relationships, class_name: 'Relationship', foreign_key: "followee_id", source: :relationships
  has_many :followers, through: :follower_relationships

  has_many :followee_relationships, class_name: 'Relationship', foreign_key: "follower_id", source: :relationships
  has_many :followees, through: :followee_relationships

  # has_many :followees, through: :relationships


  has_many :tweets

  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def create
    @user = User.new(params[:user])
    @user.password = params[:password]
    @user.save!
  end

  def login
    @user = User.find_by_email(params[:email])
    if @user.password == params[:password]
      give_token
    else
      redirect_to home_url
    end
  end

  def authenticate(password)
    self.password == password
  end



end
