class CreateVariants < ActiveRecord::Migration
  def change
    create_table :variants do |t|
      t.string :color
      t.string :size
      t.integer :product_id

      t.timestamps
    end
  end
end
