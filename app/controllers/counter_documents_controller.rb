class CounterDocumentsController < ApplicationController
  before_action :set_counter_document, only: [:show, :edit, :update, :destroy]

  # GET /counter_documents
  # GET /counter_documents.json
  def index
    @counter_documents = CounterDocument.all
  end

  # GET /counter_documents/1
  # GET /counter_documents/1.json
  def show
  end

  # GET /counter_documents/new
  def new
    @counter_document = CounterDocument.new
  end

  # GET /counter_documents/1/edit
  def edit
  end

  # POST /counter_documents
  # POST /counter_documents.json
  def create
    @counter_document = CounterDocument.new(counter_document_params)

    respond_to do |format|
      if @counter_document.save
        format.html { redirect_to @counter_document, notice: 'Counter document was successfully created.' }
        format.json
      else
        format.html { render :new }
        format.json
      end
    end
  end

  # PATCH/PUT /counter_documents/1
  # PATCH/PUT /counter_documents/1.json
  def update
    respond_to do |format|
      if @counter_document.update(counter_document_params)
        format.html { redirect_to @counter_document, notice: 'Counter document was successfully updated.' }
        format.json { render :show, status: :ok, location: @counter_document }
      else
        format.html { render :edit }
        format.json { render json: @counter_document.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /counter_documents/1
  # DELETE /counter_documents/1.json
  def destroy
    @counter_document.destroy
    respond_to do |format|
      format.html { redirect_to counter_documents_url, notice: 'Counter document was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_counter_document
      @counter_document = CounterDocument.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def counter_document_params
      params.require(:counter_document).permit(:number, :carrier_id, :carrier_client_id)
    end
end
