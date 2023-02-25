ActiveRecord::Base.establish_connection
ActiveRecord::Base.connection.tables.each do |table|
  next if table == "schema_migrations"
  ActiveRecord::Base.connection.execute("TRUNCATE #{table}")
  ActiveRecord::Base.connection.reset_pk_sequence! table
end
Contact.create(firstName: "testy", lastName: "tester", email: "tester1@gmail.com")
Booking.create(firstName: "testy", lastName: "tester", email: "tester3@gmail.com", event: "We are throwing a birthday party for our pet snake!")
