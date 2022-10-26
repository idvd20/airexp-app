module ExperiencesHelper

    def price(experience)
        if experience.free?
            "Free"
        else
            number_to_currency(experience.price, precision: 0, unit: "₱")
        end
    end

    def day_and_time(experience)
        experience.starts_at.strftime("%B %d at %I:%M %P")
    end
end
