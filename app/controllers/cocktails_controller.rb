class CocktailsController < ApplicationController
before_action :cocktail_find, only: [:show, :edit, :update, :destroy ]
  def index
  @cocktails = Cocktail.all
  end

  def show
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
     if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

    def edit
      @cocktail.update(cocktail_params)
    end

    def destroy
      @Cocktail.destroy
      redirect_to cocktails_path
    end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end

  def cocktail_find
  @cocktail = Cocktail.find(params[:id])
  end
end
