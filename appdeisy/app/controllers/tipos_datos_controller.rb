class TiposDatosController < ApplicationController
  before_action :set_tipos_dato, only: [:show, :edit, :update, :destroy]

  # GET /tipos_datos
  # GET /tipos_datos.json
  def index
    @tipos_datos = TiposDato.all
  end

  # GET /tipos_datos/1
  # GET /tipos_datos/1.json
  def show
  end

  # GET /tipos_datos/new
  def new
    @tipos_dato = TiposDato.new
  end

  # GET /tipos_datos/1/edit
  def edit
  end

  # POST /tipos_datos
  # POST /tipos_datos.json
  def create
    @tipos_dato = TiposDato.new(tipos_dato_params)

    respond_to do |format|
      if @tipos_dato.save
        format.html { redirect_to @tipos_dato, notice: 'Tipos dato was successfully created.' }
        format.json { render :show, status: :created, location: @tipos_dato }
      else
        format.html { render :new }
        format.json { render json: @tipos_dato.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipos_datos/1
  # PATCH/PUT /tipos_datos/1.json
  def update
    respond_to do |format|
      if @tipos_dato.update(tipos_dato_params)
        format.html { redirect_to @tipos_dato, notice: 'Tipos dato was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipos_dato }
      else
        format.html { render :edit }
        format.json { render json: @tipos_dato.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipos_datos/1
  # DELETE /tipos_datos/1.json
  def destroy
    @tipos_dato.destroy
    respond_to do |format|
      format.html { redirect_to tipos_datos_url, notice: 'Tipos dato was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipos_dato
      @tipos_dato = TiposDato.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipos_dato_params
      params.require(:tipos_dato).permit(:date, :time, :text)
    end
end
