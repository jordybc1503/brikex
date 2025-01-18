class User::InvestmentsController < ApplicationController
  before_action :set_user_investment, only: %i[ show edit update destroy ]

  # GET /user/investments or /user/investments.json
  def index
    @user_investments = Investment.all
  end

  # GET /user/investments/1 or /user/investments/1.json
  def show
  end

  # GET /user/investments/new
  def new
    @user_investment = Investment.new
  end

  # GET /user/investments/1/edit
  def edit
  end

  # POST /user/investments or /user/investments.json
  def create
    @user_investment = Investment.new(user_investment_params)

    respond_to do |format|
      if @user_investment.save
        format.html { redirect_to @user_investment, notice: "Investment was successfully created." }
        format.json { render :show, status: :created, location: @user_investment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_investment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user/investments/1 or /user/investments/1.json
  def update
    respond_to do |format|
      if @user_investment.update(user_investment_params)
        format.html { redirect_to @user_investment, notice: "Investment was successfully updated." }
        format.json { render :show, status: :ok, location: @user_investment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user_investment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user/investments/1 or /user/investments/1.json
  def destroy
    @user_investment.destroy!

    respond_to do |format|
      format.html { redirect_to user_investments_path, status: :see_other, notice: "Investment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_investment
      @user_investment = Investment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_investment_params
      params.require(:investment).permit(:user_id, :project_id, :amount, :investment_date)
    end
end
