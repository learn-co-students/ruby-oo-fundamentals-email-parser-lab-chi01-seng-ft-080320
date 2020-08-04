class EmailAddressParser
    attr_accessor :email
      
    def initialize(email)
       @email = email
     end
      
    def parse
       @email.split(/[,\s]+/).uniq
    end
   end
      
  email= "avi@test.com, arel@test.com test@avi.com, test@arel.com"
  parse = EmailAddressParser.new(email)
