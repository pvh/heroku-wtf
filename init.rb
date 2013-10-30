# transmit a wtf and your email to heroku
#
class Heroku::Command::Wtf < Heroku::Command::Base
  # heroku wtf [message]
  # transmit your frustration into the ether.
  def index
    user = "pvh"
    wtf = "WTF!"
    url = "https://heroku-wtf.herokuapp.com/wtf?user=#{user}&wtf=#{wtf}"
    puts Excon.post(url)
  end
end
