## Synopsis

Interlay is a standalone collection of smaller apps, for easier testing and demonstration purposes.

## Code Example

TCP v4 queued data jobs example:
sending data from tcpv4 to a ets queue table, and running a job per queue table entry:

run interlay:
./_build/default/rel/interlay/bin/interlay console

start a seperate erlang node ( the client ):
erl -sname worker
{ok, Socket1} = gen_tcp:connect("localhost", 9900, [{packet, 2}]).
{ok, Socket2} = gen_tcp:connect("localhost", 9901, [{packet, 2}]).

# Example1: ( Fire and forget - port 9900 setup in sys.config - from erlang shell)
ok = gen_tcp:send(Socket1, <<"async_work">>).
flush().

# Example2: ( wait for a response - port 9901 setup in sys.config - from erlang shell )
ok = gen_tcp:send(Socket2, <<"sync_work">>).
flush().



# Time based
timer:apply_interval(2500, gen_tcp, send, [Socket2, <<"SyncData">>]).












## Motivation

A short description of the motivation behind the creation and maintenance of the project. This should explain **why** the project exists.

## Installation

Provide code examples and explanations of how to get the project.

## API Reference

Depending on the size of the project, if it is small and simple enough the reference docs can be added to the README. For medium size to larger projects it is important to at least provide a link to where the API reference docs live.

## Tests

Describe and show how to run the tests with code examples.

## Contributors

Let people know how they can dive into the project, include important links to things like issue trackers, irc, twitter accounts if applicable.

## License

A short snippet describing the license (MIT, Apache, etc.)




TODO:

1) example 1 has TCP -> rabbitmq(publish) -> rabbitmq(consume) 
on the same node
	- split publish and consume to diff nodes
   TcpData buffer example

2) example 2 has TCP -> rabbitmq(publish) ( node 1 )
   node 2 has eda_out(http) -> consumes from rabbitmq
   RestAPI example