#!/bin/sh
nova list | awk '{if (NR > 3 && $2 != "") {system("nova delete " $2);}}'

