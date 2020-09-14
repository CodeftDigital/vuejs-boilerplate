# vuejs-boilerplate

## Project setup
```
npm install
```

### Compiles and hot-reloads for development
```
npm run serve
```

### Compiles and minifies for production
```
npm run build
```

### Run your unit tests
```
npm run test:unit
```

### Run your end-to-end tests
```
npm run test:e2e
```

### Lints and fixes files
```
npm run lint
```

### Customize configuration
See [Configuration Reference](https://cli.vuejs.org/config/).

## To run in docker container
docker build -t yolovirtual/vuejs-boilerplate .

docker run -it -p 8080:8080 --rm --name dockerize-vuejs-app-1 yolovirtual/vuejs-boilerplate


You will see URLs in terminal from where app can be accessed. For example - 
  http://127.0.0.1:8080
  http://172.17.0.2:8080