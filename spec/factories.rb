Factory.define :user do |user|
  user.name       "Test User"
  user.email      "test.user@example.net"
  user.password   "foobar"
  user.password_confirmation "foobar"
end
