class CounterServiceTypesController < ApplicationController
  before_action :set_counter_service_type, only: [:show, :edit, :update, :destroy]

  # GET /counter_service_types
  # GET /counter_service_types.json
  def index
    @counter_service_types = CounterServiceType.all
  end

  # GET /counter_service_types/1
  # GET /counter_service_types/1.json
  def show
  end

  # GET /counter_service_types/new
  def new
    @counter_service_type = CounterServiceType.new
  end

  # GET /counter_service_types/1/edit
  def edit
  end

  # POST /counter_service_types
  # POST /counter_service_types.json
  def create
    @counter_service_type = CounterServiceType.new(counter_service_type_params)

    respond_to do |format|
      if @counter_service_type.save
        format.html { redirect_to @counter_service_type, notice: 'Counter service type was successfully created.' }
        format.json { render :show, status: :created, location: @counter_service_type }
      else
        format.html { render :new }
        format.json { render json: @counter_service_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /counter_service_types/1
  # PATCH/PUT /counter_service_types/1.json
  def update
    respond_to do |format|
      if @counter_service_type.update(counter_service_type_params)
        format.html { redirect_to @counter_service_type, notice: 'Counter service type was successfully updated.' }
        format.json { render :show, status: :ok, location: @counter_service_type }
      else
        format.html { render :edit }
        format.json { render json: @counter_service_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /counter_service_types/1
  # DELETE /counter_service_types/1.json
  def destroy
    @counter_service_type.destroy
    respond_to do |format|
      format.html { redirect_to counter_service_types_url, notice: 'Counter service type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_counter_service_type
      @counter_service_type = CounterServiceType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def counter_service_type_params
      params.require(:counter_service_type).permit(:name)
    end
end
