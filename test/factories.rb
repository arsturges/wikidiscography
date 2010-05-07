Factory.sequence :string do |n|
  "String #{n}"
end

Factory.sequence :integer do |n|
  n
end

Factory.define :artist do |a|
  a.first { Factory.next(:string) }
  a.middle { Factory.next(:string) }
  a.last { Factory.next(:string) }
  a.display_name {|b| "#{b.first} #{b.last}" }
  a.association :skill
  a.birth Date.today - 20.years
  a.death Date.today
  a.birth_place { Factory.next(:string) }
  a.death_place { Factory.next(:string) }
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

Factory.define :skill do |s|
  s.skill { Factory.next(:string) }
  s.abbreviation { Factory.next(:string) }
  s.sort { Factory.next(:integer) }
end

Factory.define :song do |s|
  s.title { Factory.next(:string) }
  s.association :song_form
end

Factory.define :song_form do |s|
  s.song_form { Factory.next(:string) }
end

Factory.define :state do |s|
  s.state { Factory.next(:string) }
  s.abbreviation { Factory.next(:string) }
end