# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
    #initialize email addresses
    def initialize(email_addresses)
        @email_addresses = email_addresses
    end
    #get and set email addresses
    attr_accessor :email_addresses 

    #define parse method
    def parse
       email_array = @email_addresses.split(/[,\s]+/) #this seperates the string of emails into the array of seperate emails
       email_array.uniq #this will make sure there are no duplicates in the array
    end

end #of EmailAddressParser class