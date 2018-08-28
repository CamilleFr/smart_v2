class SurveysController < ApplicationController
  before_action :set_survey, only: [:show, :edit, :update]

  # GET /surveys
  # GET /surveys.json
  def index
    @surveys = Survey.all
    @users = User.all
  end

  # GET /surveys/1
  # GET /surveys/1.json
  def show
  end

  # GET /surveys/1/edit
  def edit

  end

  # POST /surveys
  # POST /surveys.json
  def create
    @survey = Survey.create(user: current_user)
    redirect_to survey_path(@survey)
  end

  # PATCH/PUT /surveys/1
  # PATCH/PUT /surveys/1.json
  def update
    @survey.update(survey_params)
    redirect_to survey_path(@survey)
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_survey
      @survey = Survey.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def survey_params
      params.require(:survey).permit(:heat_type, :house_appartment, :area, :house_inhabitants, :adults_inhabitants, :children_inhabitants, :house_temp, :housing_type, :energy_class, :vegetable_season, :eating_habits, :bio_buyings, :vehicule_km, :fuel_type, :public_transp, :upcycling, :green_invest )
    end
end
