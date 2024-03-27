# docker-grunt

Docker grunt task runner

Originally created for bitbucket pipeline usage

# Build

	docker build -t awscli_grunt:latest .

# Run

In your $(pwd), create a link to parent node_modules, so that the docker image can use its preinstalled modules:

	ln -s ../node_modules node_modules 

Then you can run grunt like so:

	docker run -it --rm --init \
	    -v $(pwd):/workdir/static \
	    -w /workdir/static \
	    awscli_grunt grunt
