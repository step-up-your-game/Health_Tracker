class StepsController < ApplicationController
  before_action :set_step, only: [:edit, :update, :destroy]
  def index
    @steps = Step.all
  end

  def show
    @steps = Step.find(params[:id])
  end

  def new
    @steps = Step.new
  end

  def edit
  end

  def create
    @steps = Step.new(step_params)

    respond_to do |format|
      if @steps.save
        format.html { redirect_to steps_url, notice: 'Steps were successfully created.' }
        format.json { render :index, status: :created, location: @steps }
      else
        format.html { render :new }
        format.json { render json: @steps.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @steps.update(step_params)
        format.html { redirect_to steps_url, notice: 'Exercise was successfully updated.' }
        format.json { render :index, status: :ok, location: @steps }
      else
        format.html { render :edit }
        format.json { render json: @steps.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @steps.destroy
    respond_to do |format|
      format.html { redirect_to steps_url, notice: 'Step was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def set_step
    @steps = Step.find(params[:id])
  end

  def step_params
    params.require(:step).permit(:number)
  end
end
