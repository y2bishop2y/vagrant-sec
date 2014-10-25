Security Testing/Audit VM
==================

Packages 

- sslscan
http://cybersecurityauditing.blogspot.com/2012/09/sslscan-free-ssl-based-tool.html

https://www.titania.com/freetools?tool=sslscanner





Poodle Check 

Make sure there is no SSLv3

```
$ sslscan <ip>:<port> | grep Accept 

# run the command externaly 

-> vagrant ssh -c 'sslscan <ip>:<port> | grep Accept '
```

