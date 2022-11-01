module RegistrationsHelper

    def register_or_sold_out(experience)
        if experience.sold_out?
            content_tag(:span, "Sold Out!", class: "sold-out")
        else
            link_to 'Register!', new_experience_registration_path(experience), class: "register"
        end
    end

    def average_stars(experience)
        if experience.average_stars.zero?
          content_tag(:strong, "No reviews")
        else
            "*" * experience.average_stars.round
        end
    end
end
