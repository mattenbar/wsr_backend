class AddLinkToAds < ActiveRecord::Migration[6.0]
  def change
    add_column :ads, :link, :string
  end
end
