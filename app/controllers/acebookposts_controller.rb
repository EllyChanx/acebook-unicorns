class AcebookpostsController < ApplicationController
  before_action :set_acebookpost, only: [:show, :edit, :update, :destroy]

  # GET /acebookposts
  # GET /acebookposts.json
  def index
    @acebookposts = Acebookpost.all
  end

  # GET /acebookposts/1
  # GET /acebookposts/1.json
  def show
  end

  # GET /acebookposts/new
  def new
    @acebookpost = Acebookpost.new
  end

  # GET /acebookposts/1/edit
  def edit
  end

  # POST /acebookposts
  # POST /acebookposts.json
  def create
    @acebookpost = Acebookpost.new(acebookpost_params)

    respond_to do |format|
      if @acebookpost.save
        format.html { redirect_to @acebookpost, notice: 'Acebookpost was successfully created.' }
        format.json { render :show, status: :created, location: @acebookpost }
      else
        format.html { render :new }
        format.json { render json: @acebookpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /acebookposts/1
  # PATCH/PUT /acebookposts/1.json
  def update
    respond_to do |format|
      if @acebookpost.update(acebookpost_params)
        format.html { redirect_to @acebookpost, notice: 'Acebookpost was successfully updated.' }
        format.json { render :show, status: :ok, location: @acebookpost }
      else
        format.html { render :edit }
        format.json { render json: @acebookpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /acebookposts/1
  # DELETE /acebookposts/1.json
  def destroy
    @acebookpost.destroy
    respond_to do |format|
      format.html { redirect_to acebookposts_url, notice: 'Acebookpost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_acebookpost
      @acebookpost = Acebookpost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def acebookpost_params
      params.require(:acebookpost).permit(:content)
    end
end
