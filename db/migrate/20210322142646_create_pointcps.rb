class CreatePointcps < ActiveRecord::Migration[6.0]
  def change
    create_table :pointcps do |t|
      t.string :titleOne
      t.string :authorOne
      t.text :contentOne
      t.string :imageOne

      t.string :titleTwo
      t.string :authorTwo
      t.text :contentTwo
      t.string :imageTwo

      t.timestamps
    end
  end
end
