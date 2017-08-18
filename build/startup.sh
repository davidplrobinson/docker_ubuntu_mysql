#!/bin/bash

set -m
set -e

mysqld &

/bin/bash

sleep 10

fg
