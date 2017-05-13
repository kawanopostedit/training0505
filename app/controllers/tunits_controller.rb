class TunitsController < ApplicationController
  before_action :set_tunit, only: [:show, :edit, :update, :destroy]

  # GET /tunits
  # GET /tunits.json
  def index
    @tunits = Tunit.all
  end

  # GET /tunits/1
  # GET /tunits/1.json
  def show
  end

  # GET /tunits/new
  def new
    @tunit = Tunit.new
  end

  # GET /tunits/1/edit
  def edit
  end

  # POST /tunits
  # POST /tunits.json
  def create
    @tunit = Tunit.new(tunit_params)

    respond_to do |format|
      if @tunit.save
        format.html { redirect_to @tunit, notice: 'Tunit was successfully created.' }
        format.json { render :show, status: :created, location: @tunit }
      else
        format.html { render :new }
        format.json { render json: @tunit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tunits/1
  # PATCH/PUT /tunits/1.json
  def update
    respond_to do |format|
      if @tunit.update(tunit_params)
        format.html { redirect_to @tunit, notice: 'Tunit was successfully updated.' }
        format.json { render :show, status: :ok, location: @tunit }
      else
        format.html { render :edit }
        format.json { render json: @tunit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tunits/1
  # DELETE /tunits/1.json
  def destroy
    @tunit.destroy
    respond_to do |format|
      format.html { redirect_to tunits_url, notice: 'Tunit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tunit
      @tunit = Tunit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tunit_params
      params.require(:tunit).permit(:source, :target)
    end
end
