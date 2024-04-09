#!/bin/bash

# for now we are just checking that we get back a page from the server
echo validating server 
sleep 10
curl -m 10 http://localhost:3000