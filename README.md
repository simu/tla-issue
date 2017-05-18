A minimal(ish) example that shows odd behaviour when running TLC server/client
from the command line.

The behaviour is as follows:
When running (distributed or non-distributed) TLC from the TLA toolbox the
model checking succeeds with the expected results. When running
non-distributed TLC from the command, line model checking succeeds also.
However, when running distributed TLC from the command line, model checking
fails (cf. output in master.out, slave.out)

I've tried both the latest release and the nightly release of May 16 of
TLAtoolbox and the tools jar that comes with the toolbox when going to the
HTML served by the TLC master process.

See `bin/` for the scripts I've been using to run TLC from the command line.
