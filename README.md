# Add a user with its public key.
Simple script to add a new user with a given .pub file. It asks you the name of the username you want to create, you have to type a password for that user, and then it asks the content of the .pub file. Once that's done, you should be able to login using SSH, with that username and key file that you should have. 

## Keep in mind
You are pasting the content of the public key. That content is public. This is a simple script. No magic. 

# How to use
Run:  
`wget https://github.com/ntovarsolorzano/adduserwithpubfile/blob/main/newuser.sh; chmod +x newuser.sh; bash newuser.sh`

If fails, most likely you dont have 'wget' installed. Run:  
`sudo apt update -y; sudo apt install wget -y`

Follow the steps. 
