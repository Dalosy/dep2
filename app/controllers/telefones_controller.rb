class TelefonesController < ApplicationController
  def destroy
  	@telefones = Telefone.find(params[:id])  	
    @telelefones.destroy    
  end
 
end
