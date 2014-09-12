class CreateChoiceSets < ActiveRecord::Migration
  def change
    create_table :choice_sets do |t|
      t.string :name

      t.timestamps
    end
  end
end
