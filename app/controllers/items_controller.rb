class ItemsController < ApplicationController
  before_action :authenticate_user!, excepte: [:index, :show]
 

  # GET /items
  def index
    @items = Item.all
  end

  # GET /items/1
  def show
  	@item = Item.find(params[:id])
     end

  # GET /items/new
  def new
    @item = current_user.items.new
  end

  # GET /items/1/edit
  def edit
  	@item = current_user.items.find(params[:id])
    
  end

  # POST /items
  def create
    @item = current_user.items.new(item_params)
   
      	if @item.save
      	redirect_to @item, notice: 'Item was successfully created'
      else
      render :new
    end
  end

  # PATCH/PUT /items/1

  def update
  	@item = current_user.items.find(params[:id])
    
    if @item.update(item_params)
     redirect_to @item, notice: 'Item was successfully updated' 
    else
      render :edit 
    end
end
 


  # DELETE /items/1
  def destroy
  	@item = current_user.items.find(params[:id])
  	@item.destroy
    
    
     redirect_to @item, notice: 'Item was successfully deleted' 
   

  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:title, :url, :text)
    end
end


