#!/bin/bash
curl -LO https://github.com/hickford/git-credential-oauth/releases/download/v0.11.0/git-credential-oauth_0.11.0_linux_arm64.tar.gz
mkdir -pv git-credential-oauth
tar -xzvf git-credential-oauth_0.11.0_linux_arm64.tar.gz -C git-credential-oauth
mkdir -pv ~/bin
mv -nv git-credential-oauth/git-credential-oauth ~/bin/
rm -rfv git-credential-oauth*
