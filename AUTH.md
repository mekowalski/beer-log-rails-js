# Step 1: Allow Users to register and login
-How does this impact DB
[x] User model
  -email

-What URLs are needed
Build Registration before
[x] GET /users/new -form users#new
[x] POST /users -create the user users#create
[] build new template for registration
  -build form for signing up

Login
[] GET /login -form
[] POST /sessions -log the user in

-issues: ActionController::InvalidAuthenticityToken
  -in appcon, added 'protect_from_forgery with: :exception, prepend: true'
  -still don't know why i keep running into this error
  -currently stopped at raise params.inspect therefore not sure how signup will work, OUT of this in regular
   mode
  -signing up with email is hitting users#create in the least