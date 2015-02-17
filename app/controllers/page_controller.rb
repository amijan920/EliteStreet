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

		@places = Array.new(8);
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


		@page = 'dashboard'
	end

	def viewFinancialAnalysis
		@page = 'financial'
	end

	def viewDecisionSupport
		@page = 'decision'
	end

end
