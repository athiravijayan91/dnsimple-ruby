class Domains::DnssecsController < ApplicationController
  

  # GET /dnssecs
  # GET /dnssecs.json
  def index
    @domain = Domain.find(params[:domain_id])
    # @dnssecs = Dnssec.all

  end

  # GET /dnssecs/1
  # GET /dnssecs/1.json
  def show
    @domain = Domain.find(params[:domain_id])
  end

  # GET /dnssecs/new
  # def new
  #   @dnssec = Dnssec.new
  # end

  # # GET /dnssecs/1/edit
  # def edit
  # end

  # # POST /dnssecs
  # # POST /dnssecs.json
  # def create
  #   @dnssec = Dnssec.new(dnssec_params)

  #   respond_to do |format|
  #     if @dnssec.save
  #       format.html { redirect_to @dnssec, notice: 'Dnssec was successfully created.' }
  #       format.json { render :show, status: :created, location: @dnssec }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @dnssec.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # PATCH/PUT /dnssecs/1
  # # PATCH/PUT /dnssecs/1.json
  # def update
  #   respond_to do |format|
  #     if @dnssec.update(dnssec_params)
  #       format.html { redirect_to @dnssec, notice: 'Dnssec was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @dnssec }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @dnssec.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # DELETE /dnssecs/1
  # # DELETE /dnssecs/1.json
  # def destroy
  #   @dnssec.destroy
  #   respond_to do |format|
  #     format.html { redirect_to dnssecs_url, notice: 'Dnssec was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  # private
  #   # Use callbacks to share common setup or constraints between actions.
  #   def set_dnssec
  #     @dnssec = Dnssec.find(params[:id])
  #   end

  #   # Never trust parameters from the scary internet, only allow the white list through.
  #   def dnssec_params
  #     params.require(:dnssec).permit(:domain_name, :domain_id)
  #   end
end
