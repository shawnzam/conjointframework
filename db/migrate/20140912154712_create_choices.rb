class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.references :choice_row, index: true
      t.integer :display_order

      t.timestamps
    end
  end
end
