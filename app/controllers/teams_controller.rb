class TeamsController < ApplicationController
before_action :logged_in_user, only: [:create]

def create
	@team = Team.new(team_params)
	if @team.save
      flash[:success] = params[:teamname]
	end
end

def new
 @team = Team.new
end

def showteams
	@teams = current_user.teams
	@allteams = Team.all
end

def update
	@team= Team.find(params[:id])
	@team.update_attributes(team_params)
end

def edit
	@team = Team.find(params[:id])
end

def show
	@team = Team.find(params[:id])
end

  private

    def team_params
      params.require(:team).permit(:teamname,
									:user_id,
									:correctness,
									:correctness_comments,
									:relevance,									:relevance_comments,
									:creativity,
									:creativity_comments,
									:userexperience,
									:userexperience_commoents,
									:sustainability,
									:sustainability_comments)
    end
end
