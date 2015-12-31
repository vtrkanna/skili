class TeachingPeriodsController < ApplicationController
  before_action :set_teaching_period, only: [:show, :edit, :update, :destroy]

  # GET /teaching_periods
  # GET /teaching_periods.json
  def index
    @teaching_periods = TeachingPeriod.all
  end

  # GET /teaching_periods/1
  # GET /teaching_periods/1.json
  def show
  end

  # GET /teaching_periods/new
  def new
    @teaching_period = TeachingPeriod.new
  end

  # GET /teaching_periods/1/edit
  def edit
  end

  # POST /teaching_periods
  # POST /teaching_periods.json
  def create
    @teaching_period = TeachingPeriod.new(teaching_period_params)

    respond_to do |format|
      if @teaching_period.save
        format.html { redirect_to @teaching_period, notice: 'Teaching period was successfully created.' }
        format.json { render :show, status: :created, location: @teaching_period }
      else
        format.html { render :new }
        format.json { render json: @teaching_period.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teaching_periods/1
  # PATCH/PUT /teaching_periods/1.json
  def update
    respond_to do |format|
      if @teaching_period.update(teaching_period_params)
        format.html { redirect_to @teaching_period, notice: 'Teaching period was successfully updated.' }
        format.json { render :show, status: :ok, location: @teaching_period }
      else
        format.html { render :edit }
        format.json { render json: @teaching_period.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teaching_periods/1
  # DELETE /teaching_periods/1.json
  def destroy
    @teaching_period.destroy
    respond_to do |format|
      format.html { redirect_to teaching_periods_url, notice: 'Teaching period was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_teaching_period
    @teaching_period = TeachingPeriod.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def teaching_period_params
    params[:teaching_period]
  end
end
