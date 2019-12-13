# Copyright 2019 Intel Corporation.
#
# SPDX-License-Identifier: Apache-2.0
#
# Makefile for FPGA jenkins.

all: plugin tests

plugin:
	@./plugin-deploy.sh

tests:
	@./nlb-deploy.sh

logs:
	@./logs.sh

.PHONY: all plugin tests logs