class RegistrationsController < ApplicationController

    before_action :set_experience
    before_action :require_signin

    def index
        @registrations = @experience.registrations
    end

    def new
        @registration = @experience.registrations.new
    end
    
    def create
        @registration = @experience.registrations.new(registration_params)
        @registration.user = current_user
        if @registration.save
            redirect_to experience_registrations_url(@experience), notice: "Thank for registering!"
        else
            render :new, status: :unprocessable_entity
        end
    end

    private
        def set_experience
            @experience = Experience.find(params[:experience_id])
        end

        def registration_params
            params.require(:registration).permit(:stars)
        end
end
