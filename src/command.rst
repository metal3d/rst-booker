Some make options
'''''''''''''''''

You can use some options with make command. The "help" command produce help::
    
    # make help
    make [tex,prepare,pdf,ps,clean] \
    [PAGESIZE=a4paper,a5paper,b3paper,letterpaper,\
    executivepaper,legalpaper]
    
    Default is pdf PAGESIZE=a5paper

So to produce an A4 paper book, use this command::
    
    make PAGESIZE=a4paper

And to produce ps with letterpaper size::
    
    make ps PAGESIZE=letterpaper

That's not as complicated, is it ?
