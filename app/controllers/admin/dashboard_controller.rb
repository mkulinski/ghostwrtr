class DashboardController < ApplicationController
    before_action :authenticate_user!
    before_action :verify_is_admin_user
    
    def index
    end
    
    
    private
    def verify_is_admin_user
        if current_user.admin != true
            redirect_to root_path, alert: 'only admins allowed'
        end
    end
    
end
