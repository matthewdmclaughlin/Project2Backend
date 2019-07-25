class DvdsController < OpenReadController
  before_action :set_dvd, only: [:show, :update, :destroy]

  # GET /dvds
  def index
    @dvds = Dvd.all

    render json: @dvds
  end

  # GET /dvds/1
  def show
    render json: @dvd
  end

  # POST /dvds
  def create
    @dvd = current_user.dvds.build(dvd_params)

    if @dvd.save
      render json: @dvd, status: :created, location: @dvd
    else
      render json: @dvd.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /dvds/1
  def update
    if @dvd.update(dvd_params)
      render json: @dvd
    else
      render json: @dvd.errors, status: :unprocessable_entity
    end
  end

  # DELETE /dvds/1
  def destroy
    @dvd.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dvd
      @dvd = current_user.Dvd.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def dvd_params
      params.require(:dvd).permit(:title, :year, :starring, :synopsis, :user_id)
    end
end
