#' Adds timestamp to prompt
#' 
#' Adds timestamp to prompt.  This will add the current time to the *beginning*
#' of the prompt and leave your old prompt after the time stamp.  If you want
#' to remove the timestamp and have it stop updating you can call
#' \code{\link[timestamp]{removeTimeStamp}}.
#' 
#' @export
addTimeStamp <- function(){
    
    if(!is.null(getOption("timeStampID"))){
        warning("timeStampID already set - run removeTimeStamp before trying to add another timestamp")
        return()
    }
    options(oldPrompt = getOption("prompt"))
    
    updatePrompt <- function(...){
        p <- paste(format(Sys.time(), "%H:%M:%S"), getOption("oldPrompt"))
        options(prompt = p)
        return(TRUE)
    }
    
    id <- addTaskCallback(updatePrompt)
    options(timeStampID = id)
    invisible(id)
}

#' Removes the time stamp
#' 
#' Removes the time stamp from the prompt and resets to the old prompt.
#' If you want to add the timestamp back again just make a call to
#' \code{\link[timestamp]{addTimeStamp}}.
#' 
#' @export
removeTimeStamp <- function(){
    removeTaskCallback(getOption("timeStampID"))
    options(prompt = getOption("oldPrompt"))
    options(timeStampID = NULL)
}