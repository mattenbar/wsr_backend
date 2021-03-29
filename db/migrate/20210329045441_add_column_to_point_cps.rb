class AddColumnToPointCps < ActiveRecord::Migration[6.0]
  def change
    add_column :pointcps, :votesPointCPOne, :integer
    add_column :pointcps, :votesPointCPTwo, :integer
  end
end
