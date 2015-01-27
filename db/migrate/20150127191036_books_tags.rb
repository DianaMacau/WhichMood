class BooksTags < ActiveRecord::Migration
  def up
    create_table :books_tags, :id => false do |t|
      t.column :book_id, :integer
      t.column :tag_id, :integer
    end
    add_index :books_tags, [:book_id, :tag_id]
  end

  def down
    drop_table :books_tags
  end
end
