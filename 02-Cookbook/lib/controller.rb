require_relative "view"
require_relative "recipe"
class Controller
  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
  end

  def list
    recipes = @cookbook.all
    @view.display(recipes)
  end

  def create
    name = @view.ask_user_name
    description = @view.ask_user_description
    recipe = Recipe.new(name, description)
    @cookbook.add_recipe(recipe)
  end

  def destroy
    list
    number = @view.ask_user_destroy
    @cookbook.remove_recipe(number)
  end
end
