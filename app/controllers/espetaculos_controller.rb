class EspetaculosController < ApplicationController
  before_action :set_espetaculo, only: [:show, :edit, :update, :destroy]

  # GET /espetaculos
  # GET /espetaculos.json
  def index
    @espetaculos = Espetaculo.all
  end

  # GET /espetaculos/1
  # GET /espetaculos/1.json
  def show
  end

  # GET /espetaculos/new
  def new
    @espetaculo = Espetaculo.new
  end

  # GET /espetaculos/1/edit
  def edit
  end

  # POST /espetaculos
  # POST /espetaculos.json
  def create
    @espetaculo = Espetaculo.new(espetaculo_params)

    respond_to do |format|
      if @espetaculo.save
        format.html { redirect_to @espetaculo, notice: 'Espetaculo was successfully created.' }
        format.json { render :show, status: :created, location: @espetaculo }
      else
        format.html { render :new }
        format.json { render json: @espetaculo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /espetaculos/1
  # PATCH/PUT /espetaculos/1.json
  def update
    respond_to do |format|
      if @espetaculo.update(espetaculo_params)
        format.html { redirect_to @espetaculo, notice: 'Espetaculo was successfully updated.' }
        format.json { render :show, status: :ok, location: @espetaculo }
      else
        format.html { render :edit }
        format.json { render json: @espetaculo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /espetaculos/1
  # DELETE /espetaculos/1.json
  def destroy
    @espetaculo.destroy
    respond_to do |format|
      format.html { redirect_to espetaculos_url, notice: 'Espetaculo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_espetaculo
      @espetaculo = Espetaculo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def espetaculo_params
      params.require(:espetaculo).permit(:nome, :atores, :diretor, :sonoplasta, :iluminador)
    end
end
