class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    def favourite_text
        return @favourite_exists ? "💔unfavourite" : " 💗Favourite"

    end
 
    def logged_in?
        !!current_user
      end

    helper_method  :favourite_text,:logged_in?
    
end
