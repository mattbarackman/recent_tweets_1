class CreateUsers < ActiveRecord::Migration
  def change

    create_table :users do |t|
      t.string     :username
      t.integer    :stale_threshold
    end
  end
end
