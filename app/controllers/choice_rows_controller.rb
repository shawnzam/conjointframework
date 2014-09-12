class ChoiceRowsController < ApplicationController
  before_action :set_choice_row, only: [:show, :edit, :update, :destroy]

  # GET /choice_rows
  # GET /choice_rows.json
  def index
    @choice_rows = ChoiceRow.all
  end

  # GET /choice_rows/1
  # GET /choice_rows/1.json
  def show
  end

  # GET /choice_rows/new
  def new
    @choice_row = ChoiceRow.new
  end

  # GET /choice_rows/1/edit
  def edit
  end

  # POST /choice_rows
  # POST /choice_rows.json
  def create
    @choice_row = ChoiceRow.new(choice_row_params)

    respond_to do |format|
      if @choice_row.save
        format.html { redirect_to @choice_row, notice: 'Choice row was successfully created.' }
        format.json { render :show, status: :created, location: @choice_row }
      else
        format.html { render :new }
        format.json { render json: @choice_row.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /choice_rows/1
  # PATCH/PUT /choice_rows/1.json
  def update
    respond_to do |format|
      if @choice_row.update(choice_row_params)
        format.html { redirect_to @choice_row, notice: 'Choice row was successfully updated.' }
        format.json { render :show, status: :ok, location: @choice_row }
      else
        format.html { render :edit }
        format.json { render json: @choice_row.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /choice_rows/1
  # DELETE /choice_rows/1.json
  def destroy
    @choice_row.destroy
    respond_to do |format|
      format.html { redirect_to choice_rows_url, notice: 'Choice row was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_choice_row
      @choice_row = ChoiceRow.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def choice_row_params
      params.require(:choice_row).permit(:choice_set_id, :display_order)
    end
end
