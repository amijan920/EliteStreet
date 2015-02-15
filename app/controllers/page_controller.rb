class PageController < ApplicationController

	def index
		@page = 'about'
	end

	def viewStrategies
		@page = 'strategies'
	end

	def viewKeyIndicators
		@page = 'key'
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
