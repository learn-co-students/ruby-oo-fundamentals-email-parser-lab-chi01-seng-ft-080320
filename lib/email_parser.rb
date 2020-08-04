# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailAddressParser

    attr_accessor :email
    def  initialize(emails)
      @email = emails
    end

    def parse
      #[] denotes character set containing commas (',') and whitespace (' ')
      #.uniq removes duplicates and returns new array
      email_array = @email.split(/[, ]/).uniq
      #.reject! returns new array with elements that do not meet condition
      #condition: .empty returns false if self contains no elements
      #this removes empty elements from the array
      email_array.reject! do |element| 
        element.empty?
      end
      email_array
    end

  end

  