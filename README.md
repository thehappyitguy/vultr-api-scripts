# vultr-api-scripts
The vultr-api-scripts repository contains easy to use scripts for automating Vultr VPS creation, updates and more using the Vultr API. Perfect for developers and sysadmins.

# SOP for creating a new Vultr VPS using the create_vultr_vps.sh script:

Download the create_vultr_vps.sh script from the vultr-api-scripts repository on Github.

Replace "<enter-api-key-here>" in the script with your Vultr API key.

Customize the script to meet your specific needs. You can change the region, plan, and other parameters with values from the Vultr API. You can find a list of available regions, plans, and operating systems by using the commands provided in the script description.

Make the script executable by running "chmod +x create_vultr_vps.sh"

Run the script by executing "./create_vultr_vps.sh"

Wait for the script to complete. The VPS instance will be created and the necessary packages will be updated and installed. The VPS will also reboot after the updates are done.

Verify that the new VPS instance has been created on your Vultr account and that the hostname, region, and plan match the values specified in the script.

The script is open-source, so you can share it on your Github account and other platforms if you wish to do so.

# jq
To install 'jq' on your system, you can use the package manager that is specific to your operating system. Below are the commands for some common operating systems:

Ubuntu/Debian:
sudo apt-get install jq

CentOS/Fedora:
sudo yum install jq

MacOS:
brew install jq

Alternatively, you can download the binary package from the official website (https://stedolan.github.io/jq/) and install it manually.

Once jq is installed, you can test it by running the command jq on your terminal, it should return the version of jq you have installed.

# Required Variables for VPS Creation 'regions', 'plans' & 'os'
To select the desired operating system, plan, and region for your VPS instance using Vultr's API, you can use the following steps:

Make a GET request to the Vultr API's "regions" endpoint using curl and pipe the response through jq.
curl --location --request GET 'https://api.vultr.com/v2/regions' | jq
This will return a list of all the available regions and their corresponding region codes that you can use in the VPS creation request.

Make a GET request to the Vultr API's "plans" endpoint using curl and pipe the response through jq.
curl --location --request GET 'https://api.vultr.com/v2/plans' | jq
This will return a list of all the available plans and their corresponding plan codes that you can use in the VPS creation request.

Make a GET request to the Vultr API's "os" endpoint using curl and pipe the response through jq.
curl --location --request GET 'https://api.vultr.com/v2/os' | jq
This will return a list of all the available operating systems and their corresponding OS IDs that you can use in the VPS creation request.

You can then use the region code, plan code, or OS ID in the corresponding fields in the VPS creation request to specify the desired region, plan, and operating system for your VPS instance.

Please note that you should replace the "<api-key>" in the above command with your actual API key.
