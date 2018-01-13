require "./sound-changer/*"
require "csv"

# TODO: Write documentation for `Sound::Changer`
module Sound_Changer
  # TODO: Put your code here
  def test(string : String)
    puts string
  end

  def parse_csv_input(string : String)
    parser = CSV.new(string, headers: true)
    parser.each do |pair|
      puts pair["lhs"] + " → " + pair["rhs"] + "  | " + pair["env"]
    end
  end
end


include Sound_Changer
test "hello world"

parse_csv_input "lhs,rhs,env\na,b,i\nc,d\n😐 ,😂 ,🙈  🙉  🙊  💨  💩"

#CSV.new("lhs,rhs,env\na,b,i\nc,d", headers: true).each do |pair| { puts pair["lhs"] + " " + pair["rhs"] } end