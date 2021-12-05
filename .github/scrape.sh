#!/bin/bash

set -e

[[ -z "${1}" ]] && { echo -e "error: missing output file"; exit 1; }

PATTERN="github\.com/\K[\w\-]+(/[\w\-]+)?"
PRE_URL="https://github.com/arkadiyt/bounty-targets-data/raw/master/data"
SUF_URL="data.json"

DATAS=(
	"hackerone"
	"bugcrowd"
	"yeswehack"
	"hackenproof"
	"federacy"
)

PRE_POS=".[].targets.in_scope[]"
POSITIONS=(
	"asset_identifier"
	"target"
	"target"
	"instruction"
	"target"
)

LEN="${#DATAS[@]}"

for (( i = 0; i < $LEN; i++ )); do
	curl -sL "${PRE_URL}/${DATAS[$i]}_${SUF_URL}" | \
		jq -r "${PRE_POS}.${POSITIONS}" | \
		grep -Po "${PATTERN}" | \
		./.github/bin/anew "${1}"
done

echo "::set-output name=changes::$(git status -s | wc -l)"