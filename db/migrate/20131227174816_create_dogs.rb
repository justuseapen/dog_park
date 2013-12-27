class CreateDogs < ActiveRecord::Migration
  def up
    create_table :dogs do |t|
    	t.string :name, null: false

      t.timestamps
    end
  end
  def down
  	drop_table :dogs
  end
end
