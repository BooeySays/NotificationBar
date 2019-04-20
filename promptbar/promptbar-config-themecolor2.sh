#!/bin/bash


echo -e """

    PromptBar's main colorⁱ:     [ \`CHKMAINCLR\` ]
    PromprBar's font colorⁱ:     [ \`CHKFONTCLR\` ]

ⁱ   If the PromptBar's Color has not been selected, the
    color will automatically default to white.



    PREVIEW:
    \`preview\`


    """
    
function preview(){
    if [ $MainClr ]; then
        PreviewMainColor=$MainClr
    else
        PreviewMainColor='\033[37m'
    fi
    if [ $FontClr ]; then
        PreviewFontColor=$FontClr
    else
        PreviewMFontColor='\033[37m'
    fi

    echo -e """
$PreviewMainColor    ⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼
     \033[01;33mCUR DIR\033[37m: $PreviewFrontColor$(dirs)
$PreviewMainColor    ⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼
\033[m
"""
}





function CHK_CUR_THEME(){
    if [ $PB_THEME_LINE ]; then
        echo -e "The Prompt Bar's theme color has been set:\t\e[37m[$PB_THEME_LINE \e[07m     \e[m ]"
    else
        echo -en """The Prompt Bar's theme color has not been set yet.

Would you like to set it now?

\e[01;32m[\e[mY\e[01;32m]\e[mes | \e[01;31m[\e[mN\e[01;31m]\e[mo"""
         read -p ': ' -n 1 -r YesNoSelect
         case $YesNoSelect in
         y|Y)
            setthemecolor
            ;;
         n|N)
            ;;
         esac
Not Set
unset

    if [ $PB_THEME_FONT ]; then
        echo -e "The Prompt Bar's font color has been set:\t\e[37m[$PB_THEME_FONT \e[07m     \e[m ]"
