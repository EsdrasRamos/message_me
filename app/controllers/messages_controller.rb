class MessagesController < ApplicationController
    before_action :require_user

    def create
        message = current_user.messages.build(message_params)
        if message.save
            redirect_to root_path
        end
    end
    
    private

    def message_params
        params.require(:message).permit(:body)
    end
end


 Add actual messages from
table, Add message partial and refactor
some code, Start authentication system, Add authentication system - create
and destroy sessions, Enable flash messages display, Restrict views at controller layer, Add messages from UI