require 'rubygems'
require 'mechanize'
require 'gmail'

print "Please enter your gmail address: "
address = gets.chomp
`stty -echo`
print "Please enter password: "
password = gets.chomp
`stty echo`
puts ""

puts "Logging in to gmail..."

Gmail.new(address, password) do |gmail|
  puts "Logged in"
  br = Mechanize.new

  loop do
    puts "#{ Time.now }: Checking Learn..."
    begin
      page = br.get("https://learn.uwaterloo.ca")
    rescue
      errored = true
    end
    if page.body =~ /maintenance\.jpg/ || errored # that blue gear we are all tired of
      errored = false
      puts "#{ Time.now }: Still down. Waiting 5 minutes."
      sleep(300) # wait 5 minutes
      next
    end

    puts "#{ Time.now }: IT'S UP!!!!!!!!!!!!!!!!!!!!! Sending email."
    gmail.deliver do
      to address
      subject "LEARN IS BACK"
    end
    puts "Email sent. Exiting."
    exit
  end
end

