class CommunitiesController < ApplicationController
  before_action :set_community, only: [:show, :update]
  #updating community will only be to increase number of members as people join (secret form)

  #after authentication is done - need to add data for userCommunities to index route. Something like:

  # userCommunities = Community.where(user_id = session_id)?

  # GET /communities
  def index
    @communities = Community.all

    render json: @communities.to_json(include: :posts)
  end

  # GET /communities/1
  def show
    render json: @community.to_json(include: :posts)
  end

  # POST /communities
  def create
    @community = Community.new(community_params)

    if @community.save
      render json: @community, status: :created
    else
      render json: @community.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /communities/1
  def update
    if @community.update(community_params)
      render json: @community
    else
      render json: @community.errors, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_community
      @community = Community.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def community_params
      params.require(:community).permit(:name, :num_of_members)
    end
end
