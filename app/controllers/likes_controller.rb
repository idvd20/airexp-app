class LikesController < ApplicationController
    before_action :require_signin
    before_action :set_experience

    def create
        @experience.likes.create!(user: current_user)
        redirect_to @experience
    end

    def destroy
        like = current_user.likes.find(params[:id])
        like.destroy
        redirect_to @experience
    end

    private
        def set_experience
            @experience = Experience.find_by!(slug: params[:experience_id])
        end
end
