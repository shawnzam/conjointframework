class ChoiceSetsController < ApplicationController
  before_action :set_choice_set, only: [:show, :edit, :update, :destroy]

  # GET /choice_sets
  # GET /choice_sets.json
  def index
    @choice_sets = ChoiceSet.all
  end

  # GET /choice_sets/1
  # GET /choice_sets/1.json
  def show
  end

  # GET /choice_sets/new
  def new
    @choice_set = ChoiceSet.new
  end

  # GET /choice_sets/1/edit
  def edit
  end

  # POST /choice_sets
  # POST /choice_sets.json
  def create
    @choice_set = ChoiceSet.new(choice_set_params)

    respond_to do |format|
      if @choice_set.save
        format.html { redirect_to @choice_set, notice: 'Choice set was successfully created.' }
        format.json { render :show, status: :created, location: @choice_set }
      else
        format.html { render :new }
        format.json { render json: @choice_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /choice_sets/1
  # PATCH/PUT /choice_sets/1.json
  def update
    respond_to do |format|
      if @choice_set.update(choice_set_params)
        format.html { redirect_to @choice_set, notice: 'Choice set was successfully updated.' }
        format.json { render :show, status: :ok, location: @choice_set }
      else
        format.html { render :edit }
        format.json { render json: @choice_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /choice_sets/1
  # DELETE /choice_sets/1.json
  def destroy
    @choice_set.destroy
    respond_to do |format|
      format.html { redirect_to choice_sets_url, notice: 'Choice set was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_choice_set
      @choice_set = ChoiceSet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def choice_set_params
      params.require(:choice_set).permit(:name)
    end
end
