# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
    attr_accessor :email
      
    def initialize(email)
       @email = email
     end
      
    def parse
      email_array = @email.split(/[, ]/).uniq
      email_array.reject! {|element| element.empty?}
      email_array
    end
   end
      
  email = "avi@test.com, arel@test.com test@avi.com, test@arel.com"
  parser = EmailAddressParser.new(email)
  
  