class CreateShowads < ActiveRecord::Migration[6.0]
  def change
    create_table :showads do |t|
      t.string :name
      t.belongs_to :ad, foreign_key: true

      t.timestamps
    end
  end
end
