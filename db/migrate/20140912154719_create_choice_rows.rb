class CreateChoiceRows < ActiveRecord::Migration
  def change
    create_table :choice_rows do |t|
      t.references :choice_set, index: true
      t.integer :display_order

      t.timestamps
    end
  end
end
