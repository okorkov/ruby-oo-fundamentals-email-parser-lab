# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
    attr_accessor :email_addresses
    def initialize(email)
        @@email = email
    end
    def parse
        result = Array.new
        @emails = Array.new
        @email_addresses = @@email.split(', ').uniq
        @email_addresses.each do |email|
          result << email.split(' ')
        end
        result.flatten
    end
end
