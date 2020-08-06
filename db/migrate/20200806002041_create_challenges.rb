class CreateChallenges < ActiveRecord::Migration[6.0]
  def change
    create_table :challenges do |t|
      t.string :topic
      t.string :difficulty
      t.string :git_link
      t.string :synopsis
      t.string :title
      t.string :contributor

      t.timestamps
    end
  end
end
