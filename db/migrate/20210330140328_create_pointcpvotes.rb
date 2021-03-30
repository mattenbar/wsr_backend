class CreatePointcpvotes < ActiveRecord::Migration[6.0]
  def change
    create_table :pointcpvotes do |t|
      t.integer :articleOneVote, :default => 0
      t.integer :articleTwoVote, :default => 0
      t.references :user
      t.references :pointcp

      t.timestamps
    end
  end
end
