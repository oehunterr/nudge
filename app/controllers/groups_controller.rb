class GroupsController < ApplicationController
  def index
    @groups = Group.all
    @habits = Habit.all
  end

  def new
    @group = Group.new
    @habits = Habit.all.where(user_id: current_user.id)
  end

  def show
    @group = Group.find(params[:id])
  end

  def create
    @group = Group.new(groups_params)
    if @group.save
      UserGroup.create(user: current_user, group: @group, creator: true)
      redirect_to new_group_user_group_path(@group.id)
    else
      render :new
    end
  end

  def update
    @group = Group.find(params[:id])
    @group.update(params[:group])
  end

  def destroy
    @group = Group.find(params[:id])
    @group.destroy
  end

  private

  def groups_params
    params.require(:group).permit(:name, :habit_id)
  end

  def user_group_creator
    params(user_id: current_user.id)
  end
end

# create private method user_group_creator[current_user]
# user_group.new
# change creator to true
# ~
