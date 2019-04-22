class Application


  def call(env)

    resp = Rack::Response.new

    time = Time.now
    noon_time = Time.new(time.year, time.month, time.day, 12)
    if time < Time.new(time.year, time.month, time.day, 12)
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish

  end




end
