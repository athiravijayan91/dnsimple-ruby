class Domains::DomainRecordsController < ApplicationController
	
    def index 

      flash[:message] = "This is flash message :+)."
      # @domain = Domain.new({ domain_name: params[:domain_name]}) 
       # redirect_to :controller => 'records ', :action => 'show' 
       @domain = Domain.find(params[:domain_id])
       @domain_records = @domain.domain_records
      # @record_type = params.require(:record_type)
    end


    def new
  		@domain_name=params[:domain_name]
  		@domain_id = params[:id]
  		@domain = Domain.find(params[:domain_id])
  		# @domain = Domain.new({ domain_name: params[:domain_name] ,id: params[:id]})
  		@domain_name=params[:domain_name]
      @record_type = params.require(:record_type)
		@domain_record = DomainRecord.new(record_type: @record_type)
		render :new

	end
      

	def show   # show details of a 1 domain by :id
		@domain_id = params[:id]
		@domain_record = DomainRecord.new(record_type: @record_type)
		@domain_records = DomainRecord.all
		@domain = Domain.find(params[:id])
	end

	def create
		# @domain = Domain.find(params[:id])
		@domain_record = DomainRecord.new(permitted_params)
        # @domain = Domain.find(params[:id])
		if @domain_record.save
			
			flash.now[:notice] = "Added new record"              
            
            redirect_to :action => :index
            
        else
    	    flash.now[:error] = "Invalid record, could not save."
            
        end

   end
    def edit
      
      redirect_to :action => :new
     
    end

	def destroy
    @domain_record = DomainRecord.where(domain_id: params[:domain_id], id: params[:id]).first

    @domain_record.destroy
    @domain = Domain.find(params[:domain_id])
    @domain_records = @domain.domain_records
    render :index
  end

	private

	def permitted_params
		# params["domain_record"]["record_type"]
		params.require(:domain_record).permit(:record_type, :name,
		 :ip_address,:ttl,:region_name,:content,:mail_serverhost,:priority,:other_servers,
		 :ip_networks,:ipv6_networks,:include,:all_others,
		 :destination_url,:name_server,:symbolic_name,:protocol,
		 :weight,:port,:target,:order_name,:preference,:flags,:service,:regex,
		 :replacement,:ipv6_address,:algorithm,:fingerprint_type,
		 :finger_print,:cpu,:operating_system,:provider,:certificate_type,:email,:tag,:value,:domain_id,:domain_name)
	end

	
end
