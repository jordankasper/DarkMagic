class CardGalleriesController < ApplicationController
	layout 'darkMagic'

	def index
		@sets = MtgSet.all
	end
	
end
