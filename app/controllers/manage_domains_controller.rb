class ManageDomainsController < ApplicationController
  

  # GET /manage_domains
  # GET /manage_domains.json
  def index 
  @hostings = Hosting.all #index page deault set view
    @domains = Domain.all # create an instance of Domain 

  end

  # GET /manage_domains/1
  # GET /manage_domains/1.json
  # def show
  # end

  # # GET /manage_domains/new
  # def new
  #   @manage_domain = ManageDomain.new
  # end

  # # GET /manage_domains/1/edit
  # def edit
  # end

  # # POST /manage_domains
  # # POST /manage_domains.json
  # def create
  #   @manage_domain = ManageDomain.new(manage_domain_params)

  #   respond_to do |format|
  #     if @manage_domain.save
  #       format.html { redirect_to @manage_domain, notice: 'Manage domain was successfully created.' }
  #       format.json { render :show, status: :created, location: @manage_domain }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @manage_domain.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # PATCH/PUT /manage_domains/1
  # # PATCH/PUT /manage_domains/1.json
  # def update
  #   respond_to do |format|
  #     if @manage_domain.update(manage_domain_params)
  #       format.html { redirect_to @manage_domain, notice: 'Manage domain was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @manage_domain }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @manage_domain.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # DELETE /manage_domains/1
  # # DELETE /manage_domains/1.json
  # def destroy
  #   @manage_domain.destroy
  #   respond_to do |format|
  #     format.html { redirect_to manage_domains_url, notice: 'Manage domain was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  # private
  #   # Use callbacks to share common setup or constraints between actions.
  #   def set_manage_domain
  #     @manage_domain = ManageDomain.find(params[:id])
  #   end

  #   # Never trust parameters from the scary internet, only allow the white list through.
  #   def manage_domain_params
  #     params.require(:manage_domain).permit(:domain_name, :domain_id)
  #   end
end
