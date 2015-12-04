# dnx-watch-docker
A Docker image that runs dnx-watch against a mounted volume

## How to use it

The image expects that your project directory structure will be like:

* `MyProject`
  * `global.json`
  * `src`
    * `MyApplication`
      * `project.json`
    * `MyLibrary`
      * `project.json`
  * `test`
    * `MyApplication.Tests`

From the `MyProject` directory, run

```
$ docker run -ti --volume $PWD:/project =e "ASPNET_ENV=Development" -p 5000:5000 cloudlens/dnx-watch
```

When you have multi-project things to run, you can run the container from the parent folder and set a `DNX_PROJECT` environment variable to the directory with the web application, like this:

```
$ docker run -ti --volume $PWD:/project -p 5000:5000 -e DNX_PROJECT:myapp cloudlens/dnx-watch
```
