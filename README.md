# timestamp

The timestamp package is an R package that allows you to add a timestamp to your prompt that updates with each top level callback.  Here is an example of what the package can do for you

```r
> rnorm(1)
[1] 1.593738
> # I want a time stamp!
> library(timestamp)
23:23:11 > rnorm(1)
[1] 0.772474
23:23:13 > print("Yay - I have a time stamp!")
[1] "Yay - I have a time stamp!"
23:23:20 > rnorm(1)
[1] 0.9360234
23:23:26 > print("Now I don't want it anymore...")
[1] "Now I don't want it anymore..."
23:23:33 > removeTimeStamp()
> # Back to normal
> # This is boring - let's add it back
> addTimeStamp()
23:23:55 > print("So much better")
[1] "So much better"
23:24:00 > removeTimeStamp()
> options(prompt = "Raptors Suck > ")
Raptors Suck > addTimeStamp()
23:24:42 Raptors Suck > print("It respects your current prompt")
[1] "It respects your current prompt"
23:24:50 Raptors Suck > removeTimeStamp()
Raptors Suck > 

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