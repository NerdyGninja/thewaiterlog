class TipsController < ApplicationController
<<<<<<< HEAD

	def create
		@user = User.find(params[:user_id])
		@tip = @user.tips.new(tip_params)
		@tip.user = current_user
		@tip.save
		redirect_to user_tip(@tip)
	end

	def destroy
	end

	private

		def tip_params
			params.require(:tip).permit(:user_id, :date, :hours, :amount, :comment)
		end

=======
  before_action :authenticate_user!
  before_action :set_tip, only: [:show, :edit, :update, :destroy]

  # GET /tips
  # GET /tips.json
  def index
    @tips = Tip.all
  end

  # GET /tips/1
  # GET /tips/1.json
  def show
  end

  # GET /tips/new
  def new
   @user = User.find(params[:user_id])
   @tip = Tip.new
  end

  # GET /tips/1/edit
  def edit
  end

  # POST /tips
  # POST /tips.json
  def create
   @user = User.find(params[:user_id])
   @tip = @user.tips.new(tip_params)

    respond_to do |format|
      if @tip.save
        format.html { redirect_to user_tips_url, notice: 'Tip was successfully created.' }
        format.json { render :show, status: :created, location: @tip }
      else
        format.html { render :new }
        format.json { render json: @tip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tips/1
  # PATCH/PUT /tips/1.json
  def update
    respond_to do |format|
      if @tip.update(tip_params)
        format.html { redirect_to user_tips_url, notice: 'Tip was successfully updated.' }
        format.json { render :show, status: :ok, location: @tip }
      else
        format.html { render :edit }
        format.json { render json: @tip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tips/1
  # DELETE /tips/1.json
  def destroy
    @tip.destroy
    respond_to do |format|
      format.html { redirect_to user_tips_url, notice: 'Tip was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tip
      @user = User.find(params[:user_id])
      @tip = Tip.find(params[:id])
      @tip.user = current_user
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tip_params
      params.require(:tip).permit(:user_id, :date, :hours, :amount, :comment)
    end
>>>>>>> authorization
end
