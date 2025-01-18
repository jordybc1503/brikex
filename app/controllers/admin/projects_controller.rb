class Admin::ProjectsController < AdminController
  before_action :set_admin_project, only: %i[ show edit update destroy ]

  # GET /admin/projects or /admin/projects.json
  def index
    @admin_projects = Project.all
  end

  # GET /admin/projects/1 or /admin/projects/1.json
  def show
  end

  # GET /admin/projects/new
  def new
    @admin_project = Project.new

  end

  # GET /admin/projects/1/edit
  def edit
  end

  # POST /admin/projects or /admin/projects.json
  def create

    @admin_project = Project.new(admin_project_params)
    @admin_project.admin = current_admin



    respond_to do |format|
      if @admin_project.save
        format.html { redirect_to @admin_project, notice: "Project was successfully created." }
        format.json { render :show, status: :created, location: @admin_project }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @admin_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/projects/1 or /admin/projects/1.json
  def update
    respond_to do |format|
      if @admin_project.update(admin_project_params)
        format.html { redirect_to [:admin, @admin_project], notice: "Project was successfully updated." }
        format.json { render :show, status: :ok, location: @admin_project }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @admin_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/projects/1 or /admin/projects/1.json
  def destroy
    @admin_project.destroy!

    respond_to do |format|
      format.html { redirect_to admin_projects_path, status: :see_other, notice: "Project was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_project
      @admin_project = Project.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def admin_project_params
      params.require(:project).permit(:name, :description, :status, :promotor_id, :location, :target_amount, :raised_amount, :return_rate, :duration, :project_type_id, images: [])
    end
end
