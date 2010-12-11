Factory.sequence :string do |n|
  "String #{n}"
end

Factory.sequence :integer do |n|
  n
end

Factory.define :artist do |a|
  a.first { Factory.next(:string) }
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

Factory.define :label do |l|
  l.label { Factory.next(:string) }
  l.association :country
end

Factory.define :medium do |m|
  m.medium { Factory.next(:string) }
  m.sort { Factory.next(:integer) }
end

Factory.define :performance_type do |p|
  p.performance_type { Factory.next(:string) }
end

Factory.define :performance do |p|
  p.association :music_session
  p.association :song
  p.association :performance_type
  p.duration "00:03:24"
end

Factory.define :release do |r|
  r.title { Factory.next(:string) }
  r.sort_title { Factory.next(:string) }
  r.association :label
  r.catalogue_number { Factory.next(:string) }
  r.issue_date Date.today - 3.years
  r.association :medium
  r.volumes { Factory.next(:integer) }
end

Factory.define :music_session do |s|
  s.music_session_date Date.today
  s.circa nil
  s.text_date { Factory.next(:string) }
  s.title { Factory.next(:string) }
  s.association :country
  s.association :state
  s.association :music_session_type
  s.venue { Factory.next(:string) }
end

Factory.define :music_session_type do |s|
  s.music_session_type { Factory.next(:string) }
end

Factory.define :skill do |s|
  s.skill { Factory.next(:string) }
  s.abbreviation { Factory.next(:string) }
  s.sort { Factory.next(:integer) }
end

Factory.define :song do |s|
  s.title { Factory.next(:string) }
  s.sort_title { Factory.next(:string) }
  s.association :song_form
  s.description { Factory.next(:string) }
  s.contrafact_id 2
end

Factory.define :song_form do |s|
  s.song_form { Factory.next(:string) }
end

Factory.define :state do |s|
  s.state { Factory.next(:string) }
  s.abbreviation { Factory.next(:string) }
end
