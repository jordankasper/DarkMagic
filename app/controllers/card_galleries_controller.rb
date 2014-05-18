class CardGalleriesController < ApplicationController

	layout 'darkMagic'

  def index

	@sets = MtgSet.find([1, 2, 3, 22, 34])
	


  end

end