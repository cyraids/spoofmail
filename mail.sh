#!/system/bin/sh



send_mail()
{
    echo "\e[1;32mEnter from name:\e[0m"
    read name
    echo "\e[1;32mEnter from email address:\e[0m"
    read from
    echo "\e[1;32mEnter To email address:\e[0m"
    read to
    echo "\e[1;32mSubject:\e[0m"
    read subject
    echo "\e[1;32mMessage:\e[0m"
    read message
    
    echo "\e[1;34msending..."
    
    curl --data "from=$from&name=$name&to=$to&subject=$subject&message=$message" http://cyraids.xyz/p/tools/mailspoofer/send-mail.php
   
    echo "\n"
    
    echo "\e[1;32mDo you want to send again [y/n]\e[0m"
    read repeat
    
    y="y"
    
    if [ "$repeat" != "$y" ]; then
        
        exit
    else 
            
        send_mail
    fi
        
    
    
    
    
}
send_mail
exit

    