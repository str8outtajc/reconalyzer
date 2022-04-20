# reconalyzer
quick script that helps identify why jamf recons take so long

#### Usage  
```sh
sudo reconalyzer.sh
```

#### Overview  
This tool simply peppers in timestamps at one second intervals while a verbose recon is running.  The timestamps help identify which items (typically extension attributes) are taking longer to run.  

TIP: A well written extension attribute should ideally run in under one second.

#### Sample Output Snippet
```sh
 TIME1STAMP -- 095319
 verbose: Running script for the extension attribute VMs
 verbose: Running script for the extension attribute WiFi Proxy Settings
 verbose: Running script for the extension attribute Wireless MAC Address
 verbose: Running script for the extension attribute Agent Active Status
 TIMESTAMP -- 095320
 verbose: Running script for the extension attribute Xcode Command Line Tools Version
 verbose: Running script for the extension attribute Xcode Dev Tools - Python3 Version
 TIMESTAMP -- 095321
 verbose: Running script for the extension attribute XProtect-Date
 verbose: Running script for the extension attribute Zoom Settings
 TIMESTAMP -- 095322
 TIMESTAMP -- 095323
 TIMESTAMP -- 095325
 TIMESTAMP -- 095326
 Submitting data to https://myjamfurl/...
 ```
 
In the above example, you can see that the following EA's ran in under one second: VMs, WiFi Proxy Settings, Wireless MAC Address, Agent Active Status, Xcode Command Line Tools Version, Xcode Dev Tools - Python3 Version, XProtect-Date.

Howeer, the EA "Zoom Settings" took four seconds to run.
