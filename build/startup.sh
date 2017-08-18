#!/bin/bash

set -m
set -e

mysqld_safe &

sleep 10

fg
