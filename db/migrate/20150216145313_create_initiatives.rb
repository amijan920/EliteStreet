class CreateInitiatives < ActiveRecord::Migration
  def change
    create_table :initiatives do |t|
      t.references :Keypi, index: true
      t.decimal :operating_cost
      t.decimal :capital_cost

      t.timestamps
    end
  end
end
