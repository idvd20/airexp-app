class ExperiencesController < ApplicationController

    before_action :require_signin, except: [:index, :show]
    before_action :require_host, except: [:index, :show]

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
        if @experience.update(experience_params)
            redirect_to @experience, notice: "Event successfully updated"
        else
            render :edit, status: :unprocessable_entity
        end
    end

    def new
        @experience = Experience.new
    end

    def create
        @experience = Experience.new(experience_params)
        if @experience.save
            redirect_to @experience, notice: "Event successfully created"
        else
            render :new, status: :unprocessable_entity
        end
    end

    def destroy
        @experience = Experience.find(params[:id])
        @experience.destroy
        redirect_to experiences_url, status: :see_other, alert: "Experience successfully deleted!"
    end

    private

        def experience_params
            params.require(:experience).permit(:title, :location, :starts_at, :price, :description, :capacity, :image_file_name)
        end
end
