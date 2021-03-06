class ItemsController < ApplicationController
  before_action :all_items, only: [:list, :create, :update, :destroy]
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  # GET /items
  # GET /items.json
  def index
  end

  # GET /items/1
  # GET /items/1.json
  def show
  end

  def list
  end

  def calendar
  end

  def dashboard
  end

  # GET /items/new
  def new
    @item = Item.new
  end

  # GET /items/1/edit
  def edit
  end

  # POST /items
  # POST /items.json
  def create
    @item = Item.create(item_params)
  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
    @item.update(item_params)
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    @item.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    def all_items
      @items = Item.all
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:description, :deadline)
    end
end
