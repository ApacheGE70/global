class PagesController < ApplicationController
	before_action :set_page, only: [:show, :edit, :update, :destroy]


  # GET /websites
  # GET /websites.json
  def index
    @pages = Page.all
  end

  # GET /websites/1
  # GET /websites/1.json
  def show
  end

  # GET /websites/new
  def new
    @page = Page.new
  end

  # GET /websites/1/edit
  def edit
  end

  # POST /websites
  # POST /websites.json
  def create
    @page = Page.new(page_params)

    respond_to do |format|
      if @page.save
        format.html { redirect_to @page, notice: 'Website was successfully created.' }
        format.json { render :show, status: :created, location: @page }
      else
        format.html { render :new }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /websites/1
  # PATCH/PUT /websites/1.json
  def update
    respond_to do |format|
      if @page.update(page_params)
        format.html { redirect_to @page, notice: 'Page was successfully updated.' }
        format.json { render :show, status: :ok, location: @page}
      else
        format.html { render :edit }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /websites/1
  # DELETE /websites/1.json
  def destroy
    @page.destroy
    respond_to do |format|
      format.html { redirect_to page_url, notice: 'Page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_page
      @page = Page.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def page_params
      params.require(:page).permit(:page_name,:website_id)
    end
end
