class AdminController < ApplicationController
    before_action :require_admin
    
    def require_admin
        unless current_user.is_admin?
          redirect_to root_path, alert: "only admins allowed!"
        end
    end
end