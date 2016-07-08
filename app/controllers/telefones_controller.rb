class TelefonesController < ApplicationController
  def destroy
  	@telefones = Telefone.find(params[:id])  	
    @telefones.destroy    
  end
 
end
