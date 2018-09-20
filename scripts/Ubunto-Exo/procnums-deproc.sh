#!/bin/bash
ls /proc -al | grep dr | cut -d':' -f2 | cut -d' ' -f2 | sort
