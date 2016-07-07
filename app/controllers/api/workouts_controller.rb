class Api::WorkoutsController < ApplicationController
  def index
    @workouts = Workout.all
  end
end