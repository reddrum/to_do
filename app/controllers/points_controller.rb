class PointsController < ApplicationController
  before_action :set_item
  before_action :set_point, except: [:create]

  def create
    @point = @item.points.create(point_params)
    redirect_to item_path(@item)
  end

  def destroy
    if @point.destroy
      flash[:success] = "ToDoList item was deleted."
    else
      flash[:error] = "ToDoList item could not deleted."
    end
    redirect_to @item
  end

  def complete
    @point.update_attribute(:completed_at, Time.now)
    redirect_to @item, notice: "ToDo point completed"
  end

  private

  def set_item
    @item = Item.find(params[:item_id])
  end

  def set_point
    @point = @item.points.find(params[:id])
  end

  def point_params
    params[:point].permit(:content)
  end
end
