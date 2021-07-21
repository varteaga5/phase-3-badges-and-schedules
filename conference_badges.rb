# Write your code here.
  #badge_maker
#   returns a formatted badge (FAILED - 1)
def badge_maker (arg)
    return "Hello, my name is #{arg}."
end 

#batch_badge_creator
    # returns a list of badge messages (FAILED - 2)
    # does not hard-code response (FAILED - 3)
def batch_badge_creator (arg)
    return arg.map{ |guest| badge_maker(guest)}
end

    #assign_rooms
    # returns a list of welcome messages and room assignments (FAILED - 4)
    # does not hard-code the response (FAILED - 5)
def assign_rooms (arg)
    i = 0
 return arg.map{|guest| "Hello, #{guest}! You'll be assigned to room #{i += 1}!"}
end

    #printer
    # outputs the list of badges and room_assignments (FAILED - 6)

def printer (arg)
    # recieving an array    
    print batch_badge_creator(arg).each{|el| puts el}
    print assign_rooms(arg).each{|el| puts el}
end

=begin 

  5) conference_badges #printer outputs the list of badges and room_assignments
     Failure/Error: expect($stdout).to receive(:puts).with(line.chomp)
     
       (#<IO:<STDOUT>>).puts("Hello, my name is Edsger.")
           expected: 1 time with arguments: ("Hello, my name is Edsger.")
           received: 0 times
     # ./spec/conference_badges_spec.rb:107:in `block (4 levels) in <top (required)>'
=end