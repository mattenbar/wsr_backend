class AddColumnTopicToPointcp < ActiveRecord::Migration[6.0]
  def change
    add_column :pointcps, :topic, :string
    add_column :pointcps, :end_date, :date
  end
end
