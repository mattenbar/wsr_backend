class AddYoutubeToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :youtube, :string
  end
end
