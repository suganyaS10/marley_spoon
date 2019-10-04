class RecipesController < ApplicationController

  def index
  end

  def show_recipe
    @recipe_sys_id = params[:id]
  end
end
