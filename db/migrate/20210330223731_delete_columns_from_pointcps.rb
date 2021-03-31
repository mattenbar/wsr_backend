class DeleteColumnsFromPointcps < ActiveRecord::Migration[6.0]
  def change
    remove_column :pointcps, :votesPointCPOne
    remove_column :pointcps, :votesPointCPTwo
  end
end
