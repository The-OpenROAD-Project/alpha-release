#!/usr/bin/env python3
import re
import sys
import argparse  # argument parsing

# Parse and validate arguments
# ==============================================================================
parser = argparse.ArgumentParser(
    description='Replaces occurrences of cells in def or verilog files')
parser.add_argument('--patterns', '-p', required=True,
                    help='List of search patterns')
parser.add_argument('--inputFile', '-i', required=True,
                    help='Input File')
parser.add_argument('--outputFile', '-o', required=True,
                    help='Output File')
args = parser.parse_args()


patternList = args.patterns.split()

# Read input file
print("Opening file for replace:",args.inputFile)
f = open(args.inputFile)
content = f.read()
f.close()

# for i in range(0, len(patternList)):
#   pattern =   r"(^\s*cell\s*\(\s*"+patternList[i]+"\)\s*\{)"
#   replace = r"\1\n    dont_use : TRUE;"
#   content, count = re.subn(pattern, replace, content, 1, re.M)
#   print("Marked", count, "cell of", patternList[i],"as dont_use")

pattern = r"(^\s*cell\s*\(\s*("+"|".join(patternList)+")\)\s*\{)"
# print(pattern)
replace = r"\1\n    dont_use : TRUE;"
content, count = re.subn(pattern, replace, content, 0, re.M)
print("Marked", count, "cells as dont_use")

# Write output file
print("Writing replaced file:",args.outputFile)
f = open(args.outputFile, "w")
f.write(content)
f.close()
