class CounterServicesController < ApplicationController
  before_action :set_counter_service, only: [:show, :edit, :update, :destroy]

  # GET /counter_services
  # GET /counter_services.json
  def index
    @counter_services = CounterService.all
  end

  # GET /counter_services/1
  # GET /counter_services/1.json
  def show
  end

  # GET /counter_services/new
  def new
    @counter_service = CounterService.new
    @counter_document = CounterDocument.new
  end

  # GET /counter_services/1/edit
  def edit
  end

  # POST /counter_services
  # POST /counter_services.json
  def create
    @counter_service = CounterService.new(counter_service_params)
    @counter_service.user = current_user
    @counter_service.service_status_id = 1
    respond_to do |format|
      if @counter_service.save
        format.html { redirect_to @counter_service, notice: 'Counter service was successfully created.' }
        format.json { render :show, status: :created, location: @counter_service }
      else
        format.html { render :new }
        format.json { render json: @counter_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /counter_services/1
  # PATCH/PUT /counter_services/1.json
  def update
    respond_to do |format|
      if @counter_service.update(counter_service_params)
        format.html { redirect_to @counter_service, notice: 'Counter service was successfully updated.' }
        format.json { render :show, status: :ok, location: @counter_service }
      else
        format.html { render :edit }
        format.json { render json: @counter_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /counter_services/1
  # DELETE /counter_services/1.json
  def destroy
    @counter_service.destroy
    respond_to do |format|
      format.html { redirect_to counter_services_url, notice: 'Counter service was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_counter_service
      @counter_service = CounterService.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def counter_service_params
      params.require(:counter_service).permit(:counter_service_type_id, :user_id, :counter_document_id, :counter_schedule_id, :service_status_id, :user_description)
    end
end
