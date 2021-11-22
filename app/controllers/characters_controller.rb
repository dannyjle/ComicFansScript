class CharactersController < ApplicationController
  before_action :set_character, only: %i[ show edit update destroy ]

  # GET /characters or /characters.json
  def index
    @characters = Character.all
    @comics = Comic.all
    @powers = Power.all
  end

  # GET /characters/1 or /characters/1.json         
  def show
  end
  
  # GET /characters/new
  def new
    @character = Character.new
    @comics = Comic.all
  end

  # GET /characters/1/edit
  def edit
    @comic = @character.comic
    @comics = Comic.all
  end

  # POST /characters or /characters.json
  def create
    @character = Character.new(character_params)

    respond_to do |format|
      if @character.save
        format.html { redirect_to @character, notice: "Your character was successfully created!" }
        format.json { render :show, status: :created, location: @character }
      else
        format.html { @comics = Comic.all render :new, status: :unprocessable_entity }
        format.json { render json: @character.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /characters/1 or /characters/1.json
  def update
    respond_to do |format|
      if @character.update(character_params)
        format.html { redirect_to @character, notice: "Your character was successfully updated!" }
        format.json { render :show, status: :ok, location: @character }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @character.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /characters/1 or /characters/1.json
  def destroy
    @character.destroy
    respond_to do |format|
      format.html { redirect_to characters_url, notice: "Your character was successfully destroyed!" }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character
      @character = Character.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def character_params
      params.require(:character).permit(:name, :comic_id, :first_appearance, :alter_ego, :location, :bio, :main_picture)
    end
end
