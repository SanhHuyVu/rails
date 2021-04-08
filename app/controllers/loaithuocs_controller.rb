class LoaithuocsController < ApplicationController
  before_action :set_loaithuoc, only: %i[ show edit update destroy ]

  # GET /loaithuocs or /loaithuocs.json
  def index
    @loaithuocs = Loaithuoc.all
  end

  # GET /loaithuocs/1 or /loaithuocs/1.json
  def show
  end

  # GET /loaithuocs/new
  def new
    @loaithuoc = Loaithuoc.new
  end

  # GET /loaithuocs/1/edit
  def edit
  end

  # POST /loaithuocs or /loaithuocs.json
  def create
    @loaithuoc = Loaithuoc.new(loaithuoc_params)

    respond_to do |format|
      if @loaithuoc.save
        format.html { redirect_to @loaithuoc, notice: "Loaithuoc was successfully created." }
        format.json { render :show, status: :created, location: @loaithuoc }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @loaithuoc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /loaithuocs/1 or /loaithuocs/1.json
  def update
    respond_to do |format|
      if @loaithuoc.update(loaithuoc_params)
        format.html { redirect_to @loaithuoc, notice: "Loaithuoc was successfully updated." }
        format.json { render :show, status: :ok, location: @loaithuoc }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @loaithuoc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /loaithuocs/1 or /loaithuocs/1.json
  def destroy
    @loaithuoc.destroy
    respond_to do |format|
      format.html { redirect_to loaithuocs_url, notice: "Loaithuoc was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_loaithuoc
      @loaithuoc = Loaithuoc.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def loaithuoc_params
      params.require(:loaithuoc).permit(:idloai, :tenloai, :ghichu)
    end
end
