# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require "pry"


class EmailAddressParser 
    attr_reader :email_list

    def initialize (email_list)
        @email_list = email_list
    end 

    def parse
        # @arr = email_list.split.collect do |email|
        #     email_list.split(", ")
        # end 

        @arr = email_list.split.collect do |email|
                email.split(",")
                end 

        @arr.flatten.uniq
    end 
end 



 pp EmailAddressParser.new("arel@test.com charliepatron@gmail.com").parse

