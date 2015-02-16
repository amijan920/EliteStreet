class AddNameToInitiatives < ActiveRecord::Migration
  def change
    add_column :initiatives, :name, :string
  end
end
