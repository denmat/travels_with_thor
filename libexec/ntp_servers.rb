def ntp_servers(server)
  server.each do |s|
    puts "nameserver #{s}"
  end
end