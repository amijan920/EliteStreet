class CreatePerspectives < ActiveRecord::Migration
  def change
    create_table :perspectives do |t|
      t.string :name

      t.timestamps
    end
  end
end
