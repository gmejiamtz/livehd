#!/usr/bin/env python3

import argparse
import glob
import os
import sys

from prplib import PrpTest, PrpRunner

parser = argparse.ArgumentParser()
parser.add_argument('-c', '--config', help='config file', required=True)
parser.add_argument('-i', '--input', help='pyrope file to test', required=True)

args = parser.parse_args()

runner = PrpRunner(args.config)
rc = runner.run(os.getcwd(), PrpTest(args.input))

if rc:
    sys.exit(1)
