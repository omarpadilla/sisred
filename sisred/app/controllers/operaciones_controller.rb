class OperacionesController < ApplicationController
  before_action :set_operacione, only: [:show, :edit, :update, :destroy]

  # GET /operaciones
  # GET /operaciones.json
  def index
    @operaciones = Operacione.all
  end

  # GET /operaciones/1
  # GET /operaciones/1.json
  def show
  end

  # GET /operaciones/new
  def new
    @operacione = Operacione.new
  end

  # GET /operaciones/1/edit
  def edit
  end

  # POST /operaciones
  # POST /operaciones.json
  def create
    @operacione = Operacione.new(operacione_params)

    respond_to do |format|
      if @operacione.save
        format.html { redirect_to @operacione, notice: 'Operacione was successfully created.' }
        format.json { render :show, status: :created, location: @operacione }
      else
        format.html { render :new }
        format.json { render json: @operacione.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /operaciones/1
  # PATCH/PUT /operaciones/1.json
  def update
    respond_to do |format|
      if @operacione.update(operacione_params)
        format.html { redirect_to @operacione, notice: 'Operacione was successfully updated.' }
        format.json { render :show, status: :ok, location: @operacione }
      else
        format.html { render :edit }
        format.json { render json: @operacione.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /operaciones/1
  # DELETE /operaciones/1.json
  def destroy
    @operacione.destroy
    respond_to do |format|
      format.html { redirect_to operaciones_url, notice: 'Operacione was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_operacione
      @operacione = Operacione.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def operacione_params
      params.require(:operacione).permit(:referencia, :pedimento, :cliente)
    end
end
