# Mentored Project
 
You should keep as many metrics as possible and write up reports on them in your README file. These metrics can include.
 
- Testing Coverage
- Deployment Success
- Build Logs
### Security Risks
#### SAST testing
- At first, when I completed my SAST testing, I did not remove my venv at the end of the coverage testing. Therefore my output was as follows:
![42 bugs](/images/venv-bugs.png)
Sonarqube was scanning 131k lines of code which were not relevant to the project. I added a line to my pytest.sh scrupt to remove the venv once coverage testing had completed, and the result was far cleaner:
![2 bugs](/images/sast-overview.png)
![short summary](/images/sast-summary.png)
- The two bugs were both related to HTML formatting. This is a very minor issue, but could cause some awkward formatting when the browser loads the page. Specifying the <!DOCTYPE> header above the <html> tag would avoid the browser misunderstanding which version of HTML was being used.
![doctype](/images/sast-doctype.png)
- There were 20 security hotspots in total. This is more concerning with regards to the 4 high priority issues. There is very little CSRF (Cross-Site Request Forgery) protection which could expose the app to an attaker posing as a genuine user to execute requests on their behalf. Protection should be enabled to secure the security of the app.
![csrf](/images/high-priority.png)
10 alerts triggered for weak cryptography linked to the use of the random number generator. It has been possible in the past for attackers to be able to guess the next number in line, which has then allowed access to secret data (see CVE-2013-6386, CVE-2008-4102, CVE-2006-3419). Best practice would be to use a recommended random number generator form OWASP/similar.
![crypto](/images/weak-crypto.png)
The last 6 warnings referred to the http protocol used when referring to the localhost addresses. If the app were live, it would be far safer to use the https protocol.
![http-risk](/images/http-insecure-sast.png)
#### DAST testing
- The overview below highlights multiple areas in which the app has vulnerabilities, with low and medium risks associated. Though there are only 4 alerts, each alert triggers multiple times, which indicates that there are multiple areas of code which have duplicated issues.
![dast overview](/images/dast-overview.png)
- We can see that the ZAP attack was able to target the app due to the lack of CSRF token mentioned above (interestingly, this alerts 8 times instead of the 4 seen in the SAST testing). Though this is a low priority issue, the recommended action is to use a Request-Verification token to prevent the application from trusting any user immediately upon first verification:
![csrf-overview](/images/dast-csrf-detail.png)
![csrf-detail](/images/dast-csrf.png)
- Another low priorty threat is the absense of the X-Content-Type-Options header. This means that there is header explicitly stating that the MIME-types present cannot be changed, opening up the app to the risk of MIME-sniffing from the browser. Security issues arise when the MIME-types represent executables. This can easily be resolved by adding in the relevent header.
![x-content](/images/dast-x-content.png)
- XSS browser protection has not been enabled. This means that the browser will not intervene by halting page loading, if an XSS (cross-site-scripting) attack is detected. Adding X-XSS-Protection: 1; report=<reporting-uri> would allows the browser to block, sanitise and report the attacker. 
![xss](/images/dast-xss.png)
- Lastly, there is a medium priority threat posed by the absense of the X-Frame header. If the browser is not explicity told that a page cannot be rendered in a different format (for example, <embed>), then the app is vulnerable to click-jacking attacks by being embedded secretly in other sites. Click-jacking is a common form of attack whereby a user is tricked into clicking links, compromising their details on an unsecure site. X-Frame-Options: DENY should be specified for maximum security.
![x-frame](/images/dast-x-frame.png)


 

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
  
