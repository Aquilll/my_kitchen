# frozen_string_literal: true

module Api
  module V1
    class DishesController < Api::V1::ApplicationController
      def index
        @record =  Dish.joins(:cuisine, :timings)
                       .where('timings.name = ?',permitted_params[:timing])
                       .where('cuisines.name IN (?)',permitted_params[:cuisine])
                       .select("dishes.id as id, dishes.name as dish, timings.name as timing, cuisines.name as cuisines").to_json
        return render json: @record, status: :ok
      end

      def permitted_params
        params.permit(:timing, cuisine: [])
      end
    end
  end
end

