# Step 1: Allow Users to register and login
-How does this impact DB
[x] User model
  -email

-What URLs are needed
Build Registration before
[x] GET /users/new -form users#new
[x] POST /users -create the user users#create
[] build new template for registration

Login
[] GET /login -form
[] POST /sessions -log the user in
