include {
    path = find_in_parent_folders()
}
inputs = {
    # we expect to be in a subdirectory of a directory named for the region in which we will be creating resources
    # so, we'll pull the name of our parent directory as the region name and we'll strip the trailing newline off 
    # otherwise things go poorly when the variable is rendered elsewhere
    aws_region = run_cmd("/usr/local/bin/bash", "-c", "basename $(dirname $(pwd)) | tr -d \"\n\"")
}