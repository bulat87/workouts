class ExercisesController < ApplicationController
  def create
    @workout = Workout.find(params[:workout_id])
    @exercise = @workout.exercises.create(params[:exercise].permit(:name, :workout_type, :link, :description))

    redirect_to workout_path(@workout)
  end
end
