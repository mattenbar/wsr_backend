class DeleteColumnsFromPointcps < ActiveRecord::Migration[6.0]
  def change
    remove_column :pointcps, :votesPointCPOne, :integer
    remove_column :pointcps, :votesPointCPTwo, :integer
  end
end
