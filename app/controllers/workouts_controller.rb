class WorkoutsController < ApplicationController
  def index
    
  end

  def show
    
  end

  def new
    @workout = Workout.new
  end

  def create
    @workout = Workout.new(workouts_params)
    if @workout.save
      redirect_to @workout
    else
      render 'new'
    end
  end

  def edit
    
  end

  def update
    
  end

  def destroy
    
  end

  private

  def workouts_params
    params.require(:workout).permit(:date, :workout, :rating, :length)
  end

  def find_workout
    
  end
end
