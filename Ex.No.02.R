get_memory_objects_details <- function() {
  objects <- ls(envir = .GlobalEnv)
  details <- data.frame(
    Name = character(),
    Class = character(),
    Size = character(),
    stringsAsFactors = FALSE
  )
  for (obj_name in objects) {
    
    obj <- get(obj_name, envir = .GlobalEnv)
    
    obj_class <- class(obj)
    
    obj_size <- format(object.size(obj), units = "auto")
    
    details <- rbind(details, data.frame(
      Name = obj_name,
      Class = paste(obj_class, collapse = ", "),
      Size = obj_size,
      stringsAsFactors = FALSE
    ))
  }
  return(details)
}
main <- function() {
  object_details <- get_memory_objects_details()
  
  print(object_details)
}
main()