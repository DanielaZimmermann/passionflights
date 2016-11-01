class SearchesController < ApplicationController
  before_action :set_search, only: [:show, :edit, :update, :destroy]

  # GET /searches
  # GET /searches.json
  def index
    @searches = Search.all
    @search = Search.new
  end

  # GET /searches/1
  # GET /searches/1.json
  def show
  end

  # GET /searches/new
  def new
    @search = Search.new
  end

  # GET /searches/1/edit
  def edit
  end

  # POST /searches
  # POST /searches.json
  def create
    @search = Search.new(search_params)

    respond_to do |format|
      if @search.save
        format.html { redirect_to @search, notice: 'Search was successfully created.' }
        format.json { render :show, status: :created, location: @search }
      else
        format.html { render :new }
        format.json { render json: @search.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /searches/1
  # PATCH/PUT /searches/1.json
  def update
    respond_to do |format|
      if @search.update(search_params)
        format.html { redirect_to @search, notice: 'Search was successfully updated.' }
        format.json { render :show, status: :ok, location: @search }
      else
        format.html { render :edit }
        format.json { render json: @search.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /searches/1
  # DELETE /searches/1.json
  def destroy
    @search.destroy
    respond_to do |format|
      format.html { redirect_to searches_url, notice: 'Search was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_search
      @search = Search.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def search_params
      params.require(:search).permit(:outbound, :flight_duration, :departure, :return)
    end

     def skyscanner
      url = 'http://partners.api.skyscanner.net/apiservices/browseroutes/v1.0/GB/GBP/en-GB/LON/anywhere/anytime/anytime?apiKey=prtl6749387986743898559646983194'
      uri = URI(url)
      response = Net::HTTP.get(uri)
      result = JSON.parse(response)
      #puts "first response.inspect"
      #puts response.inspect
      #puts "and now result.inspect"
      puts result.inspect
      puts "and now access hash"
      currencies = JSON.parse(response)["Currencies"]
      puts currencies.inspect
      puts "#{currencies[0]["Code"]}"
      quotes = JSON.parse(response)["Quotes"]
      puts "and now quotes"
      puts quotes
      puts "and now quotes.inspect"
      puts quotes.inspect
      sorted_quotes = quotes.sort_by { |quotes| quotes[:MinPrice] }
      puts sorted_quotes
    end
end
