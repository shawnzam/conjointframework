class CAttributesController < ApplicationController
  before_action :set_c_attribute, only: [:show, :edit, :update, :destroy]

  # GET /c_attributes
  # GET /c_attributes.json
  def index
    @c_attributes = CAttribute.all
  end

  # GET /c_attributes/1
  # GET /c_attributes/1.json
  def show
  end

  # GET /c_attributes/new
  def new
    @c_attribute = CAttribute.new
  end

  # GET /c_attributes/1/edit
  def edit
  end

  # POST /c_attributes
  # POST /c_attributes.json
  def create
    @c_attribute = CAttribute.new(c_attribute_params)

    respond_to do |format|
      if @c_attribute.save
        format.html { redirect_to @c_attribute, notice: 'C attribute was successfully created.' }
        format.json { render :show, status: :created, location: @c_attribute }
      else
        format.html { render :new }
        format.json { render json: @c_attribute.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /c_attributes/1
  # PATCH/PUT /c_attributes/1.json
  def update
    respond_to do |format|
      if @c_attribute.update(c_attribute_params)
        format.html { redirect_to @c_attribute, notice: 'C attribute was successfully updated.' }
        format.json { render :show, status: :ok, location: @c_attribute }
      else
        format.html { render :edit }
        format.json { render json: @c_attribute.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /c_attributes/1
  # DELETE /c_attributes/1.json
  def destroy
    @c_attribute.destroy
    respond_to do |format|
      format.html { redirect_to c_attributes_url, notice: 'C attribute was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_c_attribute
      @c_attribute = CAttribute.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def c_attribute_params
      params.require(:c_attribute).permit(:display_order, :choice_set_id, :name, :description)
    end
end
