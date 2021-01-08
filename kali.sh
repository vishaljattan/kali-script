#!/bin/bash
echo "Script made by Isham Jaglan"
echo "Follow me on github:"
echo "https://github.com/ishamjaglan"
echo -e "\nBacking Up sources.list to sources.list.backup"
sudo cp /etc/apt/sources.list /etc/apt/sources.list.backup
echo "# See https://www.kali.org/docs/general-use/kali-linux-sources-list-repositories/
# deb http://http.kali.org/kali kali-rolling main contrib non-free

deb https://kali.download/kali kali-rolling main contrib non-free
deb-src https://kali.download/kali kali-rolling main contrib non-free

deb http://mirror.cse.iitk.ac.in/debian buster main contrib non-free
deb-src http://mirror.cse.iitk.ac.in/debian buster main contrib non-free

# Additional line for source packages
# deb-src http://http.kali.org/kali kali-rolling main contrib non-free" | sudo tee /etc/apt/sources.list
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y install curl
mkdir downloaded-packages
cd downloaded-packages
echo -e "\nWant to install Discord?"
PS3="Please select an option : "
choices=("yes" "no")
select choice in "${choices[@]}"; do
        case $choice in
          yes)

            echo -e "\nInstalling Discord"
            curl -L "https://discord.com/api/download?platform=linux&format=deb" -o "discord.deb"
            sudo dpkg -i discord.deb
            sudo apt-get --fix-broken install
            sleep 1
            break
            ;;
          no)
            echo -e "Nise."
            sleep 1
            break
            ;;
  esac
done
echo -e "\nWant to install Teamviewer?"
PS3="Please select an option : "
choices=("yes" "no")
select choice in "${choices[@]}"; do
        case $choice in
          yes)

            echo -e "\nInstalling Teamviewer"
            curl -L "https://download.teamviewer.com/download/linux/teamviewer_amd64.deb" -o "teamviewer.deb"
            sudo dpkg -i teamviewer.deb
            sudo apt-get --fix-broken install
            sleep 1
            break
            ;;
          no)
            echo -e "Nise."
            sleep 1
            break
            ;;
  esac
  done
echo -e "\nWant to install Chromium Web Browser?"
PS3="Please select an option : "
choices=("yes" "no")
select choice in "${choices[@]}"; do
        case $choice in
          yes)

            echo -e "\nInstalling Chromium"
            sudo apt-get install chromium-browser
            sudo apt-get --fix-broken install
            sleep 1
            break
            ;;
          no)
            echo -e "Nise."
            sleep 1
            break
            ;;
  esac
done
echo -e "\nWant to install AnyDesk?"
PS3="Please select an option : "
choices=("yes" "no")
select choice in "${choices[@]}"; do
        case $choice in
          yes)

            echo -e "\nInstalling AnyDesk"
            wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | apt-key add -
            sudo echo "deb http://deb.anydesk.com/ all main" > /etc/apt/sources.list.d/anydesk-stable.list
            sudo apt-get update
            sudo apt-get -y install anydesk
            sleep 1
            break
            ;;
          no)
            echo -e "Nise."
            sleep 1
            break
            ;;
  esac
 done 
  echo -e "\nWant to install Visual Studio Code?"
PS3="Please select an option : "
choices=("yes" "no")
select choice in "${choices[@]}"; do
        case $choice in
          yes)

            echo -e "\nInstalling Visual Studio Code"
            wget https://vscode-update.azurewebsites.net/latest/linux-deb-x64/stable -O /tmp/code_latest_amd64.deb
sudo dpkg -i /tmp/code_latest_amd64.deb
            sudo apt-get --fix-broken install
            sleep 1
            break
            ;;
          no)
            echo -e "Nise."
            sleep 1
            break
            ;;
  esac
done
echo -e "\nWant to install Steam?"
PS3="Please select an option : "
choices=("yes" "no")
select choice in "${choices[@]}"; do
        case $choice in
          yes)

            echo -e "\nInstalling Steam"
            curl -L "https://cdn.cloudflare.steamstatic.com/client/installer/steam.deb" -o "steam.deb"
            sudo dpkg -i steam.deb
            sudo apt-get --fix-broken install
            sleep 1
            break
            ;;
          no)
            echo -e "Nise."
            sleep 1
            break
            ;;
  esac
done
cd .. && rm -rf downloaded-packages
echo -e "\n\n\nScript made by Isham Jaglan"
echo "Follow me on github:"
echo "https://github.com/ishamjaglan"
xdg-open https://github.com/ishamjaglan
