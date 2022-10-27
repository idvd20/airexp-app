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

    private
end
