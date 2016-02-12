class MembersController < ApplicationController
    
    def index
       @members = Member.all 
    end 
    
    def create
        @member = Member.create( memeber_params )
    end

private

# Use strong_parameters for attribute whitelisting
# Be sure to update your create() and update() controller methods.

def member_params
  params.require(:member).permit(:avatar)
end

end
