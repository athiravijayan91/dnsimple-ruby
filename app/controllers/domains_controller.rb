class DomainsController < ApplicationController
	# domains/:id
	# id = domain.id
	def index  #index page deault set view
		@hostings = Hosting.all
		@domains = Domain.all # create an instance of Domain 
	end	
	def show   # show details of a particular domain
		
		@domain = Domain.find(params[:id])

	end


    def new    	
  		@domain_name=params[:domain_name]

  		flash[:message] = "This is flash message :+)."
    	@domain = Domain.new({ domain_name: params[:domain_name] })
    	render :new
	end
      
	def create  # continue button post action
		@domain = Domain.new(permitted_params.as_json)

		if @domain.save
			
			flash.now[:notice] = "Domain name successfully registered"              
            redirect_to action: "index"
        else
    	    flash.now[:error] = "Invalid record, could not save."
            render action: 'new'
        end
        
    end
    
	

	def edit
		@domain = Domain.find(params[:id])
	end
	
	
	private

	def permitted_params
		params.require(:domain).permit(:domain_name)
	end
	
end
