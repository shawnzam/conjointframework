class CreateCAttributes < ActiveRecord::Migration
  def change
    create_table :c_attributes do |t|
      t.integer :display_order
      t.references :choice_set, index: true
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
