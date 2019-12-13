#!/bin/sh
#
# Copyright 2019 Intel Corporation.
#
# SPDX-License-Identifier: Apache-2.0
#
# Deploys current jenkins-build test image for nlb-demo
# in the cluster.

set -o pipefail
set -o xtrace
set -o errexit

REPO_ROOT=$(realpath $(dirname $0)/../../..)
kubectl create -f ${REPO_ROOT}/demo/test-fpga-region.yaml
sleep 5m # Give enough time for deployment and programming of bitstream
# kubectl wait --for=condition=Completed pod --all --timeout=5m  --namespace kube-system && sleep 60s
