class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.integer     :user_id
      t.string      :content    #<<<<Best var name??

      t.timestamps
    end
  end
end
