class UserGroupsController < ApplicationController
  def create
    @group = Group.find(params[:group_id])
    @users = User.where(id: params[:user_group][:user_id])
    @users.each do |user|
      user_group = UserGroup.new(user_id: user.id, group_id: @group.id)
      user_group.save
    end
    redirect_to groups_path
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
