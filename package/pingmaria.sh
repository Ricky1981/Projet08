#!/bin/bash
while ! mysqladmin -u admin -p"admin" ping -h"127.0.0.1"; do 
	sleep 1; 
done
