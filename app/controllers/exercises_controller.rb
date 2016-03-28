class ExercisesController < ApplicationController
  before_action :set_exercise, only: [:destroy]
  before_filter :authenticate_user!

  def create
    @workout = Workout.find(params[:workout_id])
    exercise = @workout.exercises.create(exercise_params)

    redirect_to workout_path(@workout)
  end

  def destroy
    @workout = @exercise.workout
    @exercise.delete

    redirect_to workout_path(@workout)
  end

  private
    def set_exercise
      @exercise = Exercise.find(params[:id])
    end

    def exercise_params
      params.require(:exercise).permit(:name, :workout_type, :link, :description, :workout_id)
    end
end
