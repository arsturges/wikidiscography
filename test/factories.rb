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

Factory.define :session do |s|
  s.session_date Date.today
  s.circa nil
  s.text_date { Factory.next(:string) }
  s.title { Factory.next(:string) }
  s.association :country
  s.association :state
  s.association :session_type
  s.venue { Factory.next(:string) }
end

Factory.define :session_type do |s|
  s.session_type { Factory.next(:string) }
end

Factory.define :state do |s|
  s.state { Factory.next(:string) }
  s.abbreviation { Factory.next(:string) }
end