class MessagesController < ApplicationController
	 #skip_before_action :verify_authenticity_token, raise: false
	
	def new
		@message = Message.new
	end
	
	def create
		@message = Message.create(msg_params)
		if @message.save
			# 서버에서 클라로 데이터 보내기 
			ActionCable.server.broadcast "room_channel", content: @message.content
		else
		
		end
		
	end
	
	private
	
	def msg_params
		params.require(:message).permit(:content)
	end

end
