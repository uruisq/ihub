class CreateFeeds < ActiveRecord::Migration[5.2]
  def change
    create_table :feeds do |t|
      t.string :title, null: false
      t.text :content, null: false
      t.references :user, index: true, foreign_key: true

      t.timestamps
    end
  end
end
