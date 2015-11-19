# dnx-watch-docker
A Docker image that runs dnx-watch against a mounted volume

## How to use it

In your project's directory, run

```
$ docker run -ti --volume $PWD:/project -p 5000:5000 cloudlens/dnx-watch
```

When you have multi-project things to run, you can run the container from the parent folder and set a `DNX_PROJECT` environment variable to the directory with the web application, like this:

```
$ docker run -ti --volume $PWD:/project -p 5000:5000 -e DNX_PROJECT:myapp cloudlens/dnx-watch
```
