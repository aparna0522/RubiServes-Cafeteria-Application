module ApplicationHelper
    def current_ordeer
        if !session[:ordeer_id].nil?
            Ordeer.find(session[:ordeer_id])
        else
            Ordeer.new
        end

    end
end
