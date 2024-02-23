Invoke-WebRequest -Uri "https://github.com/hickford/git-credential-oauth/releases/download/v0.11.0/git-credential-oauth_0.11.0_windows_amd64.tar.gz" -OutFile "git-credential-oauth_0.11.0_windows_amd64.tar.gz"
mkdir "git-credential-oauth" -ErrorAction SilentlyContinue
tar -xvf "git-credential-oauth_0.11.0_windows_amd64.tar.gz" -C "git-credential-oauth"
mkdir "$HOME\bin\" -ErrorAction SilentlyContinue
mv "git-credential-oauth\git-credential-oauth.exe" "$HOME\bin\"
rm -Force -Recurse git-credential-oauth*
