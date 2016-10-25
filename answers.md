# Q0: Why is this error being thrown?

The error stems from this line: `trainerless_pokemon = Pokemon.where(trainer: nil)`.
We haven't created the Pokemon model yet, so Rails does not know what `Pokemon` is.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *

They are appearing by selecting a random pokemon in our database. The common factor is that they all exist inside our Pokemon table.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

When the user clicks the button, it sends a 'patch' request to the path specified by capture_path, along with the pokemon id.

# Question 3: What would you name your own Pokemon?
tbh i don't really know what pokemon is. ill probably name it jonathan chu

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed in `trainer_path` along with the current trainer's id.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
When the erb file renders, it checks to see if any flash messages are defined. Since flash is defined for :error, it will render the message.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
