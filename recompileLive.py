from subprocess import call
import time

while(True):
    time.sleep(1)
    call(["./cqenze","Live.cqz"])
    if(raw_input("-> ") == "exit"):
        call(["chuck", "--kill"])
        break
