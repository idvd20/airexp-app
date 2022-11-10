module ExperiencesHelper

    def price(experience)
        if experience.free?
            "Free"
        else
            content_tag(:span, "From #{number_to_currency(experience.price, precision: 0, unit: "₱")} / person")
            # number_to_currency(experience.price, precision: 0, unit: "₱")
        end
    end

    def day_and_time(experience)
        experience.starts_at.strftime("%B %d at %I:%M %P")
    end

    def main_image(experience)
        if experience.main_image.attached?
            image_tag experience.main_image
        else
            image_tag "placeholder.png"
        end
    end
end
