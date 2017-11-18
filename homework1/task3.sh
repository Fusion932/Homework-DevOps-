#!/bin/bash

BUFFETT="Life is like a snowball. The important thing is finding wet snow and a really long hill."
echo $BUFFETT | sed 's/snow/foot/'
echo $BUFFETT | sed 's/ snow / /'
echo $BUFFETT | sed 's/finding/getting/'
echo $BUFFETT | sed 's/wet.*/wet/'
