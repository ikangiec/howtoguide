class CreateHowtolists < ActiveRecord::Migration
  def change
    create_table :howtolists do |t|
      t.string :title
      t.text :content
      t.integer :product_id

      t.timestamps
    end
  end
end
