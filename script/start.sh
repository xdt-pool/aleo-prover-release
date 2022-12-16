#!/bin/bash
set -x
echo $(dirname "$0")
get_abs_dir() {
  # $1 : relative filename
  readlink -f $(dirname "$0")
}
export LD_LIBRARY_PATH="`get_abs_dir`/lib":$LD_LIBRARY_PATH

account="test@gmail.com"
pool="159.27.14.68:9000"
name="3080_miner_1"
COMMAND="nohup `get_abs_dir`/aleo-prover --account $account --pool $pool --name $name" 
$COMMAND


