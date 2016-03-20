class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.datetime :date
      t.string :workout
      t.string :rating
      t.string :length

      t.timestamps null: false
    end
  end
end
