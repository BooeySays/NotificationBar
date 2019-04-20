#!/bin/bash

####    FUNC:   YesOrNo()
####    DESC:   Echo's Yes or No choices
####
function YesOrNo(){
    echo -e "\e[m\e[01;32m[\e[mY\e[01;32m]\e[mes | \e[01;31m[\e[mN\e[01;31m]\e[mo: "
}


####    FUNC:   GetCommand()
####    DESC:   Gets the command whose output will be
####            displayed
####
function GetCommand(){
    if [ $COMMANDTOEXEC ]; then
        unset COMMANDTOEXEC
    fi
    read -p 'Please enter the command you wish to be displayed: ' -r COMMANDTOEXEC
    ConfirmCommand
}

####    FUNC:   ConfirmCommand()
####    DESC:   Shows user the entered command's output and
####            asks user to confirm the command entered.
####
function ConfirmCommand(){
    clear
    echo -e """

The following is the output (from the command that you entered) is what
will be displayed.

\t$(echo -e "\e[32m") $(echo $($COMMANDTOEXEC))$(echo -e "\e[m")

Is this correct?

"""
echo -e "\e[m\e[01;32m[\e[mY\e[01;32m]\e[mes | \e[01;31m[\e[mN\e[01;31m]\e[mo: "
read -n 1 -r YesOrNoCase
case $YesOrNoCase in
n|N)
    GetCommand
    ;;
y|Y)
    ChooseAlignment
    ;;
*)
    echo -e "Error! - Invalid selection"
    read -p '[ Press any key to try again ]' -n 1
    clear
    GetCommand
    ;;
unset YesOrNoCase
esac
}

####    FUNC:    ChooseAlignment()
####    DESC:    Asks user to select the alignment to use
####
function ChooseAlignment(){
    clear
    echo -e """
    
    Which side would you like to align your command's output?
    
    1)  Left
    2)  Center
    3)  Right
    
"""
    read -p ': ' -n 1 -r align_select
    case $align_select in
    1)
        # FUNCTION TO ALIGN LEFT
        ;;
    2)
        # FUNCTION TO ALIGN CENTER
        ;;
    3)
        # FUNCTION TO ALIGN RIGHT
        ;;
    esac
    unset align_select
}
