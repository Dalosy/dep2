class FacesController < ApplicationController
  def destroy
  	@faces = Face.find(params[:id])
    @faces.destroy   
  end
end
