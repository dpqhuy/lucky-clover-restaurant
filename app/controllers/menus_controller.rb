class MenusController < ApplicationController
  def index
  	@sections = Section.all
  end
end
