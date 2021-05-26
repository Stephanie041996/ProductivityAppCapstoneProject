class ActivitiesController < ApplicationController

  # GET /posts or /posts.json
  def index
    @activities = Activitie.all
  end

  # GET /posts/1 or /posts/1.json
  def show
    @activitie = Activitie.find(params[:id])
 end

  # GET /posts/new
  def new
    @activitie = Activitie.new
  end

  # GET /posts/1/edit
  def edit
    @activitie = Activitie.find(params[:id])
  end

  # POST /posts or /posts.json
  def create
    @activitie = Activitie.new(activities_params)

    if @activities.save
    flash[:success] = "successfully saved"
    redirect_to @activitie

    else
        flash[:error] = "Not saved"
        render :new
    end
  end

  # PATCH/PUT /posts/1 or /posts/1.json
  def update
      @activitie = Activitie.update(activities_params)
      if @activities.save
        flash[:success] = "successfully updated"
        redirect_to @activitie
      else
        flash[:error] = "not successfully edited"
        render :edit
      end
  end

  # DELETE /posts/1 or /posts/1.json
  def destroy
    @activities.find(params[:id]).destroy

  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_activitie
    @activitie = Activitie.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def activities_params
    params.require(:activitie).permit(:name, :amount, :user_id)
  end
end
