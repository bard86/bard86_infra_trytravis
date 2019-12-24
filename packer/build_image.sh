#!/bin/bash
set -e
packer validate ubuntu16.json
packer build -on-error=ask ubuntu16.json
