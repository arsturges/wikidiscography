Factory.sequence :string do |n|
  "String #{n}"
end

Factory.sequence :integer do |n|
  n
end


Factory.define :country do |c|
  c.country { Factory.next(:string) }
  c.abbreviation { Factory.next(:string) }
end