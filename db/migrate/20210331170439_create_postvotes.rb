class CreatePostvotes < ActiveRecord::Migration[6.0]
  def change
    create_table :postvotes do |t|

      t.integer :like, :default => 0
      t.integer :dislike, :default => 0
      t.references :user
      t.references :post

      t.timestamps
    end
  end
end
