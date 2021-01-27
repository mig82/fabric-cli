CURR_DIR:=$(PWD)
#F_CLI_V=9.1.0.1
F_CLI_V=9.2.0.0

wrap: clean download
	mkdir bin
	cat stub.sh mfcli.jar > bin/fabric && chmod +x bin/fabric
	printf "Add ${PWD}/bin to the PATH\n"

download: clean
	curl -O https://plugins-updatesite-prod.s3.amazonaws.com/onpremise/mobilefabric/mobilefabricCLI/$(F_CLI_V)/mfcli.jar

clean:
	rm -rdf bin
