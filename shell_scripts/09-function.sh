#!/bin/bash

NAME=$1
greet() {
	echo "Hello ${1}"
}
greet $NAME
