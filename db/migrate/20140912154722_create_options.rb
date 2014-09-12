class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.string :name
      t.references :c_attribute, index: true
      t.integer :display_order
      t.text :description
      t.references :choice, index: true

      t.timestamps
    end
  end
end
