#!/bin/bash

kill -9 $(lsof +D $1 | cut -d " " -f 2)
