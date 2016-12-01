class PersonalIdsController < ApplicationController
  before_action :set_personal_id, only: [:show, :edit, :update, :destroy]

  # GET /personal_ids
  # GET /personal_ids.json
  def index
    @personal_ids = PersonalId.all
  end

  # GET /personal_ids/1
  # GET /personal_ids/1.json
  def show
  end

  # GET /personal_ids/new
  def new
    @personal_id = PersonalId.new
  end

  # GET /personal_ids/1/edit
  def edit
  end

  # POST /personal_ids
  # POST /personal_ids.json
  def create
    @personal_id = PersonalId.new(personal_id_params)

    respond_to do |format|
      if @personal_id.save
        format.html { redirect_to @personal_id, notice: 'Personal was successfully created.' }
        format.json { render :show, status: :created, location: @personal_id }
      else
        format.html { render :new }
        format.json { render json: @personal_id.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /personal_ids/1
  # PATCH/PUT /personal_ids/1.json
  def update
    respond_to do |format|
      if @personal_id.update(personal_id_params)
        format.html { redirect_to @personal_id, notice: 'Personal was successfully updated.' }
        format.json { render :show, status: :ok, location: @personal_id }
      else
        format.html { render :edit }
        format.json { render json: @personal_id.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personal_ids/1
  # DELETE /personal_ids/1.json
  def destroy
    @personal_id.destroy
    respond_to do |format|
      format.html { redirect_to personal_ids_url, notice: 'Personal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_personal_id
      @personal_id = PersonalId.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def personal_id_params
      params.require(:personal_id).permit(:name, :dob, :language, :phone_1, :phone_2, :email, :emer_contact_name, :emer_contact_no, :prim_phys_name, :prim_phys_no, :health_iss_name, :health_iss_no, :health_mem_id)
    end
end
