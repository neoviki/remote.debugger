## Remote Debugger 

This utility is used to access a device remotely for debugging

## Source Code
  
	1. Clone this repo
	2. cd src

## Usage:


##### SYNTAX

	$./remote_debugger <username>@<remote_server_ip/dns>

	<remote_server_ip/dns>	: Server with public ip address and ssh access 
    <username>              : Server username 

##### Example 1

	$./remote_debugger

	 	Enter jump server [ ip address / domain name ]   : test.domain.com
		Enter remote server username                     : remote_user
		Enter remote server password                     : xxxxxxxx



		###############################################################


		 You can access this device via ssh using the following details,

			    ssh local_user@test.domain.com -p 10000 


		################################################################

##### Example 2
	
	$./remote_debugger remote_user@test.domain.com

		###############################################################


		 You can access this device via ssh using the following details,

			    ssh local_user@test.domain.com -p 10000 


		################################################################

##### Example 3 -> Run debugger in background
	
	$./remote_debugger remote_user@test.domain.com -bg

		###############################################################


		 You can access this device via ssh using the following details,

			    ssh local_user@test.domain.com -p 10000 


		################################################################


    -bg: This option is used to run the debugger in background 

##### Caution!!:
   
    Remember to terminate the debugger after completing your work using "terminate_remote_debugger".


#### Terminate Debugger

	This command terminates remote_debugger and all opened tcp ports

	$./terminate_remote_debugger

#### Client Prerequisite 

##### Install sshpass [ Ubuntu ]

	$sudo apt-get install sshpass

##### Install sshpass [ Mac ]

	$brew install https://raw.githubusercontent.com/kadwanev/bigboybrew/master/Library/Formula/sshpass.rb

#### Server Prerequisite [ test.domain.com ]
    
    Login to remote server in our case 'test.domain.com' ( This code is tested only on ubuntu server ). 

    $git clone <this repo>
    $cd server_setup
    $./enable_ssh_port_forwarding.sh
    
    #This command enable port forwarding in remote server (test.domain.com). 
    #"remote_debugger" can be used only after enabling port forwarding on jump server.

#### Tested Systems:

	- Linux 
	- Mac
