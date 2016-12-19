Cockroachdb docker container for stoic
======================================

Extends cockroachdb/cockroach with a pre-initialised `stoic` user.
So we dont run cockroachdb as `root`.

One should consider running the official cockroachdb if there is no such contraint:
https://hub.docker.com/r/cockroachdb/cockroach/

License
=======
Same than cockroachdb: Apache License 2

Copyright
=========
Sutoiku Inc 2016