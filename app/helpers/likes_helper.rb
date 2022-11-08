module LikesHelper

    def like_or_unlike_button(experience, like)
        if like
            button_to "☆ Unlike", experience_like_path(@experience, like), method: :delete
    
        else
            button_to "★ Like", experience_likes_path(experience)
        end
    end
end
