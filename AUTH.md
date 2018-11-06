# Step 1: Allow Users to register and login
-How does this impact DB
[x] User model
  -email

-What URLs are needed
Build Registration before
[x] GET /users/new -form users#new
[x] POST /users -create the user users#create
[x] build new template for registration
[x] build form for signing up
[x] conditional if user may not be saved
  -don't want an empty field
  -email isn't unique, they need to be unique
  -not email format
  -->will not allow login with empty field(YAY)

Login
[x] GET /login -form
[] POST /sessions -log the user in
  -if user isn't logged in then they can't see app, go back to login page
  -need to log a user in after users#create with sessions

-login issues: ActionController::InvalidAuthenticityToken
  -in appcon, added 'protect_from_forgery with: :exception, prepend: true'
  -still don't know why i keep running into this error
  -currently stopped at raise params.inspect therefore not sure how signup will work, OUT of this in regular
   mode
  -signing up with email is hitting users#create in the least

-sessions issues:
  -root page of :3000 or :3000/ is allowing access to page
  -before_action is set but not being called
  -not sure if it's because i legitimately haven't 'logged out' therefore i'm still granted access
  (don't know how to delete my cookie in browser)
  -routes is currently GET '/logout', to: 'sessions#destroy', not curious why HTTP isn't POST
  -lesson advised against GET '/logout' and to use POST '/logout'
  -logout properly works to reset session and redirect to login page
  -root page properly works by not giving access to app without logging in first

  -Successfully created password with bcyrpt and authenticate password


# Step 2: Create Omniauth successfully
[x] create credentials (google)
[x] add omniauth and omniauth-google
[x] add omniauth.rb file
[x] add dotenv-rails and create .env file
[x] create link to initiate google oauth process
[x] add GET request in routes.rb
[] work out sessions#create with private
[] re-render view upon logging in via oauth
[] inspect returned authentication data

-currently having issues with how to modify sessions#create to actually login a User via google
 (OmniAuth::NoSessionError, Session Expired
  fail(OmniAuth::NoSessionError, "Session Expired") if session["oauth"].nil?)
