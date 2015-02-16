class PageController < ApplicationController

	def index
		@page = 'about'
	end

	def viewStrategies
		@page = 'strategies'
	end

	def viewKeyIndicators
		@page = 'key'

		require 'csv'
		# @file_name = File.join(Rails.root, 'app', 'assets/data', 'kpi-marketing_and_sales.csv');
		# @ms = CSV.read(@file_name, :headers => true).map do |row|
		#   { "Perspective" => row[0], "Measure" => row[1], "Initiatives" => row[2], "Good" => row[3], "Warning" => row[4], "Bad" => row[5]  }
		# end
		
		# @file_name = File.join(Rails.root, 'app', 'assets/data', 'kpi-product_development.csv');
		# @pd = CSV.read(@file_name, :headers => true).map do |row|
		#   { "Perspective" => row[0], "Measure" => row[1], "Initiatives" => row[2], "Good" => row[3], "Warning" => row[4], "Bad" => row[5]  }
		# end

		# @file_name = File.join(Rails.root, 'app', 'assets/data', 'kpi-production_and_delivery.csv');
		# @prd = CSV.read(@file_name, :headers => true).map do |row|
		#   { "Perspective" => row[0], "Measure" => row[1], "Initiatives" => row[2], "Good" => row[3], "Warning" => row[4], "Bad" => row[5]  }
		# end

		# @file_name = File.join(Rails.root, 'app', 'assets/data', 'kpi-externals_and_purchasing.csv');
		# @ext = CSV.read(@file_name, :headers => true).map do |row|
		#   { "Perspective" => row[0], "Measure" => row[1], "Initiatives" => row[2], "Good" => row[3], "Warning" => row[4], "Bad" => row[5]  }
		# end

		# @file_name = File.join(Rails.root, 'app', 'assets/data', 'kpi-finance.csv');
		# @fin = CSV.read(@file_name, :headers => true).map do |row|
		#   { "Perspective" => row[0], "Measure" => row[1], "Initiatives" => row[2], "Good" => row[3], "Warning" => row[4], "Bad" => row[5]  }
		# end

		# @file_name = File.join(Rails.root, 'app', 'assets/data', 'kpi-human_resources.csv');
		# @hr = CSV.read(@file_name, :headers => true).map do |row|
		#   { "Perspective" => row[0], "Measure" => row[1], "Initiatives" => row[2], "Good" => row[3], "Warning" => row[4], "Bad" => row[5]  }
		# end

		@file_name = File.join(Rails.root, 'app', 'assets/data', 'kpi-financials.csv');
		@fin = CSV.read(@file_name, :headers => true).map do |row|
		  { "Perspective" => row[0], "Measure" => row[1], "Initiatives" => row[2], "Good" => row[3], "Warning" => row[4], "Bad" => row[5]  }
		end

		@file_name = File.join(Rails.root, 'app', 'assets/data', 'kpi-internal_operations.csv');
		@int = CSV.read(@file_name, :headers => true).map do |row|
		  { "Perspective" => row[0], "Measure" => row[1], "Initiatives" => row[2], "Good" => row[3], "Warning" => row[4], "Bad" => row[5]  }
		end

		@file_name = File.join(Rails.root, 'app', 'assets/data', 'kpi-customer.csv');
		@cus = CSV.read(@file_name, :headers => true).map do |row|
		  { "Perspective" => row[0], "Measure" => row[1], "Initiatives" => row[2], "Good" => row[3], "Warning" => row[4], "Bad" => row[5]  }
		end

		@file_name = File.join(Rails.root, 'app', 'assets/data', 'kpi-employee_growth.csv');
		@emp = CSV.read(@file_name, :headers => true).map do |row|
		  { "Perspective" => row[0], "Measure" => row[1], "Initiatives" => row[2], "Good" => row[3], "Warning" => row[4], "Bad" => row[5]  }
		end

		# @kpis = 
		# 	[ {"dept" => "Marketing and Sales Department", "kpis" => @ms }, 
		# 		{"dept" => "Product Development Department", "kpis" => @pd },
		# 		{"dept" => "Production and Delivery Department", "kpis" => @prd },
		# 		{"dept" => "Externals and Purchasing Department", "kpis" => @ext },
		# 		{"dept" => "Finance Department", "kpis" => @fin },
		# 		{"dept" => "Human Resources Department", "kpis" => @hr } ];

		@kpis = 
			[ {"dept" => "Financial Perspective", "kpis" => @fin }, 
				{"dept" => "Internal Business Processes Perspective", "kpis" => @int },
				{"dept" => "Customer Perspective", "kpis" => @cus },
				{"dept" => "Employee Growth Perspective", "kpis" => @emp } ];
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
