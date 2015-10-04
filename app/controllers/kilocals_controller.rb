class KilocalsController < ApplicationController
  before_action :set_kilocals, only: [:show, :edit, :update, :destroy]
  def index
    @kilocals = Kilocal.all
  end
  def show
    @kilocals = Kilocal.find(params[:id])
  end

  def new
    @kilocals = Kilocal.new
  end

  def edit
  end

  def create
    @kilocals = Kilocal.new(kilocal_params)

    respond_to do |format|
      if @kilocals.save
        format.html { redirect_to kilocals_url, notice: 'Cals were successfully recorded.' }
        format.json { render :index, status: :created, location: @kilocals}
      else
        format.html { render :new }
        format.json { render json: @kilocals.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @kilocals.update(kilocal_params)
        format.html { redirect_to kilocals_url, notice: 'Cals were successfully updated.' }
        format.json { render :index, status: :ok, location: @kilocals }
      else
        format.html { render :edit }
        format.json { render json: @kilocals.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @kilocals.destroy
    respond_to do |format|
      format.html { redirect_to kilocals_url, notice: 'Cals were successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def set_kilocals
    @kilocals = Kilocal.find(params[:id])
  end

  def kilocal_params
    params.require(:kilocal).permit(:number)
  end
end
