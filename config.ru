require_relative './config/environment'

# mount our app controller; RUN top level controller
# mount our other controllers; USE secondary level controllers
run ApplicationController
use TweetsController