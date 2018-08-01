class SleepsController < ApplicationController
	# 認証済みであることを確認
	before_action :authenticate_user!

	@@range = Date.today.beginning_of_day..Date.today.end_of_day

	def index
	  @sleeps = current_user.sleeps
	end

	def index2
	  @sleeps = current_user.sleeps
	end

	def index3
	  @sleeps = current_user.sleeps
	end

	def index4
	  @sleeps = current_user.sleeps
	  @sleeps2 = current_user.sleeps.where(start: @@range)

	end

	def setup
	  @sleeps = current_user.sleeps
	end


	def show
	  @sleep = target_sleep params[:id]
	end

	def new
	  @sleep = Sleep.new
	end

	def create
	  @sleep = current_user.sleeps.new sleep_params
	  @sleep.save!
	  redirect_to @sleep
	end

	def edit
	  @sleep = target_sleep params[:id]
	end

	def update
	  @sleep = target_sleep params[:id]
	  @sleep.update(sleep_params)
	  redirect_to @sleep
	end

	def destroy
	  @sleep = target_sleep params[:id]
	  @sleep.destroy
	  redirect_to sleeps_url
	end

	private

	def target_sleep sleep_id
	  current_user.sleeps.where(id: sleep_id).take
	end

	def sleep_params
	  params.require(:sleep).permit(:start, :finish, :type)
	end
end
