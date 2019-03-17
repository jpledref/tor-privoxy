# tor-privoxy

tor-privoxy is a pre-configured docker image that allow you to join the anonymous proxy network "tor".

# Usage

Start docker image:

	docker run -d -p 8118:8118 jpledref/tor-privoxy
		
Check your connection to tor network:

	curl -xlocalhost:8118 -s https://check.torproject.org/ | sed -n '/<title>/,/<\/title>/{ /title>/d; p }'

Configure your browser to use privoxy:

	localhost:8118

You may now be connected to the network.
