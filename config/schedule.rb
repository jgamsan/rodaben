every '45 14,23 * * 1-6' do
  command "cd /home/galiclick/public_html/rodaben/current && bundle exec rake RAILS_ENV=production products:to_rodaben_gane"
end
every '15 14,23 * * 1-6' do
  command "cd /home/galiclick/public_html/rodaben/current && bundle exec rake RAILS_ENV=production products:to_rodaben_eurotyre"
end
every :day, :at => '2:00pm' do
  command "backup perform --trigger rodaben_backup"
end
every :day, :at => '0:30am' do
  command "backup perform --trigger rodaben_backup"
end