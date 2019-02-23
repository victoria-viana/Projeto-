class TerceirizadosController < ApplicationController
  before_action :set_terceirizado, only: [:show, :edit, :update, :destroy]

  # GET /terceirizados
  # GET /terceirizados.json
  def index
    @terceirizados = Terceirizado.all
  end

  # GET /terceirizados/1
  # GET /terceirizados/1.json
  def show
  end

  # GET /terceirizados/new
  def new
    @terceirizado = Terceirizado.new
  end

  # GET /terceirizados/1/edit
  def edit
  end

  # POST /terceirizados
  # POST /terceirizados.json
  def create
    @terceirizado = Terceirizado.new(terceirizado_params)

    respond_to do |format|
      if @terceirizado.save
        format.html { redirect_to @terceirizado, notice: 'Terceirizado was successfully created.' }
        format.json { render :show, status: :created, location: @terceirizado }
      else
        format.html { render :new }
        format.json { render json: @terceirizado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /terceirizados/1
  # PATCH/PUT /terceirizados/1.json
  def update
    respond_to do |format|
      if @terceirizado.update(terceirizado_params)
        format.html { redirect_to @terceirizado, notice: 'Terceirizado was successfully updated.' }
        format.json { render :show, status: :ok, location: @terceirizado }
      else
        format.html { render :edit }
        format.json { render json: @terceirizado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /terceirizados/1
  # DELETE /terceirizados/1.json
  def destroy
    @terceirizado.destroy
    respond_to do |format|
      format.html { redirect_to terceirizados_url, notice: 'Terceirizado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_terceirizado
      @terceirizado = Terceirizado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def terceirizado_params
      params.require(:terceirizado).permit(:nome, :cpf, :rg, :celular, :email, :caminhao, :placacaminhao, :renavancaminhao, :cegonha, :placacegonha, :renavancegonha)
    end
end
