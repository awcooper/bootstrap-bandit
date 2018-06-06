class CreateEdditPosts < ActiveRecord::Migration[5.1]
  def change
    create_table :eddit_posts do |t|
      t.integer :score
      t.string :username
      t.string :subeddit
      t.string :title
      t.timestamp :timestamp
      t.integer :num_comments

      t.timestamps
    end
  end
end
