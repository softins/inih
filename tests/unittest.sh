#!/usr/bin/env bash

gcc ../ini.c unittest.c -o unittest_multi
./unittest_multi > baseline_multi.txt
rm -f unittest_multi

gcc ../ini.c -DINI_ALLOW_MULTILINE=0 unittest.c -o unittest_single
./unittest_single > baseline_single.txt
rm -f unittest_single

gcc ../ini.c -DINI_ALLOW_INLINE_COMMENTS=0 unittest.c -o unittest_disallow_inline_comments
./unittest_disallow_inline_comments > baseline_disallow_inline_comments.txt
rm -f unittest_disallow_inline_comments

gcc ../ini.c -DINI_STOP_ON_FIRST_ERROR=1 unittest.c -o unittest_stop_on_first_error
./unittest_stop_on_first_error > baseline_stop_on_first_error.txt
rm -f unittest_stop_on_first_error
