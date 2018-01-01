# convert a float to a string w/ 2 dec digits (Erlang)
:io_lib.format("~.2f", [3.2780])

# get the value of an Operating system environment variable (Elixir)
System.get_env("PATH")

# return the extension of a given file (Elixir)
Path.extname("dave/test.exs")

# return the process's current working dir (Elixir)
System.cwd

# Convert a string containing JSON into Elixir data structures
# https://github.com/devinus/poison

# Execute a command in your operating system's shell
System.cmd "echo", ["howdy"], into: IO.stream(:stdio, :line)


