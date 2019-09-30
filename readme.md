Compile with `-d:ssl -d:useStdLib`. Go to localhost:5000, then scrub around the
video quickly to parts that haven't been buffered yet. This should cause a
request to get canceled, which triggeres a crash due to "Bad file descriptor".
