class CreatePageResults < ActiveRecord::Migration[5.1]
  def change
    create_table :page_results do |t|
      t.string :title
      t.string :url
      t.string :content
      t.datetime :timestamp

      t.timestamps
    end
  end
end
