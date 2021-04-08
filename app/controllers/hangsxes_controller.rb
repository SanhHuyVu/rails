class HangsxesController < ApplicationController
  before_action :set_hangsx, only: %i[ show edit update destroy ]

  # GET /hangsxes or /hangsxes.json
  def index
    @hangsxes = Hangsx.all
  end

  # GET /hangsxes/1 or /hangsxes/1.json
  def show
  end

  # GET /hangsxes/new
  def new
    @hangsx = Hangsx.new
  end

  # GET /hangsxes/1/edit
  def edit
  end

  # POST /hangsxes or /hangsxes.json
  def create
    @hangsx = Hangsx.new(hangsx_params)

    respond_to do |format|
      if @hangsx.save
        format.html { redirect_to @hangsx, notice: "Hangsx was successfully created." }
        format.json { render :show, status: :created, location: @hangsx }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @hangsx.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hangsxes/1 or /hangsxes/1.json
  def update
    respond_to do |format|
      if @hangsx.update(hangsx_params)
        format.html { redirect_to @hangsx, notice: "Hangsx was successfully updated." }
        format.json { render :show, status: :ok, location: @hangsx }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @hangsx.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hangsxes/1 or /hangsxes/1.json
  def destroy
    @hangsx.destroy
    respond_to do |format|
      format.html { redirect_to hangsxes_url, notice: "Hangsx was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hangsx
      @hangsx = Hangsx.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def hangsx_params
      params.require(:hangsx).permit(:idnhasanxuat, :tenhang, :quocgia)
    end
end
