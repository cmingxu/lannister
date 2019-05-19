class SiteAdminsController < ApplicationController
  before_action :set_site_admin, only: [:show, :edit, :update, :destroy]

  def index
    @site_admins = SiteAdmin.all
  end

  def show
  end

  def new
    @site_admin = SiteAdmin.new
  end

  def edit
  end

  def create
    @site_admin = SiteAdmin.new(site_admin_params)

    respond_to do |format|
      if @site_admin.save
        format.html { redirect_to @site_admin, notice: 'Site admin was successfully created.' }
        format.json { render :show, status: :created, location: @site_admin }
      else
        format.html { render :new }
        format.json { render json: @site_admin.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @site_admin.update(site_admin_params)
        format.html { redirect_to @site_admin, notice: 'Site admin was successfully updated.' }
        format.json { render :show, status: :ok, location: @site_admin }
      else
        format.html { render :edit }
        format.json { render json: @site_admin.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @site_admin.destroy
    respond_to do |format|
      format.html { redirect_to site_admins_url, notice: 'Site admin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_site_admin
      @site_admin = SiteAdmin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def site_admin_params
      params.require(:site_admin).permit(:identity, :encrypted_password)
    end
end
