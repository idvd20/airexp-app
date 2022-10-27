class ExperiencesController < ApplicationController

    def index
        @experiences = Experience.all
    end

    def show
        @experience = Experience.find(params[:id])
    end

    def edit
        @experience = Experience.find(params[:id])
    end

    def update
        @experience = Experience.find(params[:id])
        @experience.update(experience_params)
        redirect_to @experience
    end

    def new
        @experience = Experience.new
    end

    def create
        @experience = Experience.new(experience_params)
        @experience.save
        redirect_to @experience
    end

    private

        def experience_params
            params.require(:experience).permit(:title, :location, :starts_at, :price, :description)
        end
end
