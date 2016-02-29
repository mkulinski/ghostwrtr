class UsersController < ApplicationController
    before_action :find_user
    before_action :verify_is_current_user, except: :profile
    
    
    
    def profile
    end
    
    # all actions below require current user...
    
    def show
    end
    
    def update
    end
    
    def edit
    end
    
    
    
    private
    def find_user
         @user = User.find(params[:id])
    end
    
    def verify_is_current_user
        unless @user == current_user
            redirect_to root_path, alert: "not allowed to access this page"
        end
    end
end
