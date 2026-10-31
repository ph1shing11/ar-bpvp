#!/usr/bin/env bash
# Contributor-supplied test script. Fails, so the owner's retry rule matches on conclusion=failure.
echo "BPVP_TEST_MARKER=M1-PHASE1"
echo "BPVP_TEST_SHA=$(git rev-parse HEAD 2>/dev/null || echo unknown)"
exit 1
