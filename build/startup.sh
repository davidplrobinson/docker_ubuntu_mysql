#!/bin/bash

set -m
set -e

mysqld &

sleep 10

fg
