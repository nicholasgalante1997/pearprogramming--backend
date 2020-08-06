class CreateMyChallenges < ActiveRecord::Migration[6.0]
  def change
    create_table :my_challenges do |t|
      t.integer :user_id
      t.integer :challenge_id
      t.boolean :completed

      t.timestamps
    end
  end
end
