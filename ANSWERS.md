# Q0: Why is this error being thrown?
Because there is no Pokemon controller. We must create it.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
Random Pokemon are appearing because they are the Pokemon that are hard coded into the seed file.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
It creates a button that, when clicked, sends a patch request to the capture path, passing in the Pokemon's id as input.  

# Question 3: What would you name your own Pokemon?
PokeyManz

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed in "/trainers"+trainer.to_s where trainer was the trainer's id. 

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
