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
		@page = 'dashboard'
	end

	def viewFinancialAnalysis
		@page = 'financial'
	end

	def viewDecisionSupport
		@page = 'decision'
	end

end
