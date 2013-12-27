class CreateCustodies < ActiveRecord::Migration
  def up
    create_table :custodies do |t|
      t.integer :dog_id
      t.integer :owner_id

      t.timestamps
    end
  end
  def down
  	drop_table :custodies
  end
end
