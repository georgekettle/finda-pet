class PetsController < ApplicationController
  before_action :set_pet, only: [:show, :edit, :update]
  
  def index
    @pets = Pet.all
  end

  def show
  end

  def edit
  end

  def update
    if @pet.update(pet_params)
      redirect_to pets_path
    else
      render :edit
    end
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    if @pet.save
      redirect_to pet_path(@pet)
    else
      render :new
    end
  end

  private

  def pet_params
    params.require(:pet).permit(:found_on, :name, :species, :image)
  end

  def set_pet
    # id = params[:id]
    @pet = Pet.find(params[:id])
  end
end
