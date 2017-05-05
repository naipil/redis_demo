class CategoriesController < ApplicationController
	include CategoriesHelper
	
	def index
		fetch_categories
	end
end
