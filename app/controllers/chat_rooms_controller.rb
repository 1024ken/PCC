class ChatRoomsController < ApplicationController
  def index
    @chat_messages = ChatMessage.all
  end
end
