module Api
  module V1
    class CoursesController < ApplicationController
      # before_action :authenticate_user!, except: [:create]
      # check_authorization
      #
      def index
        @courses = Course.all
      end
      # POST /courses
      def create
        @course = Course.find_or_create_by(name:course_params[:name])
        render json: @course
      end

      private
      # Only allow a trusted parameter "white list" through.
      def course_params
        params.require(:course).permit(:name, :company, :tag_list)
      end
    end
  end
end

