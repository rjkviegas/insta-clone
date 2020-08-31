class AddNotNullToPostImageColumn < ActiveRecord::Migration[6.0]
    change_column_null(:posts, :image, false) 
end
