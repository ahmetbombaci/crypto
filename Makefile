genrsa:
	openssl genrsa -aes256 -out servername.pass.key 4096

gencsr:
	openssl req -nodes -new -key servername.pass.key -out servername.csr

issuecert:
	openssl x509 -req -sha256 -days 365 -in servername.csr -signkey servername.pass.key -out servername.crt

readcert:
	openssl x509 -text -noout -in servername.crt

gensshkey:
	ssh-keygen

listopensslciphers:
	# openssl list -cipher-commands
	openssl ciphers

list openssldigest:
	# openssl list -digest-commands
	openssl dgst -list

listecdhkeys:
	openssl ecparam -list_curves

genecdhkey:
	openssl ecparam -name prime256v1 -genkey -noout -out mykey-prime256v1.pem

disecdhkey:
	openssl ec -in mykey-prime256v1.pem -text -noout

disecdhpubkey:
	openssl ec -pubout -in mykey-prime256v1.pem

calchash:
	echo "Hello Ahmet" | sha512sum
	echo "Hello Ahmet" | md5sum
	echo "Hello Ahmet" | openssl dgst -md5

cryptonice-demo:
	# https://www.f5.com/labs/articles/threat-intelligence/cryptonice
	cryptonice facebook.com --json_out
	cat facebook.com.json | jq

