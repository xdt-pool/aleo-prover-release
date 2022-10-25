#!/bin/bash
echo $(dirname "$0")
get_abs_dir() {
  # $1 : relative filename
  readlink -f $(dirname "$0")
}
export LD_LIBRARY_PATH="`get_abs_dir`/lib":$LD_LIBRARY_PATH

COMMAND="`get_abs_dir`/aleo-prover -a $1 -p $2 -g 0 -j 16"
$COMMAND


