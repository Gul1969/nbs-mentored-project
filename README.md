# Mentored Project
 
You should keep as many metrics as possible and write up reports on them in your README file. These metrics can include.
 
- Testing Coverage
- Deployment Success
- Build Logs
- Security Risks
 
 
## Why are we doing this?

We are using this challenge to consolidate our learning from the four week academy. We need to be able to combine our understanding of each invididual program, in order for us to be able to get them working together in one app. We need to identify which pieces of software to use where for maximum portability and efficiency, whilst being mindful of the restraints of our virtual machines. Putting our knowledge into practice helps cement our learning, as we need to be able to understand each concept to be able to build it form the ground up. 

## How I expected the challenge to go.

I wasn't sure what to expect with this challenge. I felt confident with the individual subjects, but was unsure of how to begin. It took a long time for me to feel secure in the approach I had taken: I decided to use ansible roles as it was one of the areas in which I felt least confortable; this took a lot of experimentation and extra research to find different workarounds for different issues. I had more trouble than I would have hoped getting the app running, but I understand why my services were not communicating after being shown the python code. For the most part, I was able to troubleshoot for myself, but there are some areas where I still struggle. I knew I would take some time getting NGINX configured as this is my weakest area. 

## What went well?

I managed to successfully find workarounds for ansible. For the most part, I was able to interpret errors and find my own solutions through research. I was able to build a lot of code from memory, rather than needing to refer to previous examples. I was also able to guide others when they reached out to me. I feel much more confident in different areas having been able to piece them together myself, and I think the project certainly achieved its intended purpose as stated above. 

## What didn't go as planned?

There were some very basic issues i had which I could not see without an extra pair of eyes: for example, I was struggling to get NGINX to work until it was pointed out to me that I had mounted everything except my NGINX container. I tend to overthink basic concepts and get frustrated when I cannot work something out. I was not receiving any explicit error messages as well, which I find easier to interpret. I had to ask for help more often than I would have liked, which has knocked my confidence a bit. I was not able to get script functionality to work within the roles so the project is not as tidy as I hoped.

## Possible improvements for future challenges.

- To refine certain areas of code where I installed requirements - include conditionals which skip installation steps if software is detected on the system
- To be able to get SAST testing running from the command line, ratehr than form the Jenkins plugin. This would be another dependency to install - however, it would saving having three separate jobs as a step could be included in the pipeline rather than having to create a spceific freestyle job. 
- To have all of my scripts running through ansible, instead of a separate directory
- To automate DAST testing in Jenkins
  
