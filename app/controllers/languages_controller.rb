class LanguagesController < ApplicationController
	include LanguagesHelper

	def index
		fetch_languages
	end
end
