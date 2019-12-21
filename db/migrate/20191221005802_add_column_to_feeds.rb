class AddColumnToFeeds < ActiveRecord::Migration[5.2]
  def change
    add_column :feeds, :isbn, :string
    add_column :feeds, :code, :text
  end
end
