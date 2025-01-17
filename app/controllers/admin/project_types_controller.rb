class Admin::ProjectTypesController < AdminController
  before_action :set_admin_project_type, only: %i[ show edit update destroy ]

  # GET /admin/project_types or /admin/project_types.json
  def index
    @admin_project_types = ProjectType.all
  end

  # GET /admin/project_types/1 or /admin/project_types/1.json
  def show
  end

  # GET /admin/project_types/new
  def new
    @admin_project_type = ProjectType.new
  end

  # GET /admin/project_types/1/edit
  def edit
  end

  # POST /admin/project_types or /admin/project_types.json
  def create
    @admin_project_type = ProjectType.new(admin_project_type_params)

    respond_to do |format|
      if @admin_project_type.save
        format.html { redirect_to admin_project_types_path, notice: "Project type was successfully created." }
        format.json { render :show, status: :created, location: @admin_project_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @admin_project_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/project_types/1 or /admin/project_types/1.json
  def update
    respond_to do |format|
      if @admin_project_type.update(admin_project_type_params)
        format.html { redirect_to @admin_project_type, notice: "Project type was successfully updated." }
        format.json { render :show, status: :ok, location: @admin_project_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @admin_project_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/project_types/1 or /admin/project_types/1.json
  def destroy
    @admin_project_type.destroy!

    respond_to do |format|
      format.html { redirect_to admin_project_types_path, status: :see_other, notice: "Project type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_project_type
      @admin_project_type = ProjectType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def admin_project_type_params
      params.require(:project_type).permit(:name, :description)
    end
end
