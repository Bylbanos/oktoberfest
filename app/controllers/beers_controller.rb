class BeersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:beer_table, :gallery, :contact_us]

  # before_action :authenticate_user!
  before_action :set_beer, only: %i[show edit update destroy]


  def index
    @beers = Beer.all
  end

  def contact_us; end

  def gallery;
  end

  def beer_table
    @beers = Beer.all
  end

  def show; end

  def new
    @beer = Beer.new
  end

  def edit; end

  def create
    @beer = Beer.new(beer_params)

    respond_to do |format|
      if @beer.save
        format.html { redirect_to @beer, notice: 'Beer was successfully created.' }
        format.json { render :show, status: :created, location: @beer }
      else
        format.html { render :new }
        format.json { render json: @beer.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @beer.update(beer_params)
        format.html { redirect_to @beer, notice: 'Beer was successfully updated.' }
        format.json { render :show, status: :ok, location: @beer }
      else
        format.html { render :edit }
        format.json { render json: @beer.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @beer.destroy
    respond_to do |format|
      format.html { redirect_to beers_url, notice: 'Beer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_beer
    @beer = Beer.find(params[:id])
  end



  def beer_params
    params.require(:beer).permit(:title, :description, :price, :opened)
  end
end
