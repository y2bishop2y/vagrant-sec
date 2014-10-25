#!/bin/bash

IP=${1}
PORT=${2}

echo "==================="
echo "Scan:  ${IP}:${PORT} "
echo "-------------------"
cd ..

echo "Check all accpets ... " 
vagrant ssh -c "sslscan ${IP}:${PORT} | grep Accept"

echo "Check SSLv3" 
vagrant ssh -c "sslscan ${IP}:${PORT} | grep Accept | grep -i 
SSLV3"
