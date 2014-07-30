class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def show
    @i = Idea.find_by_id(params['id'])
  end
  
  def new
  end
  
  def create
    i = Idea.new
    i.name = params['name']
    i.desc = params['desc']
    i.save
    redirect_to "/ideas/#{ i.id }"
  end
  
  def edit
    @i = Idea.find_by_id(params['id'])
  end
  
  def update
    i = Idea.find_by_id(params['id'])
    i.name = params['name']
    i.desc = params['desc']
    i.save
    redirect_to "/ideas/#{ i.id }"
  end
  
  def destroy
    p = params['id']
    i = Idea.find_by_id(p)
    i.destroy
    redirect_to "/ideas"
  end
  
  def index
    @ideas = Idea.all
  end
  
end
