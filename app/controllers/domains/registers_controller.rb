class Domains::RegistersController < ApplicationController
  before_action :validate_unique_domain_name, only: [:new]  

   def show
    
    @domain = Domain.find(params[:id])
    
   end
  def index
    domain_id = "1"

  end
    
    def new
      # if
      #  Domain.find_by_domain_name(params[:domain_name]).exists?
      #  flash[:error] = "This domain name has already taken."
      # return render :index
      # end 
      @domain_name = "Domain name"
      @domain_name = params[:domain_name]

      @domain_id = params[:id]
      domain_id= "1"
      flash[:message] = "This is flash message :+)."
      @domain = Domain.new({ domain_name: params[:domain_name]})
      render :new
  end

  def create  # continue button post action
    @domain = Domain.new(permitted_params.as_json)

    if @domain.save
      
      flash.now[:notice] = "Domain name successfully registered"              
            redirect_to  "/domains"
        else
          flash.now[:error] = "Invalid record, could not save."
            render action: 'new'
        end
        
    end

  private

  def validate_unique_domain_name
    if Domain.find_by_domain_name(params[:domain_name]).present?
      flash[:error] = "This domain name has already taken."
      return render :index
    end
  end

  def permitted_params
    params.require(:domain).permit(:domain_name)
  end

end
