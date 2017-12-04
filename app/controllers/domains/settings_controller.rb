class Domains::SettingsController < ApplicationController

  # GET /settings
  # GET /settings.json
   # def index
      
   # end

  # GET /settings/1
  # GET /settings/1.json
  def show
    @domain = Domain.find(params[:domain_id])
  end

  def destroy
    @domain = Domain.find(params[:domain_id])
    # byebug
    if params[:domain_name_validation] == @domain.domain_name
      @domain.destroy
    else
      flash[:error] = "You must input the name of the domain."
      return render :show
    end
    # redirect_to domains_path
    #redirect_to :controller => 'domains', :action => 'index' 

    redirect_to domains_path
  end

  # def destroy
  #   @setting.destroy
  #   respond_to do |format|
  #     format.html { redirect_to settings_url, notice: 'Setting was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  # private
  #   # Use callbacks to share common setup or constraints between actions.
  #   def set_setting
  #     @setting = Setting.find(params[:id])
  #   end

  #   # Never trust parameters from the scary internet, only allow the white list through.
  #   def setting_params
  #     params.require(:setting).permit(:domain_name, :domain_id)
  #   end
end
