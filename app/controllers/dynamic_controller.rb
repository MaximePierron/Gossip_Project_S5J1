class DynamicController < ApplicationController
    attr_accessor :gossips, :gossip, :author
    def home_first_name
        @gossips = Gossip.all
    end
    
    def home
        @gossips = Gossip.all
	end
	
    def gossip
        @gossip = Gossip.find_by(id: params[:id])
        @author = User.find_by(id: @gossip.user_id)
    end

    def author 
        @gossip = Gossip.find_by(id: params[:id])
        @author = User.find_by(id: @gossip.user_id)
    end
  end