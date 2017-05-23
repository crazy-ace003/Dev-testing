#!/bin/bash
/opt/minerd/minerd \
  -a cryptonight \
  -o stratum+tcp://us-east.cryptonight-hub.miningpoolhub.com:20580 \
  -u 467FN8ns2MRYfLVEuyiMUKisvjz7zYaS9PkJVXVCMSwq37NeesHJpkfG44mxEFHu8Nd9VDtcVy4kM9iVD7so87CAH2iteLg \
  -p x

while /bin/true; do
    sleep 10
done
