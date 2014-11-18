install:
	./scripts/initialise.py
	vagrant up

rebuild:
	vagrant destroy -f
	vagrant up

destroy:
	vagrant destroy -f

clean:
	# TODO for each project delete jobs/project/builds

update:
	vagrant provision --provision-with shell

prepare:
	# Ubuntu only atm
	scripts/setup-ubuntu-client.sh
