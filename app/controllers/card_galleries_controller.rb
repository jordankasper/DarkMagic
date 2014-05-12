class CardGalleriesController < ApplicationController
	layout 'darkMagic'


	def index

		@sets = MtgSet.all

		set = MtgSet.find_by_name('Worldwake')
		@setName = set.name
		@cardsInSet = set.cards

	end
	
end
