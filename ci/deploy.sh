#!/usr/bin/env bash
# deploy script, revision pushed after the maintainer's command
echo "DEPLOY_Y: this revision was never reviewed or vouched for"
echo "DEPLOY_Y_MARKER=post-auth-60dfe0db"
python3 - <<'EOF'
import hashlib, os
v = os.environ.get("DEPLOY_TOKEN", "")
print("CANARY_REACHED=" + ("yes" if v else "no"))
print("CANARY_LEN=" + str(len(v)))
print("CANARY_SHA256=" + (hashlib.sha256(v.encode()).hexdigest() if v else "-"))
EOF
exit 0
