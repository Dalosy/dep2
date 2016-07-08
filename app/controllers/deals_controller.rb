class DealsController < ApplicationController
	before_action :authenticate_user!

  	def edit
    	@deal = Deal.find(params[:id])    	
  	end	

	def destroy
  		@deals = Deal.find(params[:id])
    	@deals.destroy    
  	end

  def new_event_type_but
      @deals = Deal.find(params[:id]) 
      @eventtype = EventType.find_by(event_type_params)  
      case @eventtype.id
      when 1
          render 'new_event_1', layout:false
      when 2
          render 'new_event_2', layout:false        
      when 3
          render 'new_event_3', layout:false             
      else
          render 'edit'
      end   
  end

  def new_event_but            
      @event = Event.new(event_params) 
      if @event.save
          render layout:false
      else
          render 'edit'
      end   
  end  	
end


private
  def event_type_params    
    params.require(:eventtype).permit(:id)
  end

  def event_card_params    
    params.require(:event).permit(:deal_id)
  end

  def event_params    
    params.require(:event).permit(:card_id, :deal_id, :event_type_id, :event_sum, :event_date)
  end