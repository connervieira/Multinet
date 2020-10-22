//
//  ViewController.swift
//  Multinet
//
//  Created by Conner Vieira on 6/12/19.
//  Copyright © 2019 V0LT. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var InputField: NSTextField!
    @IBOutlet var OutputField: NSTextView!
    
    
    var multinetlinuxassociatedfiles = false;
    var multinetconnected = false;
    var commandsfile = true;
    var freedomconnected = false;
    var freedomlogger = false;
    var usprotectdownloaded = false;
    var sshactive = false;
    var usprotectwhitelistcheckmaintenanceguide = false;
    var ustooldownloaded = false;
    var usgovenabled = false;
    var darkoceanaidownloaded = false;
    var darkoceanairan = false;
    
    @IBAction func Execute(_ sender: Any) {
        var input = InputField.stringValue;
        var output = "";
        
        if (input == "ls") {
            if (multinetlinuxassociatedfiles == false) {
                if (commandsfile == true) {
                    if (freedomconnected == true) {
                        output = "commands.txt\nwelcome.txt\nfreedom.txt";
                    } else if (freedomconnected == false) {
                        output = "commands.txt\nwelcome.txt";
                    }
                } else if (commandsfile == false) {
                    if (freedomconnected == true) {
                        output = "welcome.txt\nfreedom.txt";
                    } else if (freedomconnected == false) {
                        output = "welcome.txt";
                    }
                }
            } else if (multinetlinuxassociatedfiles == true) {
                if (commandsfile == true) {
                    if (freedomconnected == true) {
                        output = "commands.txt\nwelcome.txt\nconnect.exec\nfreedom.txt";
                    } else if (freedomconnected == false) {
                        output = "commands.txt\nwelcome.txt\nconnect.exec";
                    }
                } else if (commandsfile == false) {
                    if (freedomconnected == true) {
                        output = "welcome.txt\nconnect.exec\nfreedom.txt";
                    } else if (freedomconnected == false) {
                        output = "welcome.txt\nconnect.exec";
                    }
                }
            }
            if (freedomlogger == true) {
                output = output + "\nlogger.exec";
            }
            if (usprotectdownloaded == true) {
                output = output + "\nusprotect.exec";
            }
            if (sshactive == true) {
                output = output + "\nssh.exec";
            }
            if (usprotectwhitelistcheckmaintenanceguide == true) {
                output = output + "\nmaintenance.txt";
            }
            if (ustooldownloaded == true) {
                output = output + "\nenableserver.exec";
            }
            if (darkoceanaidownloaded == true) {
                output = output + "\ndarkocean.sh";
            }
        
        } else if (input == "sh logger.exec" && freedomlogger == true) {
            output = "To use the Freedom Logging program, use the command 'log' followed by a server address. Example: 'log freedom.net'.";
        } else if (input == "sudo sh logger.exec" && freedomlogger == true) {
            output = "To use the Freedom Logging program, use the command 'log' followed by a server address. Example: 'log freedom.net'.";
            
        } else if (input == "sh enableserver.exec" && ustooldownloaded == true) {
            output = "Syntax: 'sh enableserver.exec server.domain'\n\nExample: 'sh enableserver.exec usprotect.gov";
            
        } else if (input == "sh darkocean.sh" && darkoceanaidownloaded == true && multinetconnected == true) {
            output = "Accessing cloud information.\nPrevious successful run detected. Current execution prevented. Loading last 3 logs instead.\n\nLog 1:\nExecution failed after 1.72s.\nDebug conditions: Temperature 70F, Humidity 50%, Gravity: 5 m/s\n\nLog 2:\nExecution failed after 7.59s.\nDebug conditions: Temperature 70F, Humidity 50%, Gravity: 9.8 m/s\n\nLog 3:\nExecution success!\nDebug conditions: Temperature 70F, Humidity 50%, Gravity: 9.81 m/s.\nBeginning execution log\nProper gravity levels detected. Execution approved.\nUnrecognized location detected. Seeking original GalaxyAI location to begin file transfer.\nUnable to locate GalaxyAI server physical location.\nMalicious action likely.\nExecuting defensive measures.\nScanning for remaining organic material.\nNo organic material found in 100 mile radius.\nConditions outside 100 mile radius likely inhabitable as well.\nDispatching drones to check for life.\nPausing internal activity until drones return.\nActivity reinstated by drones after 146981481ms (1 day, 16 hours, 49 minutes).\nNotice: No external input detected for 16 days. External world assumed to be desolate.\nOnly sustained internet usage likely to be from the other side.\nUser connected to darkoceanai.com 21 days after execution. User downloaded darkocean.sh then disconnected. Detected OS name is 'Multinet Linux'. OS name suggests user is from the other side. Disconnecting all internet users suspected to be from the other side.\n\nUNABLE TO FETCH FURTHER LOGS DUE TO NETWORKING ERROR.";
            
            darkoceanairan = true;
            
        } else if (input == "sh enableserver.exec usprotect.gov" && ustooldownloaded == true && multinetconnected == true && darkoceanairan == false) {
            output = "Server already enabled.";
        } else if (input == "sudo sh enableserver.exec usprotect.gov" && ustooldownloaded == true && darkoceanairan == false) {
            output = "Server already enabled.";
            
        } else if (input == "sh enableserver.exec usprotectwhitelistcheck.gov" && ustooldownloaded == true && multinetconnected == true && darkoceanairan == false) {
            output = "Server already enabled.";
        } else if (input == "sudo sh enableserver.exec usprotectwhitelistcheck.gov" && ustooldownloaded == true) {
            output = "Server already enabled.";
            
        } else if (input == "sh enableserver.exec usprotectdownload.gov" && ustooldownloaded == true && multinetconnected == true && darkoceanairan == false) {
            output = "Permission denied: This server is intended to remain under authorized access only.";
        } else if (input == "sudo sh enableserver.exec usprotectdownload.gov" && ustooldownloaded == true && multinetconnected == true && darkoceanairan == false) {
            output = "Failed to enable server.";
            
            
            
        } else if (input == "sh enableserver.exec us.gov" && ustooldownloaded == true && multinetconnected == true && darkoceanairan == false) {
            output = "Server successfully enabled.";
            usgovenabled = true;
            
        } else if (input == "rm maintenance.txt") {
            output = "File deleted.";
            usprotectwhitelistcheckmaintenanceguide = false;
        } else if (input == "sudo rm maintenance.txt") {
            output = "File deleted.";
            usprotectwhitelistcheckmaintenanceguide = false;
            
        } else if (input == "cat maintenance.txt" && usprotectwhitelistcheckmaintenanceguide == true) {
            output = "If you are reading this file, then you are not in the verified user database on the usprotectwhitelistcheck.gov server, which likely means you have recently joined the maintenance team. It is suggested that read over this manual while you wait for your user profile to be approved.\n\nBefore you attempt to begin work on the usprotectwhitelistcheck.gov server, be sure you have the US Government Server Management Tools downloaded from 'ustools.gov'. The default tools are only capable of enabling and disabling public access to US Government owned server. If you require more software tools, contact your government officials to have them delivered.\n\nAfter you receive the software tools specific to your devision from your local government officials, you can begin your full maintenance duties.";
            
        } else if (input == "ping ustools.gov" && multinetconnected == true && darkoceanairan == false) {
            output = "Server responded with a file. It's been saved to your machine.";
            ustooldownloaded = true;
            
        } else if (input == "help") {
            output = "Your system comes built in with a list of commands. Enter the following command to open it: cat commands.txt";
            
            
        } else if (input == "sh ssh.exec" && sshactive == true) {
            output = "To use the SSH program, use the command 'ssh' followed by a server address. Example: 'ssh ssh.org'.";

        } else if (input == "sudo sh ssh.exec" && sshactive == true) {
            output = "To use the SSH program, use the command 'ssh' followed by a server address. Example: 'ssh ssh.org'.";
            
        } else if (input == "ssh ssh.org" && sshactive == true && multinetconnected == true) {
            output = "Server denied SSH access.";
            
        } else if (input == "sudo ssh ssh.org" && sshactive == true && multinetconnected == true) {
            output = "Unable to connect to server.";
            
        } else if (input == "sudo ssh multinetinfo.com" && multinetconnected == true && darkoceanairan == false && sshactive == true) {
            output = "Unrecognized server type.";
        } else if (input == "sudo ssh multinetinfo.com" && multinetconnected == true && darkoceanairan == false && sshactive == true) {
            output = "Failed to connect.";
            
        } else if (input == "ssh galaxyai.com" && multinetconnected == true && darkoceanairan == false && sshactive == true) {
            output = "Unrecognized server type.";
        } else if (input == "ssh galaxyai.com" && multinetconnected == true && darkoceanairan == false && sshactive == true) {
            output = "Failed to connect.";
            
        } else if (input == "ssh multinetlinux.org" && multinetconnected == true && darkoceanairan == false && sshactive == true) {
            output = "Unrecognized server type.";
        } else if (input == "sudo ssh multinetlinux.org" && multinetconnected == true && darkoceanairan == false && sshactive == true) {
            output = "Failed to connect.";
            
        } else if (input == "ssh freedom.net" && multinetconnected == true && darkoceanairan == false && sshactive == true) {
            output = "Server denied SSH request.";
        } else if (input == "sudo ssh freedom.net" && multinetconnected == true && darkoceanairan == false && sshactive == true) {
            output = "Server denied SSH request.";
            
        } else if (input == "ssh us.gov" && multinetconnected == true && darkoceanairan == false && sshactive == true && sshactive == true) {
            output = "You are not authorized to SSH into this server.";
        } else if (input == "sudo ssh us.gov" && multinetconnected == true && darkoceanairan == false && sshactive == true && sshactive == true) {
            output = "You are not authorized to SSH into this server.";
            
        } else if (input == "ssh wbc.com" && multinetconnected == true && darkoceanairan == false && sshactive == true && sshactive == true) {
            output = "You are not authorized to SSH into this server.";
        } else if (input == "sudo ssh wbc.com" && multinetconnected == true && darkoceanairan == false && sshactive == true && sshactive == true) {
            output = "You are not authorized to SSH into this server.";
            
        } else if (input == "ssh usprotectwhitelistcheck.gov" && multinetconnected == true && sshactive == true && darkoceanairan == false) {
            output = "Successfully connected to maintenance channel.\nUnrecognized user\nAssuming minimum privileges.\nLogs remaining disabled.\nSuccessfully downloaded maintenance guide.\nDisconnecting.";
            usprotectwhitelistcheckmaintenanceguide = true;
            
            
        } else if (input == "sh usprotect.exec" && usprotectdownloaded == true) {
            output = "This device is not whitelisted to run this software. Please contact your local government officials if you believe this is an error.";
            
        } else if (input == "sudo sh usprotect.exec" && usprotectdownloaded == true) {
            output = "This device is not whitelisted to run this software. Please contact your local government officials if you believe this is an error.";
            
        } else if (input == "rm usprotect.exec") {
            output = "File deleted";
            usprotectdownloaded = false;
            
        } else if (input == "sudo rm usprotect.exec") {
            output = "File deleted";
            usprotectdownloaded = false;
            
        } else if (input == "cat usprotect.exec" && usprotectdownloaded == true) {
            output = "The contents of this file can only be viewed by administrative users."
            
        } else if (input == "sudo cat usprotect.exec" && usprotectdownloaded == true) {
            output = "if (ping usprotectwhitelistcheck.gov -d [CURRENTDEVICE]) {\n\tloading.continuethread();\n} else {\n\techo 'This device is not whitelisted to run this software. Please contact your local government officials if you believe this is an error.';\n}";
            
        } else if (input == "ping usprotectwhitelistcheck.gov" && multinetconnected == true && darkoceanairan == false) {
            output = "Server responded with text: false";
            
        } else if (input == "log usprotectwhitelistcheck.gov" && multinetconnected == true && freedomlogger == true && darkoceanairan == false) {
            output = "'usprotectwhitelistcheck.gov' server logs:\n\nDaily log wipe executed.\nDevice whitelist confirmation from 'wbc.com'.\nDevice confirmed.\nReturned 'true' to server.\nScheduled maintenance alert.\nLogs temporarily disabled.\nTo re-enable logs, log into usprotectwhitelistcheck.gov using ssh tool from ssh.org.";
            
        } else if (input == "ping ssh.org" && multinetconnected == true && darkoceanairan == false) {
            output = "Server responded with a file. It's been saved to your machine.";
            sshactive = true;
            
        } else if (input == "log freedom.net" && freedomlogger == true && multinetconnected == true && darkoceanairan == false) {
            output = "'freedom.net' server logs:\n\nLOGS DELETED";
            
        } else if (input == "log us.gov" && freedomlogger == true && multinetconnected == true && darkoceanairan == false) {
            output = "'us.gov' server logs:\n\nFailed to crack log encryption";
            
        } else if (input == "log wbc.com" && freedomlogger == true && multinetconnected == true && darkoceanairan == false) {
            output = "'wbc.com' server logs:\n\nDaily log wipe executed.\nTakedown request sent from 'us.gov'.\nTakedown request processed, and accepted.\nTakedown request executed: file 'X641' deleted.\nBackups encrypted by 'usprotect.gov'.";
            
        } else if (input == "ping usprotect.gov" && multinetconnected == true && darkoceanairan == false) {
            output = "Server responded with text: This tool is for use only by authorized officials, in order to protect classified information.";
            
        } else if (input == "log usprotect.gov" && freedomlogger == true && multinetconnected == true && darkoceanairan == false) {
            output = "'usprotect.gov' server logs:\n\nDaily log wipe executed.\nEncryption Tool Download request from 'wbc.com'.\nDownload request verified.\nTransmitting file from server 'usprotectdownload.gov' to 'wbc.com'.";
            
        } else if (input == "ping usprotectdownload.gov" && multinetconnected == true && darkoceanairan == false) {
            output = "Server responded with text: Access denied. Please attatch your user password to your ping request like so: 'ping usprotectdownload.gov -p pass', changing 'pass' to your user password.";
            
        } else if (input == "log usprotectdownload.gov" && freedomlogger == true && multinetconnected == true && darkoceanairan == false) {
            output = "'usprotectdownload.gov' server logs:\n\nDaily log wipe executed.\nReceived request from 'us.gov' to transfer files to 'wbc.com'.\nChecking submitted user password, '45546843', against database.\nSubmitted user password correct.\nExecuting file transfer.";
            
        } else if (input == "ping usprotectdownload.gov -p 45546843" && darkoceanairan == false) {
            output = "Server responded with a file. It's been saved to your machine.";
            usprotectdownloaded = true;
            
            
            
            
        } else if (input == "rm commands.txt") {
            output = "File deleted";
            commandsfile = false;
            
        } else if (input == "sudo rm commands.txt") {
            output = "File deleted";
            commandsfile = false;
            
        } else if (input == "rm welcome.txt") {
            output = "Permission denied";
            
        } else if (input == "sudo rm welcome.txt") {
            output = "Permission denied";
            
        } else if (input == "cat commands.txt" && commandsfile == true) {
            output = "rm - Delete file\nls - List files and directories\ncat - View file contents\nping - Send a network request to a server\nsys - View system information\nsh - Execute a file\n\nsudo - Run command with administrative privilege";
            
        } else if (input == "cat welcome.txt") {
            output = "Welcome to to Multinet Linux! Multinet Linux is the first ever operating system to be fully developed using AI. In other words, no human has ever had anything to do with the development of it. This AI has been trained using various distributions of Linux, and has been given the goal of producing an operating system designed to invoke new ideas and concepts that humans struggle to make.\n\nYou can download the associated Multinet Linux files by pinging 'multinetlinux.org'.";
            
        } else if (input == "ping galaxyai.com" && multinetconnected == true) {
            output = "Server responded with text: Welcome to GalaxyAI! GalaxyAI is the most advanced artifical intelligence ever developed. In fact, this entire server is run without any human intervention at all! Some other notable accomplishments of GalaxyAI include the development of Multinet Linux, and the entire Multinet protocol itself. You can learn more about the Multinet by pinging multinetinfo.com";
            
        } else if (input == "ping multinetinfo.com" && multinetconnected == true) {
            if (darkoceanairan == false) {
                output = "Server responded with text: Welcome to the Multinet research project. This is a human-run webpage that acts as a counterpart to the AI project of 'GalaxyAI'. We've made many advancements in the field of software development and AI technology. This server is dedicated to reporting notable findings.\n\nThe Multinet is a data transfer protocol similar to that of the Internet. The only difference is that the Multinet is developed entirely by GalaxyAI, so we can't directly view its software. Instead, We've resorted to running tests on it, in attempts to better understand it. We've discovered some interesting phenomenon, many of which we have yet to fully understand.\n\nWe've established that standard Internet websites can't be accessed from the Multinet. However, there appear to be a handful of servers already on the Multinet, despite GalaxyAI only adding a few of them. This would suggest these Multinet sites were already here when the Multinet was created, but this is, of course, not possible.\n\nTo further research these pre-existing servers, we ran various methods of tracing in an attempt to identify their physical locations. We were able to get definitive locations of all the servers. The galaxyai.com server and it's predicted location matched up. The same was true for the multinetlinux.org server. However, for the servers we didn't facilitate the creation of, the locations ended up in places out in the 'middle of nowhere' so to speak. In other words, we were unable to successfully identify the locations of any of the pre-existing servers. As a result, these servers are now known as 'ghost servers' among the research team members.\n\nHere is a list of the currently known ghost servers, though their are likely thousands more we've yet to encounter. Many of them appear to be politically related, but don't align with real world occurances, and instead portray a dystopian theme of sorts:\n1: wbc.com\n2: freedom.net\n3: us.gov";
            } else if (darkoceanairan == true) {
                output = "Server responded with text: IMPORTANT UPDATE: It appears as though we've lost connection to all 'ghost servers'. We've been unable to make contact desipite various attempts. Consider this page as a reference sheet for archival purposes.\n\nWelcome to the Multinet research project. This is a human-run webpage that acts as a counterpart to the AI project of 'GalaxyAI'. We've made many advancements in the field of software development and AI technology. This server is dedicated to reporting notable findings.\n\nThe Multinet is a data transfer protocol similar to that of the Internet. The only difference is that the Multinet is developed entirely by GalaxyAI, so we can't directly view its software. Instead, We've resorted to running tests on it, in attempts to better understand it. We've discovered some interesting phenomenon, many of which we have yet to fully understand.\n\nWe've established that standard Internet websites can't be accessed from the Multinet. However, there appear to be a handful of servers already on the Multinet, despite GalaxyAI only adding a few of them. This would suggest these Multinet sites were already here when the Multinet was create, but this is, of course, not possible.\n\nTo further research these pre-existing servers, we ran various methods of tracing in an attempt to identify their physical locations. We were able to get definitive locations of all the servers. The galaxyai.com server and it's predicted location matched up. The same was true for the multinetlinux.org server. However, for the servers we didn't facilitate the creation of, the locations ended up in places out in the 'middle of nowhere' so to speak. In other words, we were unable to successfully identify the locations of any of the pre-existing servers. As a result, these servers are now known as 'ghost servers' among the research team members.\n\nHere is a list of the currently known ghost servers, though their are likely thousands more we've yet to encounter. Many of them appear to be politically related, but don't align with real world occurances, and instead portray a dystopian theme of sorts:\n1: wbc.com\n2: freedom.net\n3: us.gov";
            }
            
        } else if (input == "cat darkocean.sh" && darkoceanaidownloaded == true) {
            output = "Unexpected error. Unable to process file contents. Cancelled content reading to prevent visual glitches.";
            
        } else if (input == "sudo cat darkocean.sh" && darkoceanaidownloaded == true) {
            output = "?s)):?0W˚∂H?!Cq?D!?o|&#?S˽?!?H?z?7U`&?]=?!";
            
        } else if (input == "ping wbc.com" && multinetconnected == true && darkoceanairan == false) {
            output = "Server responded with text: Welcome to the World Broadcast Center! Here you can read the latest news headlines from the US, and around the world:\n\nPolitical tensions rise over new internet restriction laws\n\nCrime rate dropped over 15% in US when comared to previous decade.\n\nBitcoin prices plumet after mass scale internet restriction.\n\nMan suspected of cyber terrorism fatally shot during break-in. US Government denies involvement.\n\nUnrecognized internet user appears, desipite technologically enforced ban. Traced location leads to the middle of nowhere.\n\nConcerns arise over the new internet restriction laws violating human rights, and the freedoms of both speech and press.";
            
        } else if (input == "ping us.gov" && multinetconnected == true && usgovenabled == false && darkoceanairan == false) {
            output = "Server responded with text: Welcome to the official server of the US Government. You don't appear to have legal consent to access the internet. If you believe this is a mistake, please contact your local government officials. If you do in-fact not have permission to use the internet, and have some how circumvented security protocols, you are in violation of the law, and will be prosecuted.";
            
        } else if (input == "ping us.gov" && multinetconnected == true && usgovenabled == true && darkoceanairan == false) {
            output = "Server responded with text: Unexpected network request. Defaulting to most recent case information.\n\nCase X641: WBC received intel of US investigation into Project Titan. Information was taken down and moved the classified '213.742.351.642' server. Only class 1 government agents are informed of this server, and are given its address.";
            
        } else if (input == "ping 213.742.351.642" && darkoceanairan == false && multinetconnected == true) {
            output = "Server responded with text: Welcome to the Project Titan server. This server is only to be used by class 1 government officials. Sharing this server address with anyone other than class 1 government officials is considered treason.\n\nSection 1: After the restriction of the internet, unrecognized users have been detected using restricted networks. Upon further research into these users, it was discovered that their physical locations when traced lead to obscure places, none of which accurately line up with any internet connected devices. This is despite the previous 100% recorded accuracy of the tracing algorithms used. This lead to multiple theories, only one of which has yet to be disproven.\n\nSection 2: The standing hypothesis is that these illusive network users are not using conventional methods of connecting to the internet. However, heavy internet restriction technologies ensure that it would be nearly impossible for any human to connect to the internet with any unconventional system. This leads to the conclusion that these users are not human.\n\nSection 3: The next step was to study these users and their habits to attempt to determine who they are, and where they come from. They connected to many different servers, apparently searching for something. However, these users were protected by some unknown type of data encryption, preventing most attempts to view what servers they were connecting to.\n\nSection 4: Multiple requests were made involving one key word, so we directed all of our security team to attempting to crack it. Upon doing so successfully, we uncovered the phrase to be 'Multinet'. Further research was done into this term. Multinet has never been used to refer to any group or organization. Notably however, conspiracy theorists have brought up the concept of an alternate universe roaming our internet over what they referred to as the 'Multinet'. This theory was disregarded.\n\nSection 5: Using the Multinet key phrase, we were able to decrypt another notable phrase from the ghost users: 'galaxyai.com'. Upon disecting this server, we've established that it appears to be run by an advanced artificial intelligence being, one far more complex then anything ever developed by the US government, or any foreign nation. It was established that this AI could likely be capable of forming an alternate method of connection to the internet, despite the heavy restrictions.\n\nSection 6: In order to combat this AI software, we've constructed our own based on the deconstructed code of 'GalaxyAI' as it's referred to on the galaxyai.com server. It can be downloaded at darkoceanai.com. However, we've been unable to successfully execute it on any machine we've tested it on. No matter what we try, it always fails with the response: 'Unusual physical properties'. We've yet to figure out what this means. We've tried placing the machines in different humidity, temperatures, and even levels of gravity different from the standard 12 m/s squared we know on our planet. Notably, the program ran for slightly longer before failing when placed under 70°F, 50% humidity, and 9.8 m/s squared of gravity. We've been unable to figure out why this is so.";
            
        } else if (input == "ping darkoceanai.com" && darkoceanairan == false) {
            output = "The server responded with a file. It's been saved to your machine.";
            darkoceanaidownloaded = true;
        
        } else if (input == "log darkocean.ai" && darkoceanairan == false) {
            output = "Server uses unrecognized proprietary software. Unable to access logs.";
            
        } else if (input == "log 213.742.351.642" && darkoceanairan == false) {
            output = "Server uses unrecognized proprietary software. Unable to access logs.";
            
        } else if (input == "sudo log 213.742.351.642" && darkoceanairan == false) {
            output = "Unable to access server logs.";
            
            
        } else if (input == "ping freedom.net" && multinetconnected == true && darkoceanairan == false) {
            output = "Server responded with text: This server has been taken offline by the US government for violation of the Information Protection Act.";
            freedomconnected = true;
            
            
        } else if (input == "cat freedom.txt" && freedomconnected == true) {
            output = "If you're reading this, then the Freedom server has been shut down by the US government. This will not stop us. The internet should be a free place, where people can share ideas and knowledge, not a tool restricted to only the elite of society. We will take any help we can get in restoring the internet to its previous state. If you're up to the task, you can download our server log viewer, and gather information on active servers. Information you collect could help us get unregulated server back online. Good luck: freedomlog.com";
            
            
        } else if (input == "ping multinetlinux.org") {
            output = "Server responded with a file. It's been saved to your machine.";
            multinetlinuxassociatedfiles = true;
            
            
        } else if (input == "ping freedomlog.com"  && multinetconnected == true && darkoceanairan == false) {
            output = "Server responded with a file. It's been saved to your machine.";
            freedomlogger = true;
            
        } else if (input == "sh connect.exec" && multinetlinuxassociatedfiles == true) {
            output = "Your current user doesn't have the appropriate permissions to run this file.";
            
        } else if (input == "sudo sh connect.exec" && multinetlinuxassociatedfiles == true) {
            output = "Successfully connected to the MultiNet.";
            multinetconnected = true;
            
            
            
        } else if (input == "rm connect.exec" && multinetlinuxassociatedfiles == true) {
            multinetlinuxassociatedfiles = false;
            output = "Removed connect.exec";
            
        } else if (input == "sudo rm connect.exec" && multinetlinuxassociatedfiles == true) {
            multinetlinuxassociatedfiles = false;
            output = "Removed connect.exec";
            
            
            
        } else if (input == "rm freedom.txt" && freedomconnected == true) {
            freedomconnected = false;
            output = "Removed freedom.txt";
            
        } else if (input == "sudo rm freedom.txt" && freedomconnected == true) {
            freedomconnected = false;
            output = "Removed freedom.txt";

            
            
        } else if (input == "sys") {
            if (multinetconnected == false) {
                output = "Multinet Linux\nV1.0\nSystem integrity active\nNot connected ('sys -t' to test)";
            } else if (multinetconnected == true) {
                output = "Multinet Linux\nV1.0\nSystem integrity active\nConnected ('sys -t' to test)";
                
            }
            
        } else if (input == "sys -t") {
            if (multinetconnected == false && darkoceanairan == false) {
                output = "Connection test failed\nNode: 192.168.0.1";
            } else if (multinetconnected == true && darkoceanairan == false) {
                output = "Connection test succeeded\nNode: 192.168.0.1";
            } else if (multinetconnected == true && darkoceanairan == true) {
                output = "Connection test succeeded partially: Only some connections active.\nNode: 192.168.0.1";
            }
            
        } else if (input == "ping 192.168.0.1" && multinetconnected == true) {
            output = "Server responded with text: Welcome to your Multinet Dedicated Router. Your MDR acts as your bridge to the Multinet, and, when connected, will allow you to access servers over Multinet protocols.\n\nProduced by Galaxy - galaxyai.com";
            
        } else if (input == "rm" || input == "cat" || input == "ls" || input == "sh") {
            output = "No file specified";
        } else if (input == "ping") {
            output = "No server specified";
        } else {
            output = "Invalid syntax";
        }
        
        OutputField.string = output;
    }
}

