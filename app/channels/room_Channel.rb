
class RoomChannel < ApplicationCable::Channel
#	idntified_by :uuid
	
#	def connect
#		self.uuid = SecureRandmo.urlsafe_base64
#	end
	
	def subscribed
		# 접속시 채널알림
		stream_from 'room_channel'
		logger.debug("subscribed to the room");
		#stream_from "player_#{uuid}"
	end

	def unsubscribed
		# Any cleanup needed when channel is unsubscribed
	end
	
#	def join(data)
#	end

	
	def speak(data)
		#ActionCable.server.broadcast title: 'room_channel', message: "#{data['message']} from server"
	end

end
