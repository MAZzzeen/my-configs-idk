// Load with --load-config examples/2.jsonc
// Note that you must replace the image path to an existing image to display it.

{
    "$schema": "https://github.com/fastfetch-cli/fastfetch/raw/dev/doc/json_schema.json",
    "logo": {
        "padding": {
            "top": 1
        }
    },
    "display": {
        "separator": " -> "
    },
    "modules": [
        "title",
        "separator",
        {
            "type": "os",
            "key": " OS",
            "keyColor": "yellow",
            "format": "{2}"
        },
        {
            "type": "kernel",
            "key": "├",
            "keyColor": "yellow"
        },
        {
            "type": "packages",
            "key": "├󰏖",
            "keyColor": "yellow"
        },
        {
            "type": "shell",
            "key": "└",
            "keyColor": "yellow"
        },
        "break",

        {
            "type": "wm",
            "key": " DE/WM",
            "keyColor": "blue"
        },
        {
            "type": "lm",
            "key": "├󰧨",
            "keyColor": "blue"
        },
        {
            "type": "wmtheme",
            "key": "├󰉼",
            "keyColor": "blue"
        },
        {
            "type": "icons",
            "key": "├󰀻",
            "keyColor": "blue"
        },
        {
            "type": "terminal",
            "key": "├",
            "keyColor": "blue"
        },
        {
            "type": "wallpaper",
            "key": "└󰸉",
            "keyColor": "blue"
        },

        "break",
        {
            "type": "host",
            "key": " PC",
            "keyColor": "green"
        },
        {
            "type": "cpu",
            "key": "├\uf4bc",
            "keyColor": "green"
        },

        {
            "type": "disk",
            "key": "├",
            "keyColor": "green"
        },
        {
            "type": "memory",
            "key": "├󰑭",
            "keyColor": "green"
        },
        {
            "type": "uptime",
            "key": "├󰅐",
            "keyColor": "green"
        },
        {
            "type": "display",
            "key": "└󰍹",
            "keyColor": "green"
        },

        "break",
        "colors"
    ]
}
