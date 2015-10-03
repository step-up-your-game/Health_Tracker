class KilocalsController < ApplicationController
  before_action :set_step, only: [:show, :edit, :update, :destroy]
  def index
    @cals = Kilocal.new
  end
  def show
    @cals = Kilocal.find(params[:id])
  end

  def new
    @cals = Kilocal.new
  end

  def edit
  end

  def create
    @cals = Kilocal.new(step_params)

    respond_to do |format|
      if @cals.save
        format.html { redirect_to @cals, notice: 'Steps were successfully created.' }
        format.json { render :show, status: :created, location: @cals }
      else
        format.html { render :new }
        format.json { render json: @cals.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @cals.update(step_params)
        format.html { redirect_to @cals, notice: 'Exercise was successfully updated.' }
        format.json { render :show, status: :ok, location: @cals }
      else
        format.html { render :edit }
        format.json { render json: @cals.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  def set_step
    @cal = Kilocal.find(params[:id])
  end

  def step_params
    params.require(:step).permit(:steps)
  end
end
