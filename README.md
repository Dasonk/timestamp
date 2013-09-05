# timestamp

The timestamp package is an R package that allows you to add a timestamp to your prompt that updates with each top level callback.  Here is an example of what the package can do for you

```r
> rnorm(1)
[1] -0.1321653
> # I want a time stamp!
> library(timestamp)
23:19:55 > rnorm(1)
[1] 1.656763
23:20:01 > # Yay! Now I have a time stamp!
```


## Installation

Currently there isn't a release on [CRAN](http://cran.r-project.org/).

You can, however, download the [zip ball](https://github.com/dasonk/timestamp/zipball/master) or [tar ball](https://github.com/dasonk/timestamp/tarball/master), decompress and run `R CMD INSTALL` on it, or use the **devtools** package to install the development version:

```r
## Make sure your current packages are up to date
update.packages()
## devtools is required
library(devtools)
install_github("timestamp", "dasonk")
```

## Future Goals

* Add customization of the timestamp to at least include some common variations.
* Add working directory to prompt if user desires.
* Remove stamp if package is detached.

You are welcome to:
* submit suggestions and bug-reports at: <https://github.com/dasonk/timestamp/issues>
* or send a pull request on: <https://github.com/dasonk/timestamp/>