#!/bin/bash

wget --mirror            \
     --convert-links     \
     --html-extension    \
     --wait=1            \
     -o log              \
     $1