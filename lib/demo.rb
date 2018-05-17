require 'mysql2'

class Server
  def initialize(mysql_config)
    @mysql_config = mysql_config
  end

  def with_connection
    yield(mysql_client)
    mysql_client.close
  end

  private

  def mysql_client
    @mysql_client ||= Mysql2::Client.new(@mysql_config)
  end
end

config = {
  username: "root",
  password: "",
  host: "mysql-schema-compare.railgun",
  reconnect: true
}

server = Server.new(config)

server.with_connection do |client|
  client.query("SHOW DATABASES")
end
server.with_connection do |client|
  client.query("SHOW DATABASES")
end
