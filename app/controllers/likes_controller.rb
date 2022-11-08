class LikesController < ApplicationController
    before_action :require_signin

    def create
        @experience = Experience.find(params[:experience_id])
        @experience.likes.create!(user: current_user)
        redirect_to @experience
    end

    def destroy
        like = current_user.likes.find(params[:id])
        like.destroy

        experience = Experience.find(params[:experience_id])
        redirect_to experience
    end
end
