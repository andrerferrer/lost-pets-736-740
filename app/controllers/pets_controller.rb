class PetsController < ApplicationController
  before_action :set_pet, only: %i[ show edit update destroy ]

  def index
    @pets = Pet.all
  end

  def show; end

  def new
    @pet = Pet.new # form_for helper
  end

  def create
    @pet = Pet.new(strong_params)
    if @pet.save
      redirect_to pet_path(@pet.id)
    else
      render :new
    end
  end

  def edit; end

  def update
    if @pet.update(strong_params)
      redirect_to pet_path(@pet.id)
    else
      render :edit
    end
  end

  def destroy
    @pet.destroy
    redirect_to root_path
  end

  private

  def set_pet
    @pet = Pet.find(params[:id])
  end

  def strong_params
    params.require(:pet).permit(
      :name,
      :species,
      :address,
      :contact
    )
  end
end
