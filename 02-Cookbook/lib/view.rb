require "pry-byebug"
class View
  def display(recipes)
    recipes.each_with_index do |recipe, index|
      puts "#{index + 1}. #{recipe.name}, #{recipe.description}"
    end
  end

  def ask_user_name
    puts "What is the name of your recipe?"
    return gets.chomp
  end

  def ask_user_description
    puts "What is the description of the recipe?"
    return gets.chomp
  end

  def ask_user_destroy
    puts "Which recipe do you want to delete? (Number)"
    return gets.chomp.to_i
  end
end
