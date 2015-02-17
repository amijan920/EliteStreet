class PageController < ApplicationController

	def index
		@page = 'about'
	end

	def viewStrategies
		@page = 'strategies'
	end

	def viewKeyIndicators
		@page = 'key'

		@perspectives = Perspective.all();
		@kpiList = Array.new(@perspectives.length)
		@departments = Array.new(@perspectives.length)
		@initiatives = Array.new(@perspectives.length)

		@perspectives.each_with_index do |pers, i|
			@kpiList[i] = Keypi.where(Perspective_id: pers.id)
			@initiatives[i] = Array.new(@kpiList[i].length)
			@departments[i] = Array.new(@kpiList[i].length)

			@kpiList[i].each_with_index do |kp, j|
				@initiatives[i][j] = Initiatives.where(Keypi_id: kp.id)
				@departments[i][j] = Department.find(kp.Department_id)
			end
		end

	end

	def viewDashboard
		@survey_results = Surveyresult.all()
		@flavors = Array.new(3);

		@flavors.each_with_index do |d, i|
			@flavors[i] = {"name" => "", "quantity" => 0}
		end

		@flavors[0]["name"] = "Shiitake Mushroom"
		@flavors[1]["name"] = "Caramelized Onions"
		@flavors[2]["name"] = "Flavor Powders"

		@survey_results.each do |survey|
			if survey.flavor_1
				@flavors[0]["quantity"] = @flavors[0]["quantity"] + 1
			end
			if survey.flavor_2
				@flavors[1]["quantity"] = @flavors[1]["quantity"] + 1
			end
			if survey.flavor_3
				@flavors[2]["quantity"] = @flavors[2]["quantity"] + 1
			end
		end

		@allowances = Array.new(5);
		@allowances.each_with_index do |d, i|
			@allowances[i] = {"name" => "", "quantity" => 0}
		end

		@allowances[0]["name"] = "less than P4,500"
		@allowances[1]["name"] = "P4,500 to P6,000"
		@allowances[2]["name"] = "P6,001 to P7,500"
		@allowances[3]["name"] = "P7,501 to P9,000"
		@allowances[4]["name"] = "more than P9000"

		@survey_results.each do |survey|
			@allowances[survey.allowance]["quantity"] += 1
		end

		@places = Array.new(8)
		@places.each_with_index do |d, i|
			@places[i] = {"name" => "", "quantity" => 0}
		end

		@places[0]["name"] = "Strt. Vendors"
		@places[1]["name"] = "Tiangges"
		@places[2]["name"] = "Parks"
		@places[3]["name"] = "Supermarket"
		@places[4]["name"] = "Mallstalls"
		@places[5]["name"] = "JSEC"
		@places[6]["name"] = "Schools"
		@places[7]["name"] = "UP"

		@survey_results.each do |survey|
			if survey.place_1
				@places[0]["quantity"] = @places[0]["quantity"] + 1
			end
			if survey.place_2
				@places[1]["quantity"] = @places[1]["quantity"] + 1
			end
			if survey.place_3
				@places[2]["quantity"] = @places[2]["quantity"] + 1
			end
			if survey.place_4
				@places[3]["quantity"] = @places[3]["quantity"] + 1
			end
			if survey.place_5
				@places[4]["quantity"] = @places[4]["quantity"] + 1
			end
			if survey.place_6
				@places[5]["quantity"] = @places[5]["quantity"] + 1
			end
			if survey.place_7
				@places[6]["quantity"] = @places[6]["quantity"] + 1
			end
			if survey.place_8
				@places[7]["quantity"] = @places[7]["quantity"] + 1
			end
		end

		@willingness = Array.new(4)
		@willingness.each_with_index do |d, i|
			@willingness[i] = {"name" => "", "quantity" => 0}
		end

		@willingness[0]["name"] = "Not very"
		@willingness[1]["name"] = "So-so"
		@willingness[2]["name"] = "Willing"
		@willingness[3]["name"] = "Very willing"

		@survey_results.each do |survey|
			@willingness[survey.willingness]["quantity"] += 1
		end

		@willingness_to_pay = Array.new(11)
		@willingness_to_pay.each_with_index do |d, i|
			@willingness_to_pay[i] = {"name" => "", "quantity" => 0}
		end

		@willingness_to_pay[0]["name"] = "less than P10"
		@willingness_to_pay[1]["name"] = "P11 to P20"
		@willingness_to_pay[2]["name"] = "P21 to P30"
		@willingness_to_pay[3]["name"] = "P31 to P40"
		@willingness_to_pay[4]["name"] = "P41 to P50"
		@willingness_to_pay[5]["name"] = "P51 to P60"
		@willingness_to_pay[6]["name"] = "P61 to P70"
		@willingness_to_pay[7]["name"] = "P71 to P80"
		@willingness_to_pay[8]["name"] = "P81 to P90"
		@willingness_to_pay[9]["name"] = "P91 to P100"
		@willingness_to_pay[10]["name"] = "more than P100"

		@survey_results.each do |survey|
			@willingness_to_pay[survey.much_2]["quantity"] += 1
		end

		@cleanliness = Array.new(4)
		@cleanliness.each_with_index do |d, i|
			@cleanliness[i] = {"name" => "", "quantity" => 0}
		end

		@cleanliness[0]["name"] = "Not that important"
		@cleanliness[1]["name"] = "A little important"
		@cleanliness[2]["name"] = "Quite important"
		@cleanliness[3]["name"] = "Extremely important"

		@survey_results.each do |survey|
			@cleanliness[survey.qual_3]["quantity"] += 1
		end

		@page = 'dashboard'
	end

	def viewFinancialAnalysis
		@page = 'financial'
	end

	def viewDecisionSupport
		@page = 'decision'
	end

end
