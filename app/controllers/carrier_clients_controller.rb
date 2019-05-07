class CarrierClientsController < ApplicationController
  before_action :set_carrier_client, only: [:show, :edit, :update, :destroy]

  # GET /carrier_clients
  # GET /carrier_clients.json
  def index
    @carrier_clients = CarrierClient.all
  end

  # GET /carrier_clients/1
  # GET /carrier_clients/1.json
  def show
  end

  # GET /carrier_clients/new
  def new
    @carrier_client = CarrierClient.new
  end

  # GET /carrier_clients/1/edit
  def edit
  end

  # POST /carrier_clients
  # POST /carrier_clients.json
  def create
    @carrier_client = CarrierClient.new(carrier_client_params)

    respond_to do |format|
      if @carrier_client.save
        format.html { redirect_to @carrier_client, notice: 'Carrier client was successfully created.' }
        format.json { render :show, status: :created, location: @carrier_client }
      else
        format.html { render :new }
        format.json { render json: @carrier_client.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carrier_clients/1
  # PATCH/PUT /carrier_clients/1.json
  def update
    respond_to do |format|
      if @carrier_client.update(carrier_client_params)
        format.html { redirect_to @carrier_client, notice: 'Carrier client was successfully updated.' }
        format.json { render :show, status: :ok, location: @carrier_client }
      else
        format.html { render :edit }
        format.json { render json: @carrier_client.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carrier_clients/1
  # DELETE /carrier_clients/1.json
  def destroy
    @carrier_client.destroy
    respond_to do |format|
      format.html { redirect_to carrier_clients_url, notice: 'Carrier client was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carrier_client
      @carrier_client = CarrierClient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def carrier_client_params
      params.require(:carrier_client).permit(:name)
    end
end
