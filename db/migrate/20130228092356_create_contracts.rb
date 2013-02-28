class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.string :name
      t.string :address
      t.date :contractendon
      t.float :longitude
      t.float :latitude
      t.boolean :gmaps
      t.string :fences
      t.references :user

      t.timestamps
    end
    add_index :contracts, :user_id
    
  end
end
