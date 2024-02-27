# Common functions

## I got the idea for the two primer functions here:
## https://stackoverflow.com/questions/59342187/iterating-over-strings-in-shell-commands-using-snakemake
def get_fw_primer(wc):
    str_wc = str(wc)  # not sure why I hav eto make this a string...
    fwp = PRIMERS[str_wc]["fw"]
    return fwp

def get_rev_primer(wc):
    str_wc = str(wc)
    rvp = PRIMERS[str_wc]["rev"]
    return rvp
