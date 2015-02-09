class AnimalsController < ApplicationController
  def index
  end

def new
  @animal = Animal.new
end
end
