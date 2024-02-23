#!/bin/bash
curl -LO https://github.com/hickford/git-credential-oauth/releases/download/v0.11.0/git-credential-oauth_0.11.0_linux_amd64.tar.gz
mkdir -p git-credential-oauth
tar -xzvf git-credential-oauth_0.11.0_linux_amd64.tar.gz -C git-credential-oauth
mkdir -p ~/bin
mv -n git-credential-oauth/git-credential-oauth ~/bin/
rm -rf git-credential-oauth*
