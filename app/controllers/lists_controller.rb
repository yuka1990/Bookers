class ListsController < ApplicationController
  def new
    @list = List.new
    @lists = List.all
  end
  
  def create
    @list = List.new(list_params)
    # ビューファイルへの受け渡しが必要でないため
    if @list.save
      redirect_to list_path(@list.id)
    else
      @lists = List.all
      render :new
    end
  end

  def show
    @list = List.find(params[:id])
  end

  def edit
    @list = List.find(params[:id])
  end
  
  def update
    list = List.find(params[:id])
    list.update(list_params)
    redirect_to list_path(list.id)
  end
  
  def destroy
    list= List.find(params[:id])
    list.destroy
    redirect_to '/lists/new'
  end
  
  private
  def list_params
    params.require(:list).permit(:title, :body)
  end
end
