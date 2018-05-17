# Unexpected Mysql2 gem behavior

```
bundle install
bundle exec ruby lib/demo.rb
Traceback (most recent call last):
	6: from lib/demo.rb:32:in `<main>'
	5: from lib/demo.rb:9:in `with_connection'
	4: from lib/demo.rb:33:in `block in <main>'
	3: from /usr/local/lib/ruby/gems/2.5.0/gems/mysql2-0.5.1/lib/mysql2/client.rb:130:in `query'
	2: from /usr/local/lib/ruby/gems/2.5.0/gems/mysql2-0.5.1/lib/mysql2/client.rb:130:in `handle_interrupt'
	1: from /usr/local/lib/ruby/gems/2.5.0/gems/mysql2-0.5.1/lib/mysql2/client.rb:131:in `block in query'
/usr/local/lib/ruby/gems/2.5.0/gems/mysql2-0.5.1/lib/mysql2/client.rb:131:in `_query': MySQL client is not connected (Mysql2::Error)
```

## What did I expect?
When a second instance of the Mysql2 client is created, a new connection should be opened,
or at least reconnected.
