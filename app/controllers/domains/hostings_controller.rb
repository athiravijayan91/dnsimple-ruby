class  Domains::HostingsController < ApplicationController
 

  def index
    
    @hosting= Hosting.new({ domain_name: params[:domain_name]})
    # @transfers = Transfer.all
  end

  # GET /transfers/1
  # GET /transfers/1.json
  def show
    @hosting = Hosting.find(params[:id])
  end

  # GET /transfers/new
  # def new
      
  #     @domain_name = "Domain name"
  #     @domain_name = params[:domain_name]

  #     @domain_id = params[:id]
  #     domain_id= "1"
  #     flash[:message] = "This is flash message :+)."
  #     @domain = Domain.new({ domain_name: params[:domain_name]})
  #     render :new
  # end
  def create  # continue button post action
    @hosting = Hosting.new(permitted_params.as_json)

    @hosting.save
    render action: 'show'
  end
        
  
  # GET /transfers/1/edit
  def edit
  end


  private

  def permitted_params
    params.require(:hosting).permit(:domain_name)
  end
end
