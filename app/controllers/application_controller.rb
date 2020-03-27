class ApplicationController < ActionController::API

def get_auth_header
    request.headers["Authorization"]
end

def session_user
    User.find_by(id: get_auth_header)
end


end
