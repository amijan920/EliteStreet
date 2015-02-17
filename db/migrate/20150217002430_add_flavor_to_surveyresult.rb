class AddFlavorToSurveyresult < ActiveRecord::Migration
  def change
    add_column :surveyresults, :flavor_3, :integer
  end
end
