class AnimalsController < ApplicationController
  def index
    @animal = Animal.all
  end

  def create
    @animal = Animal.new
    if @animal.save
      redirect_to animals_path
    else
      render :new
    end
  end

  def new
    @animal = Animal.new
  end
end

private

def Animal_params
  params.require(:animal).permit(:breed, :weight, :color)
end
