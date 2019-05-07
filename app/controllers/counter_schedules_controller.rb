class CounterSchedulesController < ApplicationController
  before_action :set_counter_schedule, only: [:show, :edit, :update, :destroy]

  # GET /counter_schedules
  # GET /counter_schedules.json
  def index
    @counter_schedules = CounterSchedule.all
  end

  # GET /counter_schedules/1
  # GET /counter_schedules/1.json
  def show
  end

  # GET /counter_schedules/new
  def new
    @counter_schedule = CounterSchedule.new
  end

  # GET /counter_schedules/1/edit
  def edit
  end

  # POST /counter_schedules
  # POST /counter_schedules.json
  def create
    @counter_schedule = CounterSchedule.new(counter_schedule_params)

    respond_to do |format|
      if @counter_schedule.save
        format.html { redirect_to @counter_schedule, notice: 'Counter schedule was successfully created.' }
        format.json { render :show, status: :created, location: @counter_schedule }
      else
        format.html { render :new }
        format.json { render json: @counter_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /counter_schedules/1
  # PATCH/PUT /counter_schedules/1.json
  def update
    respond_to do |format|
      if @counter_schedule.update(counter_schedule_params)
        format.html { redirect_to @counter_schedule, notice: 'Counter schedule was successfully updated.' }
        format.json { render :show, status: :ok, location: @counter_schedule }
      else
        format.html { render :edit }
        format.json { render json: @counter_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /counter_schedules/1
  # DELETE /counter_schedules/1.json
  def destroy
    @counter_schedule.destroy
    respond_to do |format|
      format.html { redirect_to counter_schedules_url, notice: 'Counter schedule was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_counter_schedule
      @counter_schedule = CounterSchedule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def counter_schedule_params
      params.require(:counter_schedule).permit(:date, :hour, :branch_id)
    end
end
