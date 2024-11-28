#!/bin/bash

java() {
    echo "java meow"

    if [[ "$os" == "debian" ]]; then
        sudo apt update
        sudo apt install -y openjdk-17-jdk
    elif [[ "$os" == "mac" ]]; then
        brew install openjdk@17
    fi

    echo "Java 17 meowMeow"
}

jenkins() {
    echo "jenkins meow"

    if [[ "$os" == "debian" ]]; then
        sudo apt update
        sudo apt install -y wget
        wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
        sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
        sudo apt update
        sudo apt install -y jenkins
    elif [[ "$os" == "mac" ]]; then
        brew install jenkins-lts
    fi

    echo "Jenkins meowMeow"
}

os() {
    if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        if command -v apt &>/dev/null; then
            os="debian"
        fi
    elif [[ "$OSTYPE" == "darwin" ]]; then
        os="mac"
    else
        echo "Not supported system"
        exit 1
    fi
}

os
java
jenkins
