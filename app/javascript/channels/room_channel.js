import consumer from "./consumer"


consumer.subscriptions.create( 
{
  channel: "RoomChannel",
  // Called once when the subscription is created.
  initialized()
  {
	  console.log("initialized to the room");
  },
	
  // Called when the subscription is ready for use on the server'
  connected() 
  {
	console.log("connected to the room");
  },

  // Called when the subscription has been terminated by the server
  disconnected() 
  {
    console.log("disconnected to the room");
  },
	
  // Called when the subscription is rejected by the server.
  //rejected()
  //{
	  
  //},

  received(data) 
  {
    // Called when there's incoming data on the websocket for this channel
    //$('#msg').append('<div class="message"> ' + data.content + '</div>')
	console.log("Recieving:")
	console.log(data.content)
  }

});


let submit_messages;

$(document).on('turbolinks:load', function() 
{
	submit_messages()
})

submit_messages = function()
{
	$('message_content').on('keydown', function(event)
    {
		if(event.keycode == 13)
		{
			$('input').click()
			event.target.value = ''
			event.preventDefault()
		}
	})
}