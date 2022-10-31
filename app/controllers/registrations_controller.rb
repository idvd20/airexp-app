class RegistrationsController < ApplicationController

    def index
        @experience = Experience.find(params[:experience_id])
        @registrations = @experience.registrations
    end
end
