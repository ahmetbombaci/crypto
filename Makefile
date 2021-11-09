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

listecdhkeys:
	openssl ecparam -list_curves

genecdhkey:
	openssl ecparam -name prime256v1 -genkey -noout -out mykey-prime256v1.pem

disecdhkey:
	openssl ec -in mykey-prime256v1.pem -text -noout

calchash:
	echo "Hello Ahmet" | sha512sum
	echo "Hello Ahmet" | md5sum

cryptonice-demo:
	# https://www.f5.com/labs/articles/threat-intelligence/cryptonice
	cryptonice facebook.com --json_out
	cat facebook.com.json | jq

