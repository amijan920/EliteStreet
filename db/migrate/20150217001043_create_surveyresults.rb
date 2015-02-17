class CreateSurveyresults < ActiveRecord::Migration
  def change
    create_table :surveyresults do |t|
      t.integer :age
      t.boolean :enrolled
      t.integer :allowance
      t.integer :salary
      t.boolean :freq_1
      t.boolean :freq_2
      t.boolean :freq_3
      t.boolean :freq_4
      t.boolean :freq_5
      t.boolean :freq_6
      t.boolean :place_1
      t.boolean :place_2
      t.boolean :place_3
      t.boolean :place_4
      t.boolean :place_5
      t.boolean :place_6
      t.boolean :place_7
      t.boolean :place_8
      t.integer :much_1
      t.boolean :flavor_1
      t.boolean :flavor_2
      t.boolean :flavor_2
      t.integer :willingness
      t.integer :much_2
      t.integer :qual_1
      t.integer :qual_2
      t.integer :qual_3
      t.integer :qual_4
      t.integer :qual_5
      t.integer :qual_6

      t.timestamps
    end
  end
end
