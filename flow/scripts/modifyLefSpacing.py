#!/usr/bin/env python3
import re
import sys
import argparse  # argument parsing

# Parse and validate arguments
# ==============================================================================
parser = argparse.ArgumentParser(
    description='Removes PROPERTY LEF58_SPACING from lef files')
parser.add_argument('--inputLef', '-i', required=True,
                    help='Input Lef')
parser.add_argument('--outputLef', '-o', required=True,
                    help='Output Lef')
args = parser.parse_args()


f = open(args.inputLef)
content = f.read()
f.close()

pattern = r"PROPERTY LEF58_SPACING.*?(SPACING.*?)\"\s+;"
replace = r"\1"

result,count = re.subn(pattern, replace, content, 0, re.S)

f = open(args.outputLef, "w")
f.write(result)
f.close()

if count < 1:
  print("CRITICAL WARNING: Pattern not found")
