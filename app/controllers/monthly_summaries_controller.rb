class MonthlySummariesController < ApplicationController
  before_action :set_monthly_summary, only: %i[ show edit update destroy ]

  # GET /monthly_summaries or /monthly_summaries.json
  def index
    @monthly_summaries = MonthlySummary.all
  end

  # GET /monthly_summaries/1 or /monthly_summaries/1.json
  def show
  end

  # GET /monthly_summaries/new
  def new
    @monthly_summary = MonthlySummary.new
  end

  # GET /monthly_summaries/1/edit
  def edit
  end

  # POST /monthly_summaries or /monthly_summaries.json
  def create
    @monthly_summary = MonthlySummary.new(monthly_summary_params)

    respond_to do |format|
      if @monthly_summary.save
        format.html { redirect_to @monthly_summary, notice: "Monthly summary was successfully created." }
        format.json { render :show, status: :created, location: @monthly_summary }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @monthly_summary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /monthly_summaries/1 or /monthly_summaries/1.json
  def update
    respond_to do |format|
      if @monthly_summary.update(monthly_summary_params)
        format.html { redirect_to @monthly_summary, notice: "Monthly summary was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @monthly_summary }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @monthly_summary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /monthly_summaries/1 or /monthly_summaries/1.json
  def destroy
    @monthly_summary.destroy!

    respond_to do |format|
      format.html { redirect_to monthly_summaries_path, notice: "Monthly summary was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_monthly_summary
      @monthly_summary = MonthlySummary.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def monthly_summary_params
      params.expect(monthly_summary: [ :user_id, :month, :year, :total_income, :total_expense, :balance ])
    end
end
