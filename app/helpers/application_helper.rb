module ApplicationHelper
    def current_controller?(target_controller_name)
        controller_name.to_sym == target_controller_name.to_sym
    end
end
