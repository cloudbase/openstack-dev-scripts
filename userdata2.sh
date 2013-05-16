#!/bin/bash

useradd test
echo test:Passw0rd |  chpasswd
adduser test sudo

