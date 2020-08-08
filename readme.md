## Functional
Enter the nomber and you are redirected to whatsapp to open a chat session with a number **without having to add it to your contacts.**

### Run local
Run inside VM, using docker-compose (easier than the huge docker run command)
´´´
docker-compose up
´´´

In host machine (VM:8080 => localhost:8080) open browser to `localhost:8080`

## Deploy to heroku
Go into vagrant VM
```
vagrant up
vagrant ssh
```

Build docker image
```
docker build -t bustroker.anonymouswhatsapp.webapi:v1 .
```

Login into heroku. `-i` flag to not use browser.
Then login into heroku containers
```
heroku login -i
heroku container:login
```

Build current directory Dockerfile and push the image to heroku container registry, targeting the app created in heroku `anonymous-whatsapp`
```
heroku container:push web --app anonymous-whatsapp
```

Deploy the image
```
heroku container:release web --app anonymous-whatsapp
```

Browse to `https://anonymous-whatsapp.herokuapp.com/`