class ClientsController < ApplicationController
	before_action :set_client, only: [:show, :edit, :update, :destroy]

	# GET /clients
	def index
		@clients = Client.all.order("created_at DESC")
	end

	# GET /clients/1
	def show
		@clients = Client.find(params[:id])
	end

	# GET /clients/new
	def new
		@client = current_user.clients.build
	end

	# GET /clients/1/edit
	def edit
	end

	# POST /clients
	def create
		@client = current_user.clients.build(client_params)

		if @client.save
			redirect_to @client, notice: 'Client was successfully created.'
		else
			render action: 'new'
		end
	end

	# PATCH/PUT /clients/1
	def update
    @client = Client.find(params[:id])
  		if @client.update(client_params)
  			redirect_to @client, notice: 'Client was successfully updated.'
  		else
  			render :edit
  		end
	end


	# DELETE /clients/1
	def destroy
		@client.destroy
			redirect_to clients_url, notice: 'Client was successfully destroyed.'
	end

	private

		# Use callbacks to share common setup or constraints between actions.
		def set_client
			@client = Client.find(params[:id])
		end

		# Never trust parameters from the scary internet, only allow the white list through.
		def client_params
			params.require(:client).permit(:description)
		end

end