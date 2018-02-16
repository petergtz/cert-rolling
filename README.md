# cert-rolling

## Generated Cert and Keys through:

```
bosh int ca.yml --vars-store=vars.yml
```

## Run server

```
cd cmd/server
go run main.go
```

## Run client

```
cd cmd/client
go run main.go
```

## CA Cert Rolling

1. Add `the_ca_new.certificate` to `cmd/ca.crt` 
2. ...

Step 1 works in this repo, but failed for us when we did the same for [cf-deployment](https://github.com/cloudfoundry/cf-deployment)'s `service_cf_internal_ca`.