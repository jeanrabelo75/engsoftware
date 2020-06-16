class BarbershopsController < ApplicationController
  before_action :set_barbershop, only: [:show, :edit, :update, :destroy]

  # GET /barbershops
  # GET /barbershops.json
  def index
    @barbershops = Barbershop.all
  end

  # GET /barbershops/1
  # GET /barbershops/1.json
  def show
  end

  # GET /barbershops/new
  def new
    @barbershop = Barbershop.new
  end

  # GET /barbershops/1/edit
  def edit
  end

  # POST /barbershops
  # POST /barbershops.json
  def create
    @barbershop = Barbershop.new(barbershop_params)

    respond_to do |format|
      if @barbershop.save
        format.html { redirect_to @barbershop, notice: 'Barbershop was successfully created.' }
        format.json { render :show, status: :created, location: @barbershop }
      else
        format.html { render :new }
        format.json { render json: @barbershop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /barbershops/1
  # PATCH/PUT /barbershops/1.json
  def update
    respond_to do |format|
      if @barbershop.update(barbershop_params)
        format.html { redirect_to @barbershop, notice: 'Barbershop was successfully updated.' }
        format.json { render :show, status: :ok, location: @barbershop }
      else
        format.html { render :edit }
        format.json { render json: @barbershop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /barbershops/1
  # DELETE /barbershops/1.json
  def destroy
    @barbershop.destroy
    respond_to do |format|
      format.html { redirect_to barbershops_url, notice: 'Barbershop was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_barbershop
      @barbershop = Barbershop.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def barbershop_params
      params.require(:barbershop).permit(:nome, :endereco, :capacidade)
    end
end
