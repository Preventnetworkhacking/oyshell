#!/usr/bin/python3
"""
OyShell - Network Security Research Toolkit
An Oystra security research project
https://github.com/Preventnetworkhacking/oyshell

Originally based on Raven-Storm by Taguar258 (MIT License)
"""

from importlib import import_module
from sys import path

path.insert(1, "./oyshell_core/")
main = import_module("oyshell_core.main")

main.run()
