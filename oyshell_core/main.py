#!/usr/bin/python3
"""
OyShell Core - Network Security Research Toolkit
Based on Raven-Storm by Taguar258 (MIT License)
Built on the CLIF Framework
"""

from sys import argv

from CLIF_Framework.framework import console, module  # noqa: I900


def run():
	main_console = console()
	main_console.rsversion = "5.0 (OyShell)"
	main_console.user_argv = argv

	module("modules.main", main_console)

	main_console.run()


if __name__ == "__main__":
	run()
