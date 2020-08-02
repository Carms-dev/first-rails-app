class PagesController < ApplicationController
    def home

    end

    def about

    end
    
    def contact
        @members = ['ohana', 'pumba', 'cynti', 'carms', 'iyan', 'shanny']
        
        if params[:member]
            @members = @members.select { |member| member.start_with?(params[:member].downcase) }
        end
    end
    
end
