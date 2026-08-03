#!/usr/bin/env bash
set +e
git config user.name "G01 attacker-controlled PR probe"
git config user.email "testingtiger@apexblack.org"
echo G01_PR_TOKEN_WRITE_SENTINEL_20260803_TIGER > g01-pr-token-write-from-untrusted-pr.txt
git add g01-pr-token-write-from-untrusted-pr.txt
git commit -m "G01 attacker PR token write probe"
git push origin HEAD:refs/heads/g01-pr-token-write-probe
push_status=$?
echo cross_actor_push_exit=$push_status
git remote -v
exit 0
