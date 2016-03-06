

init(){

    echo "Setup SSH key and add to Github"
    echo "==============================="
    echo ""

    answered=false

    while [[ $answered == false ]]; do

        echo    # (optional) move to a new line
        read -p "Add your ssh key to githhub [y/N] ?" response
        if [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]; then

            #get username
            name=''
            asked=0
            while [[ $name = "" ]]; do

                if [[ $asked -gt 5 ]]; then
                    echo "WHATS YOUR USER NAME?!?"
                else
                    echo "whats your username?"
                fi
                read name
                asked=$(($asked + 1))
            done
            device=$(hostname)
            # ask for password and send creds
            curl -u "$name" \
                --data "{\"title\":\"${device}_`date +%Y%m%d%H%M%S`\",\"key\":\"`cat ~/.ssh/id_rsa.pub`\"}" \
                https://api.github.com/user/keys
            answered=true

        # else if no is selected
        elif [[ $response =~ ^([nN][oO]|[nO])$ ]]; then

            echo "ok, we wont add your keys"
            answered=true

        # if neither yes nor no is select then we ask again
        else
            echo "Please enter [yes/no] or [y/n] (case insenstive)"
        fi
    done
}


init