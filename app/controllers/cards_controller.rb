class CardsController < ApplicationController
	before_action :authenticate_user!
  def index
  	@cards = Card.all
  end

  def new
    @card = Card.new
  end

  def create
      @card = Card.new(card_params) 
      if @card.save          
          @face = @card.faces.new(face_params) 
          @face.save
          redirect_to @card
      else
          render 'new'
      end
  end

  def import
  Card.import(params[:file])
  redirect_to root_url, notice: "Клиенты загружены."
  end
  
  def show
  	@card = Card.find(params[:id])
  end

  def edit
    @card = Card.find(params[:id])
    @telefones = @card.telefones
    @deals = @card.deals
    @faces = @card.faces
  end

  def destroy
    @cards = Card.find(params[:id])
    @cards.destroy
    redirect_to cards_path
  end
  
  def new_number_but  
      @cards = Card.find(params[:id])        
      @telefone = @cards.telefones.new(telefone_params) 
      if @telefone.save
          render layout:false
      else
          render 'edit'
      end   
  end

  def new_deal_but  
      @cards = Card.find(params[:id])        
      @deal = @cards.deals.new(deal_params) 
      if @deal.save
          render layout:false
      else
          render 'edit'
      end   
  end

  def new_face_but  
      @cards = Card.find(params[:id])        
      @face = @cards.faces.new(faces_params) 
      if @face.save
          render layout:false
      else
          render 'edit'
      end   
  end
end






private
  def card_params
    params.require(:card).permit(:client, :address)
  end

  def telefone_params
    params.require(:telefone).permit(:face_id, :number, :number_type)
  end

  def deal_params
    params.require(:deal).permit(:agreement, :summ, :deal_date, :status)
  end

  def face_params
    params = { fio: @card.client, position: "Общий"}
  end

  def faces_params
    params.require(:face).permit(:fio, :position)
  end