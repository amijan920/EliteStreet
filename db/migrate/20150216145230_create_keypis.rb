class CreateKeypis < ActiveRecord::Migration
  def change
    create_table :keypis do |t|
      t.references :Perspective, index: true
      t.references :Department, index: true
      t.text :measure
      t.string :good
      t.string :warning
      t.string :bad
      t.decimal :value
      t.decimal :good_d
      t.decimal :warning_d
      t.decimal :bad_d
      t.integer :good_m
      t.integer :warning_m
      t.integer :bad_m

      t.timestamps
    end
  end
end
