class DeersController < ApplicationController
  before_action :set_deer, only: [:show, :edit, :update, :destroy]

  # GET /deers
  # GET /deers.json
  def index
    @deers = Deer.all
  end

  # GET /deers/1
  # GET /deers/1.json
  def show
  end

  # GET /deers/new
  def new
    @deer = Deer.new
  end

  # GET /deers/1/edit
  def edit
  end

  # POST /deers
  # POST /deers.json
  def create
    @deer = Deer.new(deer_params)

    respond_to do |format|
      if @deer.save
        format.html { redirect_to @deer, notice: 'Deer was successfully created.' }
        format.json { render :show, status: :created, location: @deer }
      else
        format.html { render :new }
        format.json { render json: @deer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /deers/1
  # PATCH/PUT /deers/1.json
  def update
    respond_to do |format|
      if @deer.update(deer_params)
        format.html { redirect_to @deer, notice: 'Deer was successfully updated.' }
        format.json { render :show, status: :ok, location: @deer }
      else
        format.html { render :edit }
        format.json { render json: @deer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deers/1
  # DELETE /deers/1.json
  def destroy
    @deer.destroy
    respond_to do |format|
      format.html { redirect_to deers_url, notice: 'Deer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deer
      @deer = Deer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def deer_params
      params.require(:deer).permit(:name, :age)
    end
end
