class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.string :image
      t.decimal :price, :scale => 2
      t.integer :bought, :default=>0
      t.integer :status
      t.decimal :lat
      t.decimal :lng
      t.string :owner_id
      
      t.timestamps
    end
  end
end
