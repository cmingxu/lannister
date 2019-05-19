class SiteAdminsController < ApplicationController
  before_action :set_site_admin, only: [:show, :edit, :update, :destroy]

  # GET /site_admins
  # GET /site_admins.json
  def index
    @site_admins = SiteAdmin.all
  end

  # GET /site_admins/1
  # GET /site_admins/1.json
  def show
  end

  # GET /site_admins/new
  def new
    @site_admin = SiteAdmin.new
  end

  # GET /site_admins/1/edit
  def edit
  end

  # POST /site_admins
  # POST /site_admins.json
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

  # PATCH/PUT /site_admins/1
  # PATCH/PUT /site_admins/1.json
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

  # DELETE /site_admins/1
  # DELETE /site_admins/1.json
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
