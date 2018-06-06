class TipsController < ApplicationController

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

end
