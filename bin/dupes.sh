#!/bin/bash
echo Searching for duplicates
grep -Rho -E 'lastUpdate.{12}' json/ | sort | uniq -d
