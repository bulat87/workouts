class WorkoutsController < ApplicationController
  before_action :find_workout, only: [:show, :edit, :update, :destroy]
  def index
    @workouts = Workout.where(user_id: current_user)
  end

  def show
  end

  def new
    @workout = current_user.workouts.build
  end

  def create
    @workout = current_user.workouts.build(workouts_params)
    if @workout.save
      redirect_to @workout
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @workout.update(workouts_params)
      redirect_to @workout
    else
      render 'edit'
    end
  end

  def destroy
    @workout.destroy
    redirect_to root_path
  end

  private

  def workouts_params
    params.require(:workout).permit(:date, :workout, :rating, :length)
  end

  def find_workout
    @workout = Workout.find(params[:id])
  end
end
