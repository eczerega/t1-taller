require 'base64'
require 'openssl'
class ValidadorController < ApplicationController

	def validar
	    @mensaje = params[:mensaje].to_s
	    @hash = params[:hash].to_s
	    @encoded_string = Digest::SHA256.hexdigest @mensaje
	    #@encoded_string = @encoded_string.chomp
	    puts @hash
	    puts @mensaje
	    if @hash!='' && @mensaje != ''
	    	begin 
			    @retorner = false
		    	if @hash.downcase  == @encoded_string
		    		@retorner =true
		    	end
		    	@response = {:mensaje => @mensaje, :valido => @retorner, :status => 200}	
		    	render json: @response.to_json
	    	rescue Exception => e
		    	render json: {
				  error: "Error del servidor",
				  status: 500
				}, status: 500	
	    	end

    	else
	    	render json: {
			  error: "Request no tiene parametros correctos",
			  status: 400
			}, status: 400	
	    end

	end

	def status
		render json: {
		  status: 201
		}, status: 201	
	end


end
