#!/bin/bash -e
if [[ -z "$1" ]]; then cat <<EOF
certify - Creates and self-signs X.509 SSL/TLS certificates
          with the "subjectAltName" extension.
Usage: certify example.com [www.example.com] [mail.example.com] [...]
EOF
exit; fi

umask 066
KEYSIZE=2048
DAYS=3650
certname="$1"
altnames="DNS:$1,DNS.2:*.example.com,DNS.3:*.example2.com,DNS.4:*.example3.com"
# support multi domain
while shift && (($#)); do altnames="$altnames,DNS:$1"; done
echo -e "basicConstraints=critical,CA:true,pathlen:0\nsubjectAltName=$altnames" > extensions.ini

openssl genrsa -out "$certname.key" $KEYSIZE
openssl req -new -key "$certname.key" -out "$certname.csr"
openssl x509 -req -signkey "$certname.key" -days $DAYS -in "$certname.csr" -out "$certname.crt" -extfile extensions.ini
rm extensions.ini "$certname.csr"
openssl x509 -in "$certname.crt" -noout -text

cat <<EOF
`tput bold`
Success! Your brand new certificate has been written to "$certname.crt".
Your private key has been written to "$certname.key". Share the certificate
with everyone, and the key with no one!
`tput sgr0`
EOF
#Generating SSL