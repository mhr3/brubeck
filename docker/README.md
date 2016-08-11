# Brubeck Dockerfile

Build using `docker build -t brubeck .`

If also running a graphite container named 'graphite', run with:
`docker run -d --name brubeck --restart=always --link graphite -p 8080:8080 -p 8125:8125/udp --link graphite -e CARBON_HOST=graphite brubeck`
