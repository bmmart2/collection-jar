class VideogamesController < ApplicationController
  before_action :set_videogame, only: [:show, :edit, :update, :destroy]

  # GET /videogames
  # GET /videogames.json
  def index

    if user_signed_in?
        @videogames = current_user.videogames.all
    else
        redirect_to :root
    end
  end

  # GET /videogames/1
  # GET /videogames/1.json
  def show
  end

  # GET /videogames/new
  def new
    @videogame = current_user.videogames.new
  end

  # GET /videogames/1/edit
  def edit
  end

  # POST /videogames
  # POST /videogames.json
  def create
      @videogame = current_user.videogames.create(videogame_params)
      @videogame.save
    respond_to do |format|
      if @videogame.save
        format.html { redirect_to @videogame, notice: 'Videogame was successfully created.' }
        format.json { render :show, status: :created, location: @videogame }
      else
        format.html { render :new }
        format.json { render json: @videogame.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /videogames/1
  # PATCH/PUT /videogames/1.json
  def update
    respond_to do |format|
      if @videogame.update(videogame_params)
        format.html { redirect_to @videogame, notice: 'Videogame was successfully updated.' }
        format.json { render :show, status: :ok, location: @videogame }
      else
        format.html { render :edit }
        format.json { render json: @videogame.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /videogames/1
  # DELETE /videogames/1.json
  def destroy
    @videogame.destroy
    respond_to do |format|
      format.html { redirect_to videogames_url, notice: 'Videogame was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_videogame
      @videogame = Videogame.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def videogame_params
      params.require(:videogame).permit(:title, :publisher, :platform, :year, :condition, :upc)
    end
end
