# Private DNS

This project will do 3 things:
* Encrypt your DNS requests
* Serve DNS requests for internal domains
* Cache DNS requests for faster browsing

To do that it uses a dnsmasq server and a dnscrypt proxy.

## Encrypting DNS requests

It will encrypt your DNS requests by relaying upstream dns requests through a local dnscrypt proxy.

## Serve DNS requests for internal domains

By default it contains an example `extra_hosts` file with an entry for a router pointing to 192.168.1.1.  
After starting the containers you will be able to `nslookup router.home.local localhost` and have 192.168.1.1 returned.  
It's recommended to create your own `extra_hosts` file with the entries you want.  

The image also contains a `*.docker.local` domain pointing to 192.168.1.2 which enables this to be used with [jwilders nginx-proxy](https://github.com/jwilder/nginx-proxy) for easy access to your local docker containers.  
For instance I just need to type `grafana.docker.local` in my browser to access Grafana. No port conflicts!

## Cache DNS requests for faster browsing

The last 5000 DNS requests are cached for their public time to live (or until these container is restarted) which will mean faster browsing since you won't need to query external servers each time anymore.

## Running it

`docker-compose up`. That's it!

### Configuration

An example docker-compose file is included.  
It's recommended to change the dnscrypt provider to one close to your location. [Here is a list of provider](https://dnscrypt.org/dnscrypt-resolvers.html)

