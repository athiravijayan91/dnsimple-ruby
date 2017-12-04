class Domains::EmailForwardingsController < ApplicationController
  

  # GET /email_forwardings
  # GET /email_forwardings.json
  def index
     @domain = Domain.find(params[:domain_id])
    # @email_forwardings = EmailForwarding.all
  end

  # GET /email_forwardings/1
  # GET /email_forwardings/1.json
  def show
    @domain = Domain.find(params[:domain_id])
  end

  # GET /email_forwardings/new
  # def new
  #   @email_forwarding = EmailForwarding.new
  # end

  # GET /email_forwardings/1/edit
  # def edit
  # end

  # # POST /email_forwardings
  # # POST /email_forwardings.json
  # def create
  #   @email_forwarding = EmailForwarding.new(email_forwarding_params)

  #   respond_to do |format|
  #     if @email_forwarding.save
  #       format.html { redirect_to @email_forwarding, notice: 'Email forwarding was successfully created.' }
  #       format.json { render :show, status: :created, location: @email_forwarding }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @email_forwarding.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # PATCH/PUT /email_forwardings/1
  # # PATCH/PUT /email_forwardings/1.json
  # def update
  #   respond_to do |format|
  #     if @email_forwarding.update(email_forwarding_params)
  #       format.html { redirect_to @email_forwarding, notice: 'Email forwarding was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @email_forwarding }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @email_forwarding.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # DELETE /email_forwardings/1
  # # DELETE /email_forwardings/1.json
  # def destroy
  #   @email_forwarding.destroy
  #   respond_to do |format|
  #     format.html { redirect_to email_forwardings_url, notice: 'Email forwarding was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  # private
  #   # Use callbacks to share common setup or constraints between actions.
  #   def set_email_forwarding
  #     @email_forwarding = EmailForwarding.find(params[:id])
  #   end

  #   # Never trust parameters from the scary internet, only allow the white list through.
  #   def email_forwarding_params
  #     params.require(:email_forwarding).permit(:domain_name, :domain_id)
  #   end
end
