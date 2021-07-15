tmpout=/tmp/vault.$$
curl -s -o $tmpout https://www.vaultproject.io/downloads
VER=`egrep -o '"version":".\..\.."'  $tmpout | head -1  | cut -f4 -d'"'`
rm $tmpout

VER=1.7.3
EURL="https://releases.hashicorp.com/vault/${VER}+ent/vault_${VER}+ent_linux_amd64.zip"
cd ~/bin
wget $EURL

wget https://releases.hashicorp.com/vault/${VER}/vault_${VER}_linux_amd64.zip

rm -f vault vault-ent
unzip vault_${VER}+ent_linux_amd64.zip
mv vault vault-ent
unzip vault_${VER}_linux_amd64.zip

vault version
