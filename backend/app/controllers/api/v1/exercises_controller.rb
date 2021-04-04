module Api
  module V1
    class ExercisesController < ApplicationController
      def index
        exercises = Exercise.all
        render json: { status: 'SUCCESS', message: 'Loaded exercises', data: exercises }, status: :ok
      end

      def show
        exercise = Exercise.find(params[:id])
        render json: { status: 'SUCCESS', message: 'Loaded exercises', data: exercise }, status: :ok
      end

      def create
        exercise = Exercise.new(exercise_params)

        if exercise.save
          render json: { status: 'SUCCESS', message: 'Save exercise', data: exercise }, status: :ok
        else
          render json: { status: 'ERROR', message: ' Exercise not saved', data: exercise.errors }, status: :unprocessable_entity
        end
      end
      private

      def exercise_params
        params.permit(:name, :description)
      end
    end
  end
end

