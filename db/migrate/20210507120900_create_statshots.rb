class CreateStatshots < ActiveRecord::Migration[6.0]
    def change
        create_table :statshots do |t|
            t.text :content
            t.string :image


            t.timestamps
        end
    end
end
