require 'json'

class Session
  # find the cookie for this app
  # deserialize the cookie into a hash
  def initialize(req)
    debugger
    cookie = req.cookies["_rails_lite_app"]
    
    @session_cookie = {}
    if cookie 
      #use json to deserialize and store in @cookie
      @session_cookie = JSON.parse(cookie)
    
    end
  end

  def [](key)
    @session_cookie[key]
  end

  def []=(key, val)
    @session_cookie[key] = val
  end

  # serialize the hash into json and save in a cookie
  # add to the responses cookies
  def store_session(res)
    res.set_cookie()
  end
end
