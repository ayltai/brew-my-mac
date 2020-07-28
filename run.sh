#!/bin/bash
set -u

printf '\e[8;50;120t'

echo 'Checking if Xcode command line tools are installed ...'
if !(type xcode-select >&- && path=$(xcode-select --print-path) && test -d "$path" && test -x "$path"); then
  echo 'Installing Xcode command line tools ...'
  xcode-select --install
fi
echo '✅ Xcode command line tools'

echo 'Checking if Homebrew is installed ...'
which -s brew
if [[ $? != 0 ]]; then
  echo 'Installing Homebrew ...'
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
echo '✅ Homebrew is installed'

echo 'Checking if Python is installed ...'
which -s python
if [[ $? != 0 ]]; then
  echo 'Installing Python ...'
  brew install python
fi
echo '✅ Python is installed'

echo 'Checking if Ansible is installed ...'
which -s ansible
if [[ $? != 0 ]]; then
  echo 'Installing Ansible ...'
  brew install ansible
fi
echo '✅ Ansible is installed'

echo 'Installing roles from Ansible Galaxy ...'
ansible-galaxy install --roles-path .roles -r requirements.yml

echo 'Checking if FIGlet is installed ...'
which -s figlet
if [[ $? != 0 ]]; then
  echo 'Installing FIGlet ...'
  brew install figlet
fi

figlet -f slant -c 'Brew My Mac'

echo 'Running Ansible playbook ...'
ANSIBLE_HOST_KEY_CHECKING=False \
ANSIBLE_ROLES_PATH=./.roles \
PROFILE_TASKS_SORT_ORDER=none \
PROFILE_TASKS_TASK_OUTPUT_LIMIT=all \
ansible-playbook \
  --extra-vars="ansible_become_pass='{{ sudo_password }}'" \
  -i inventory.yml \
  ./playbook.yml \
&& figlet -f banner3-d -c 'Enjoy!'
