# transmit a wtf and your email to heroku
#
class Heroku::Command::Wtf < Heroku::Command::Base
  # heroku wtf [message]
  # transmit your frustration into the ether.
  def index
    user = Heroku::Auth.user
    wtf = ARGV.size > 2 ? ARGV.drop(1).join(" ") : shift_argument
    url = "https://heroku-wtf.herokuapp.com/wtf"
    print "Venting..."
    Excon.post(url, :body => "user=#{user}&wtf=#{wtf}")
    puts " done"
  end
end
