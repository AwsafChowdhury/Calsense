class RecipesController < ApplicationController
    before_action :set_recipe, only: [:show, :edit, :update, :destroy]
  
    def index
      @recipes = Recipe.all
    end
  
    def show
      @recipe = Recipe.find(params[:id])
    end
  
    def new
      @recipe = Recipe.new
    end
  
    def create
      @recipe = Recipe.new(recipe_params)
  
      if @recipe.save
        redirect_to @recipe, notice: 'Recipe was successfully created.'
      else
        render :new
      end
    end
  
    def edit
      # Use set_recipe before_action to find the specific recipe
    end
  
    def update
      if @recipe.update(recipe_params)
        redirect_to @recipe, notice: 'Recipe was successfully updated.'
      else
        render :edit
      end
    end
  
    def destroy
      @recipe.destroy
      redirect_to recipes_url, notice: 'Recipe was successfully destroyed.'
    end
  
    private
  
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end
  
    def recipe_params
      params.require(:recipe).permit(:name, :category, :meal_category, :instructions)
    end
  end
  