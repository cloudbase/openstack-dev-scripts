#!/bin/sh
quantum net-list | awk '{if (NR > 3 && $2 != "") {system("quantum net-delete " $2);}}'

