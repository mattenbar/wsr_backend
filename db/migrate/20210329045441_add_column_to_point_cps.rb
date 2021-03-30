class AddColumnToPointCps < ActiveRecord::Migration[6.0]
  def change
    add_column :pointcps, :votesPointCPOne, :integer, :default => 0
    add_column :pointcps, :votesPointCPTwo, :integer, :default => 0
  end
end
