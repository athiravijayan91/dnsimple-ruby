class Domains::SslCertificatesController < ApplicationController
 

  # GET /ssl_certificates
  # GET /ssl_certificates.json
  def index
    @domain = Domain.find(params[:domain_id])
    # @ssl_certificates = SslCertificate.all
  end

  # GET /ssl_certificates/1
  # GET /ssl_certificates/1.json
  def show
    @domain = Domain.find(params[:domain_id])
  end

  # GET /ssl_certificates/new
  def new
    # @ssl_certificate = SslCertificate.new
  end

  # GET /ssl_certificates/1/edit
  def edit
  end

  # POST /ssl_certificates
  # POST /ssl_certificates.json
  # def create
  #   @ssl_certificate = SslCertificate.new(ssl_certificate_params)

  #   respond_to do |format|
  #     if @ssl_certificate.save
  #       format.html { redirect_to @ssl_certificate, notice: 'Ssl certificate was successfully created.' }
  #       format.json { render :show, status: :created, location: @ssl_certificate }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @ssl_certificate.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # PATCH/PUT /ssl_certificates/1
  # # PATCH/PUT /ssl_certificates/1.json
  # def update
  #   respond_to do |format|
  #     if @ssl_certificate.update(ssl_certificate_params)
  #       format.html { redirect_to @ssl_certificate, notice: 'Ssl certificate was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @ssl_certificate }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @ssl_certificate.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # DELETE /ssl_certificates/1
  # # DELETE /ssl_certificates/1.json
  # def destroy
  #   @ssl_certificate.destroy
  #   respond_to do |format|
  #     format.html { redirect_to ssl_certificates_url, notice: 'Ssl certificate was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  # private
  #   # Use callbacks to share common setup or constraints between actions.
  #   def set_ssl_certificate
  #     @ssl_certificate = SslCertificate.find(params[:id])
  #   end

  #   # Never trust parameters from the scary internet, only allow the white list through.
  #   def ssl_certificate_params
  #     params.require(:ssl_certificate).permit(:domain_name, :domain_id)
  #   end
end
