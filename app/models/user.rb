class User < ActiveRecord::Base
  has_many :follower_relationships, class_name: 'Relationship', foreign_key: "followee_id", source: :relationships
  has_many :followers, through: :follower_relationships

  has_many :followee_relationships, class_name: 'Relationship', foreign_key: "follower_id", source: :relationships
  has_many :followees, through: :followee_relationships

  # has_many :followees, through: :relationships


  has_many :tweets
end
