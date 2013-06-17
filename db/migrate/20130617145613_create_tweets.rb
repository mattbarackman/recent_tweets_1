class CreateTweets < ActiveRecord::Migration
  def change

    create_table :tweets do |t|
      t.string     :text
      t.date       :date_tweeted_on
      t.references :user
      t.timestamps
    end
  end
end
