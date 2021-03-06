class UrlsController < ApplicationController
  before_action :set_url, only: [:show, :update, :destroy]

  # GET /urls
  # GET /urls.json
  def index
    @urls = Url.all

    render json: @urls
  end

  # GET /urls/1
  # GET /urls/1.json
  def show
    # @url = "http://bit.ly/#{@url}"
    render json: @url
  end

  # POST /urls
  # POST /urls.json
  def create
    @url = Url.new(url_params)
    if @url.save
      render json: @url, status: :created, location: @url
    else
      render json: @url.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /urls/1
  # PATCH/PUT /urls/1.json
  def update
    @url = Url.find(params[:id])

    if @url.update(url_params)
      head :no_content
    else
      render json: @url.errors, status: :unprocessable_entity
    end
  end

  # DELETE /urls/1
  # DELETE /urls/1.json
  def destroy
    @url.destroy

    head :no_content
  end

  private

    def set_url
      @url = Url.find(params[:id])
    end

    def url_params
      params.require(:url).permit(:long_url, :token)
    end
end
