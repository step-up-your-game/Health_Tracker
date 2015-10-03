class StepsController < ApplicationController
  before_action :set_step, only: [:show, :edit, :update, :destroy]
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
        format.html { redirect_to @steps, notice: 'Steps were successfully created.' }
        format.json { render :show, status: :created, location: @steps }
      else
        format.html { render :new }
        format.json { render json: @steps.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @steps.update(step_params)
        format.html { redirect_to @steps, notice: 'Exercise was successfully updated.' }
        format.json { render :show, status: :ok, location: @steps }
      else
        format.html { render :edit }
        format.json { render json: @steps.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  def set_step
    @steps = Step.find(params[:id])
  end

  def step_params
    params.require(:step).permit(:steps)
  end
end
