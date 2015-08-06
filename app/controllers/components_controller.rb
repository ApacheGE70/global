class ComponentsController < ApplicationController
	before_action :set_component, only: [:show, :edit, :update, :destroy]


	  # GET /components
	  # GET /components.json
	  def index
	    @components = Component.all
	  end

	  # GET /components/1
	  # GET /components/1.json
	  def show
	  end

	  # GET /components/new
	  def new
	    @component = Component.new
	  end

	  # GET /components/1/edit
	  def edit
	  end

	  # POST /components
	  # POST /components.json
	  def create

	    @component = Component.new(component_params)
	    @parameter_suka = params

	    respond_to do |format|
	      if @component.save(component_params)
	        format.html { render :index, notice: "ОХУЕТЬ, СОЗДАЛОСЬ!!!" }
	        format.json { render :show, status: :created, location: @component }
	      else
	        format.html { render :new }
	        format.json { render json: @component.errors, status: :unprocessable_entity }
	      end
	    end
	  end

	  # PATCH/PUT /components/1
	  # PATCH/PUT /components/1.json
	  def update
	    respond_to do |format|
	      if @component.update(component_params)
	        format.html { render :new, notice: 'Component was successfully updated.' }
	        format.json { render :show, status: :ok, location: @component }
	      else
	        format.html { render :edit }
	        format.json { render json: @component.errors, status: :unprocessable_entity }
	      end
	    end
	  end

	  # DELETE /components/1
	  # DELETE /components/1.json
	  def destroy
	    @component.destroy
	    respond_to do |format|
	      format.html { redirect_to components_url, notice: 'Component was successfully destroyed.' }
	      format.json { head :no_content }
	    end
	  end

	  private
	    # Use callbacks to share common setup or constraints between actions.
	    def set_component
	      @component = Component.find(params[:id])
	    end

	    # Never trust parameters from the scary internet, only allow the white list through.
	    def component_params
	      params.require(:component).permit(:menu_type, :component_name, :description, :likes, :user_id, :created_at, :updated_at)
	    end
end
