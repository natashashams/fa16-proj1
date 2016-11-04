# Q0: Why is this error being thrown?
The home controller's index method is called when we go to localhost. This method is trying to access Pokemon objects, which we have not defined it yet.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear?
	-The index method in home_controller picks a random pokemon from all wild pokemon using @pokemon = trainerless_pokemon.sample
	-The pokemon then appear because the html file renders @pokemon.name
	-It picks a pokemon from Pokemon.where(trainer: nil), so all of these wild pokemon do not have trainers.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

	-This line creates a button action, which (when clicked) routes capture_path with a patch request. Based on the routes in routes.rb this calls the capture method in the pokemon controller. This also sets the id param to be the current pokemon being displayed.

# Question 3: What would you name your own Pokemon?
	-Yeezysaurus

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
	- I passed root_path into redirect_to so we would be redirected to the home page again
	-root_path is a prefix path, a short name for the path to the root (http://localhost:3000/). Ruby creates these so we can use these instead or writing out explicit paths

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
	-application.html.erb is the default for rendering any page, and already renders 'layouts/messages'. This uses _messages.html.erb, which provides a standard convention to display alerts and other notices, including flash messages! So this is used to display the error message nicely.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
