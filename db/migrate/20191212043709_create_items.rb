class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :isbn
      t.text :content
      t.references :feed, index: true, foreign_key: true

      t.timestamps
    end
  end
end
