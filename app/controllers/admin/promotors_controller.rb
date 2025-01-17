class Admin::PromotorsController < AdminController
  before_action :set_admin_promotor, only: %i[ show edit update destroy ]

  # GET /admin/promotors or /admin/promotors.json
  def index
    @admin_promotors = Promotor.all
  end

  # GET /admin/promotors/1 or /admin/promotors/1.json
  def show
  end

  # GET /admin/promotors/new
  def new
    @admin_promotor = Promotor.new
  end

  # GET /admin/promotors/1/edit
  def edit
  end

  # POST /admin/promotors or /admin/promotors.json
  def create
    @admin_promotor = Promotor.new(admin_promotor_params)

    respond_to do |format|
      if @admin_promotor.save
        format.html { redirect_to admin_promotors_path, notice: "Promotor was successfully created." }
        format.json { render :show, status: :created, location: @admin_promotor }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @admin_promotor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/promotors/1 or /admin/promotors/1.json
  def update
    respond_to do |format|
      if @admin_promotor.update(admin_promotor_params)
        format.html { redirect_to @admin_promotor, notice: "Promotor was successfully updated." }
        format.json { render :show, status: :ok, location: @admin_promotor }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @admin_promotor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/promotors/1 or /admin/promotors/1.json
  def destroy
    @admin_promotor.destroy!

    respond_to do |format|
      format.html { redirect_to admin_promotors_path, status: :see_other, notice: "Promotor was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_promotor
      @admin_promotor = Promotor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def admin_promotor_params
      params.require(:promotor).permit(:name, :contact_person, :email, :phone, :website, :company_type, :headquarters, :years_in_business, :registered_address, :tax_id, :registration_number, :average_return_rate, :total_raised_funds, :number_of_investors)
    end
end
