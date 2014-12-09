class HeartsController < ApplicationController
	def create
		@heart = Heart.new(heart_params)

		if @heart.save
			redirect_to @heart.post, notice: "You just hearted this post!"
		else
			redirect_to root_path, notice: "Had an issue hearting that post."
		end
	end

	private
	def heart_params
		params.require(:heart).permit(:post_id)
	end
end