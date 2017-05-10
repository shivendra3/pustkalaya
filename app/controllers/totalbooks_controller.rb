class TotalbooksController < ApplicationController
  before_action :set_totalbook, only: [:show, :edit, :update, :destroy]

  # GET /totalbooks
  # GET /totalbooks.json
  def index
    @totalbooks = Totalbook.all
  end

  # GET /totalbooks/1
  # GET /totalbooks/1.json
  def show
  end

  # GET /totalbooks/new
  def new
    @totalbook = Totalbook.new
  end

  # GET /totalbooks/1/edit
  def edit
  end

  # POST /totalbooks
  # POST /totalbooks.json
  def create
    @totalbook = Totalbook.new(totalbook_params)

    respond_to do |format|
      if @totalbook.save
        format.html { redirect_to @totalbook, notice: 'Totalbook was successfully created.' }
        format.json { render :show, status: :created, location: @totalbook }
      else
        format.html { render :new }
        format.json { render json: @totalbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /totalbooks/1
  # PATCH/PUT /totalbooks/1.json
  def update
    respond_to do |format|
      if @totalbook.update(totalbook_params)
        format.html { redirect_to @totalbook, notice: 'Totalbook was successfully updated.' }
        format.json { render :show, status: :ok, location: @totalbook }
      else
        format.html { render :edit }
        format.json { render json: @totalbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /totalbooks/1
  # DELETE /totalbooks/1.json
  def destroy
    @totalbook.destroy
    respond_to do |format|
      format.html { redirect_to totalbooks_url, notice: 'Totalbook was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_totalbook
      @totalbook = Totalbook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def totalbook_params
      params.require(:totalbook).permit(:isbn, :issue)
    end
end
