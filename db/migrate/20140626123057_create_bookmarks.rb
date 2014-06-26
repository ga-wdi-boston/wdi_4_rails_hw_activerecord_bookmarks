class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.text :url
      t.text :title, null: false
      t.text :comment
      t.text :category
      t.boolean :is_favorite, default: false
    end
  end
end

=begin
a URL (required, must start with "http")
a title (required)
a comment (optional)
a category (optional, select from "Serious", "Funny", or "Useful")
a checkbox that indicates this is a "favorite" bookmark
=end
