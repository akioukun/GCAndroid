GoTouchGrass() {
    credit_hah
    if ! command -v mongo &>/dev/null; then
        echo "${RC}Please install mongodb First!${WC}"
        echo
        echo -n "Press enter for back to Menu!"
        read
        main_menu
        return
    fi
    if [[ ! -f $wherethegrassss ]]; then
        echo "${RC}Error${WC} : $wherethegrassss not found!"
        echo -n "Press enter for back to Menu!"
        read -r
        main_menu
        return
    else
        pkill mongo
        sudo service mongodb start
        cd $HOME/Grasscutter
        java -jar $HOME/Grasscutter/grasscutter.jar
    fi
}
