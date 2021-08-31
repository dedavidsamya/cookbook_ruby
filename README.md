This is a practice exercise about Object Oriented Programming in Ruby. 
The highlights of working on this app were learning the MVC architecture, the Single Responsibility Principle (where each class
has only one purpose), and the Separation of Concerns, a pattern to make modular programs - where each part (module) is responsible for
addressing one functionality of the program.
These design patterns have the purpose of making code more abstract, thus more reusable and easier to maintain - the more independent 
the parts of the program are, lesser parts need to be refactored in case there is a bug and something needs to be changed.

My app contains:
1) A Recipe Model with its instance variables (the name and the description of a recipe);

2) A Repository that acts like a database (the Cookbook class) containing 4 methods:
a) initialize(csv_file_path) which loads existing Recipe from the CSV
b) all which returns all the recipes
c) add_recipe(recipe) which adds a new recipe to the cookbook
d) remove_recipe(recipe_index) which removes a recipe from the cookbook;

3) The controller, which is the communication bridge between the View (user) and the Repository (database), and allows the user to 
list, create and delete recipes through its 4 methods:
a) initialize (initializes an instance of cookbook)
b) list
c) create
d) destroy

4)The view, where the user interacts with the program and can perform the actions above described.

