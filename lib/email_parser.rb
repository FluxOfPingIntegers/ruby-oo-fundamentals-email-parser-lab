# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
attr_accessor :emails

def initialize(emails)
@emails = emails
end

def parse
answer = @emails.split(" ").each do |i|
    if i.end_with?(",")
        i.slice!(-1)
    end
    end
    answer.uniq
end
end