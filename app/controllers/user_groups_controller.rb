class UserGroupsController < ApplicationController
  def create
    @group = Group.find(params[:group_id])
    @user_group = UserGroup.new(user_group_params)
    @user_group.group = @group
    if @user_group.save
      redirect_to groups_path
    else
      render :new
    end
  end

  def new
    @group = Group.find(params[:group_id])
    @user_group = UserGroup.new
    @users = User.all
  end

  private

  def user_group_params
    params.require(:user_group).permit(:user_id, :group_id, :creator)
  end
end
# create user_groups controller, action create
# add the simple form for [@group, @user_group] # @user_grouo = UserGroup.new
# write in the code in the create of user_grouos controller