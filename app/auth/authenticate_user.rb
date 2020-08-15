# Authenticate User by JWT
class AuthenticateUser
  def initialize(login, password, user_ip)
    @login = login
    @password = password
    @user_ip = user_ip
  end

  # Service entry point
  def call
    JsonWebToken.encode(user_id: user.id, user_ip: @user_ip) if user
  end

  private

  attr_reader :email, :password, :user_ip

  # verify user credentials
  def find_user
    user = User.find_by(email: @login)
    return user if user

    User.find_by(username: @login)
  end

  def user
    user = find_user
    return user if user&.authenticate(password)

    # raise Authentication error if credentials are invalid
    raise(ExceptionHandler::AuthenticationError, Message.invalid_credentials)
  end
end
