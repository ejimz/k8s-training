openssl genrsa -out jsalmeron.key 2048
openssl req -new -key jsalmeron.key -out jsalmeron.csr -subj "/CN=jsalmeron/O=tech-lead/O=dev"
openssl x509 -req -in jsalmeron.csr -CA ca.crt  -CAkey ca.key  -CAcreateserial -out jsalmeron.crt -days 500

openssl genrsa -out juan.key 2048
openssl req -new -key juan.key  -out juan.csr -subj "/CN=juan/O=dev/O=api"
openssl x509 -req -in juan.csr  -CA ca.crt  -CAkey ca.key  -CAcreateserial -out juan.crt -days 500

openssl genrsa -out dbarranco.key 2048
openssl req -new -key dbarranco.key -out dbarranco.csr -subj "/CN=dbarranco/O=sre"
openssl x509 -req -in dbarranco.csr  -CA ca.crt  -CAkey ca.key  -CAcreateserial -out dbarranco.crt -days 500

