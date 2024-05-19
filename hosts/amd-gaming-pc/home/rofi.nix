{ pkgs, ... }:
{
  home.packages = with pkgs; [
    rofi-wayland
  ];

  home.file.".config/rofi/config.rasi".text = ''
    /*Dracula theme based on the Purple official rofi theme*/

    configuration {
        show-icons:      false;
        display-drun:    "";
        disable-history: false;
        display-drun: " ";
        display-run: " ";
        display-window: " ";
        terminal: "kitty";
    }

    * {
        font: "Jetbrains Mono 12";
        foreground: #a9b1d6;
        background-color: #1a1b26;
        active-background: #16161e;
        urgent-background: #111117;
        urgent-foreground: #16161e;
        selected-background: @active-background;
        selected-urgent-background: @urgent-background;
        selected-active-background: @active-background;
        separatorcolor: @active-background;
        bordercolor: #bb9af7;
    }

    #window {
        background-color: @background-color;
        border:           3;
        border-radius:    4;
        border-color:     @bordercolor;
        padding:          15;
    }
    #mainbox {
        border:  0;
        padding: 0;
    }
    #message {
        border:       0px;
        border-color: @separatorcolor;
        padding:      1px;
    }
    #textbox {
        text-color: @foreground;
    }
    #listview {
        fixed-height: 0;
        border:       0px;
        border-color: @bordercolor;
        spacing:      2px ;
        scrollbar:    false;
        padding:      2px 0px 0px ;
    }
    #element {
        border:  0;
        padding: 3px ;
    }
    #element.normal.normal {
        background-color: @background-color;
        text-color:       @foreground;
    }
    #element.normal.urgent {
        background-color: @urgent-background;
        text-color:       @urgent-foreground;
    }
    #element.normal.active {
        background-color: @active-background;
        text-color:       @foreground;
    }
    #element.selected.normal {
        background-color: @selected-background;
        text-color:       @foreground;
    }
    #element.selected.urgent {
        background-color: @selected-urgent-background;
        text-color:       @foreground;
    }
    #element.selected.active {
        background-color: @selected-active-background;
        text-color:       @foreground;
    }
    #element.alternate.normal {
        background-color: @background-color;
        text-color:       @foreground;
    }
    #element.alternate.urgent {
        background-color: @urgent-background;
        text-color:       @foreground;
    }
    #element.alternate.active {
        background-color: @active-background;
        text-color:       @foreground;
    }
    #scrollbar {
        width:        2px ;
        border:       0;
        handle-width: 8px ;
        padding:      0;
    }
    #sidebar {
        border:       2px dash 0px 0px ;
        border-color: @separatorcolor;
    }
    #button.selected {
        background-color: @selected-background;
        text-color:       @foreground;
    }
    #inputbar {
        spacing:    0;
        text-color: @foreground;
        padding:    1px ;
    }
    #case-indicator {
        spacing:    0;
        text-color: @foreground;
    }
    #entry {
        spacing:    0;
        text-color: @foreground;
    }
    #prompt {
        spacing:    0;
        text-color: @foreground;
    }
    #inputbar {
        children:   [ prompt,textbox-prompt-colon,entry,case-indicator ];
    }
    #textbox-prompt-colon {
        expand:     false;
        str:        "";
        margin:     0px 0.3em 0em 0em ;
        text-color: @foreground;
    }
    element-text, element-icon {
        background-color: inherit;
        text-color: inherit;
    }

  '';
}
