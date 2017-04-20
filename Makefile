deploy_key:
	ssh-keygen -t rsa -b 4096 -C "Deploy Key"

encrypt_deploy_key:
	travis encrypt-file deploy_key --add
