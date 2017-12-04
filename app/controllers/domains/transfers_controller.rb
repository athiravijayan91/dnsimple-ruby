class Domains::TransfersController < ApplicationController
  

  # GET /transfers
  # GET /transfers.json
  def index
    # @transfers = Transfer.all
  end

  # GET /transfers/1
  # GET /transfers/1.json
  def show
  end

  # GET /transfers/new
  def new
      
      @domain_name = "Domain name"
      @domain_name = params[:domain_name]

      @domain_id = params[:id]
      domain_id= "1"
      flash[:message] = "This is flash message :+)."
      @domain = Domain.new({ domain_name: params[:domain_name]})
      render :new
  end
  # GET /transfers/1/edit
  def edit
  end

  # POST /transfers
  # POST /transfers.json
  # def create
  #   @transfer = Transfer.new(transfer_params)

  #   respond_to do |format|
  #     if @transfer.save
  #       format.html { redirect_to @transfer, notice: 'Transfer was successfully created.' }
  #       format.json { render :show, status: :created, location: @transfer }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @transfer.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # PATCH/PUT /transfers/1
  # # PATCH/PUT /transfers/1.json
  # def update
  #   respond_to do |format|
  #     if @transfer.update(transfer_params)
  #       format.html { redirect_to @transfer, notice: 'Transfer was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @transfer }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @transfer.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # DELETE /transfers/1
  # # DELETE /transfers/1.json
  # def destroy
  #   @transfer.destroy
  #   respond_to do |format|
  #     format.html { redirect_to transfers_url, notice: 'Transfer was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  # private
  #   # Use callbacks to share common setup or constraints between actions.
  #   def set_transfer
  #     @transfer = Transfer.find(params[:id])
  #   end

  #   # Never trust parameters from the scary internet, only allow the white list through.
  #   def transfer_params
  #     params.require(:transfer).permit(:domain_name, :domain_id)
  #   end
end
