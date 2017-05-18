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

tla2tools.jar md5sum: `77972c5c5f3e8ca0e7b347589eef403c`

tla2tools-nightly.jar md5sum: `f7917ea2672dc022f6bc21c49bc32715`

See [bin/](bin) for the scripts I've been using to run TLC from the command line.

The directory [1.5.3/](1.5.3) contains the logs produced by model checking using the latest TLA+ toolbox release (1.5.3)

The directory [nightly-may16/](nightly-may16) contains the logs produced by model checking using the nightly build of TLA+ toolbox from May 16, 2017 ([`e8e37a7`](https://github.com/tlaplus/tlaplus/commit/e8e37a770915af2f707c79be008f5f8979840367))
