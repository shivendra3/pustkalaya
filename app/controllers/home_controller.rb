class HomeController <ApplicationController
	skip_before_action :authenticate_admin! ,only: [:index]
    def index
    end
    	
end