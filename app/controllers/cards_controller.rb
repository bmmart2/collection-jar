class CardsController < ApplicationController
  before_action :set_card, only: [:show, :edit, :update, :destroy]
  helper_method :sort_column, :sort_direction
  # GET /cards
  # GET /cards.json
  def index

    if user_signed_in?
      #Loads default sort case instead of .all
      @cards = current_user.cards.order(sort_column + " " + sort_direction)
    else
      redirect_to :root
    end
  end

  # GET /cards/1
  # GET /cards/1.json
  def show
  end

  # GET /cards/new
  def new
    @card = current_user.cards.new
  end

  # GET /cards/1/edit
  def edit
  end

  # POST /cards
  # POST /cards.json
  def create
    @card = current_user.cards.create(card_params)

    respond_to do |format|
      if @card.save
        format.html { redirect_to @card, notice: 'Card was successfully created.' }
        format.json { render :show, status: :created, location: @card }
      else
        format.html { render :new }
        format.json { render json: @card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cards/1
  # PATCH/PUT /cards/1.json
  def update
    respond_to do |format|
      if @card.update(card_params)
        format.html { redirect_to @card, notice: 'Card was successfully updated.' }
        format.json { render :show, status: :ok, location: @card }
      else
        format.html { render :edit }
        format.json { render json: @card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cards/1
  # DELETE /cards/1.json
  def destroy
    @card.destroy
    respond_to do |format|
      format.html { redirect_to cards_url, notice: 'Card was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_card
      @card = Card.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def card_params
      params.require(:card).permit(:title, :content)
    end

    #Spooky internet, only sort by specific columns
    def sortable_columns
        ["title", "content"]
    end

    #Default sort and specified column check
    def sort_column
      sortable_columns.include?(params[:column]) ? params[:column] : "title"
    end

    #Default sort and specified direction check
    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end
end
