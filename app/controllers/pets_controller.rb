class PetsController < ApplicationController
  before_action :set_pet, only: [:show, :edit, :update, :destroy]

  def index
    @pets = Pet.all
  end

  def show
    # set_pet
  end

  def new
    # provides the instance to build the form
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    # raise
    if @pet.save
      redirect_to pets_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    # retrieve
    # update
    if @pet.update(pet_params)
      redirect_to pet_path(@pet)
    else
      render :edit, status: :unprocessable_entity
    end
    # redirect
  end

  def destroy
    # @pet = Pet.find(params[:id]) # set_pet
    @pet.destroy
    redirect_to pets_path, status: :see_other
  end

  private

  def set_pet
    @pet = Pet.find(params[:id])
  end

  # allow list approach
  def pet_params
    params.require(:pet).permit(:name, :species, :address, :date)
  end
end
