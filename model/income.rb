require 'aws-sdk'

class Income < AWS::Record::HashModel
  string_attr   "description"
  string_attr     "teamname"
  string_attr     "playername1"
  string_attr     "playername2"
  timestamps

end
