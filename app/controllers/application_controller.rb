class ApplicationController < ActionController::API
  include ActionController::Serialization
  include ExceptionHandler
  include Response
end
