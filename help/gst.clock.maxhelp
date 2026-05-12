{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 4,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 34.0, 94.0, 842.0, 526.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-19",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 374.0, 114.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "arrows": 2,
                    "id": "obj-16",
                    "justification": 3,
                    "maxclass": "live.line",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 395.0, 238.0, 117.0, 108.0 ]
                }
            },
            {
                "box": {
                    "arrows": 1,
                    "id": "obj-15",
                    "justification": 4,
                    "maxclass": "live.line",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 187.0, 238.0, 117.0, 108.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 14.0,
                    "id": "obj-14",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 458.1030888557434, 201.0, 358.0, 22.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 458.0, 183.0, 291.0, 38.0 ],
                    "text": "click to sync all instanciated receivers (in external mode)"
                }
            },
            {
                "box": {
                    "arrows": 1,
                    "id": "obj-13",
                    "justification": 1,
                    "maxclass": "live.line",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 395.1030888557434, 203.0, 59.0, 18.0 ]
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 1,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-12",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.clock.maxpat",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "offset": [ 0.0, 0.0 ],
                    "patching_rect": [ 308.1030888557434, 157.0, 84.89691114425659, 105.0 ],
                    "varname": "gst.clock",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 1,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-5",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.riot-comote.maxpat",
                    "numinlets": 4,
                    "numoutlets": 5,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "", "", "", "", "" ],
                    "patching_rect": [ 375.00000032782555, 351.0, 335.9999993443489, 141.0 ],
                    "varname": "gst.riot-comote[1]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 1,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-3",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.riot-comote.maxpat",
                    "numinlets": 4,
                    "numoutlets": 5,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "", "", "", "", "" ],
                    "patching_rect": [ 21.000000327825546, 351.0, 335.9999993443489, 141.0 ],
                    "varname": "gst.riot-comote",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 14.0,
                    "id": "obj-11",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 36.0, 96.0, 306.0, 22.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 14.0, 178.0, 291.0, 38.0 ],
                    "text": "Master clock for multiple IMU modules receivers"
                }
            },
            {
                "box": {
                    "fontname": "Helvetica Neue Medium",
                    "fontsize": 30.0,
                    "id": "obj-1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 101.0, 43.0, 151.0, 42.0 ],
                    "text": "gst.clock"
                }
            },
            {
                "box": {
                    "fontname": "Helvetica Neue Medium",
                    "fontsize": 20.0,
                    "id": "obj-56",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 31.0, 12.0, 259.0, 30.0 ],
                    "text": "Gestural Sound Toolkit V2 "
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-12", 1 ],
                    "source": [ "obj-19", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-12::obj-11": [ "FrameRate", "FrameRate", 0 ],
            "obj-12::obj-17": [ "resync", "resync", 0 ],
            "obj-12::obj-28": [ "clock-type", "clock-type", 0 ],
            "obj-12::obj-31": [ "id-clock", "id-clock", 0 ],
            "obj-12::obj-4": [ "FramePeriod", "FramePeriod", 0 ],
            "obj-12::obj-8": [ "active", "enable", 0 ],
            "obj-3::obj-108": [ "4813-clock-type", "clock type", 0 ],
            "obj-3::obj-16": [ "4813-port", "port", 0 ],
            "obj-3::obj-179": [ "4813-sens-type", "sensor type", 0 ],
            "obj-3::obj-18::obj-105": [ "live.text[15]", "live.text", 0 ],
            "obj-3::obj-18::obj-110": [ "live.text[14]", "live.text", 0 ],
            "obj-3::obj-18::obj-121": [ "live.numbox[4]", "Amount", 0 ],
            "obj-3::obj-18::obj-20": [ "4813-port[1]", "port", 0 ],
            "obj-3::obj-18::obj-223": [ "live.numbox[3]", "live.numbox", 0 ],
            "obj-3::obj-18::obj-59": [ "live.numbox[5]", "live.numbox", 0 ],
            "obj-3::obj-18::obj-7": [ "live.numbox[2]", "live.numbox", 0 ],
            "obj-3::obj-18::obj-75": [ "live.numbox[6]", "live.numbox", 0 ],
            "obj-3::obj-18::obj-83": [ "live.toggle[4]", "live.toggle", 0 ],
            "obj-3::obj-25": [ "live.text[18]", "live.text", 0 ],
            "obj-3::obj-31": [ "live.button[3]", "live.button", 0 ],
            "obj-3::obj-47": [ "4813-enable", "enable", 1 ],
            "obj-3::obj-50": [ "4813-frameperiod", "frame period", 0 ],
            "obj-3::obj-56": [ "live.text[17]", "live.text", 0 ],
            "obj-3::obj-58": [ "live.text[2]", "live.text[3]", 0 ],
            "obj-3::obj-59": [ "live.numbox[1]", "id", 0 ],
            "obj-3::obj-60": [ "live.text[16]", "live.text[3]", 0 ],
            "obj-5::obj-108": [ "4895-clock-type", "clock type", 0 ],
            "obj-5::obj-16": [ "4895-port", "port", 0 ],
            "obj-5::obj-179": [ "4895-sens-type", "sensor type", 0 ],
            "obj-5::obj-18::obj-105": [ "live.text[23]", "live.text", 0 ],
            "obj-5::obj-18::obj-110": [ "live.text[22]", "live.text", 0 ],
            "obj-5::obj-18::obj-121": [ "live.numbox[14]", "Amount", 0 ],
            "obj-5::obj-18::obj-20": [ "4895-port[1]", "port", 0 ],
            "obj-5::obj-18::obj-223": [ "live.numbox[13]", "live.numbox", 0 ],
            "obj-5::obj-18::obj-59": [ "live.numbox[12]", "live.numbox", 0 ],
            "obj-5::obj-18::obj-7": [ "live.numbox[9]", "live.numbox", 0 ],
            "obj-5::obj-18::obj-75": [ "live.numbox[11]", "live.numbox", 0 ],
            "obj-5::obj-18::obj-83": [ "live.toggle[5]", "live.toggle", 0 ],
            "obj-5::obj-25": [ "live.text[27]", "live.text", 0 ],
            "obj-5::obj-31": [ "live.button[4]", "live.button", 0 ],
            "obj-5::obj-47": [ "4895-enable", "enable", 1 ],
            "obj-5::obj-50": [ "4895-frameperiod", "frame period", 0 ],
            "obj-5::obj-56": [ "live.text[20]", "live.text", 0 ],
            "obj-5::obj-58": [ "live.text[19]", "live.text[3]", 0 ],
            "obj-5::obj-59": [ "live.numbox[10]", "id", 0 ],
            "obj-5::obj-60": [ "live.text[24]", "live.text[3]", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "parameter_overrides": {
                "obj-12::obj-8": {
                    "parameter_longname": "active"
                },
                "obj-3::obj-108": {
                    "parameter_longname": "4813-clock-type"
                },
                "obj-3::obj-16": {
                    "parameter_longname": "4813-port"
                },
                "obj-3::obj-179": {
                    "parameter_longname": "4813-sens-type"
                },
                "obj-3::obj-18::obj-20": {
                    "parameter_longname": "4813-port[1]"
                },
                "obj-3::obj-47": {
                    "parameter_longname": "4813-enable"
                },
                "obj-3::obj-50": {
                    "parameter_longname": "4813-frameperiod"
                },
                "obj-3::obj-59": {
                    "parameter_longname": "live.numbox[1]"
                },
                "obj-5::obj-108": {
                    "parameter_longname": "4895-clock-type"
                },
                "obj-5::obj-16": {
                    "parameter_longname": "4895-port"
                },
                "obj-5::obj-179": {
                    "parameter_longname": "4895-sens-type"
                },
                "obj-5::obj-18::obj-105": {
                    "parameter_longname": "live.text[23]"
                },
                "obj-5::obj-18::obj-110": {
                    "parameter_longname": "live.text[22]"
                },
                "obj-5::obj-18::obj-121": {
                    "parameter_longname": "live.numbox[14]"
                },
                "obj-5::obj-18::obj-20": {
                    "parameter_longname": "4895-port[1]"
                },
                "obj-5::obj-18::obj-223": {
                    "parameter_longname": "live.numbox[13]"
                },
                "obj-5::obj-18::obj-59": {
                    "parameter_longname": "live.numbox[12]"
                },
                "obj-5::obj-18::obj-7": {
                    "parameter_longname": "live.numbox[9]"
                },
                "obj-5::obj-18::obj-75": {
                    "parameter_longname": "live.numbox[11]"
                },
                "obj-5::obj-18::obj-83": {
                    "parameter_longname": "live.toggle[5]"
                },
                "obj-5::obj-25": {
                    "parameter_longname": "live.text[27]"
                },
                "obj-5::obj-31": {
                    "parameter_longname": "live.button[4]"
                },
                "obj-5::obj-47": {
                    "parameter_longname": "4895-enable"
                },
                "obj-5::obj-50": {
                    "parameter_longname": "4895-frameperiod"
                },
                "obj-5::obj-56": {
                    "parameter_longname": "live.text[20]"
                },
                "obj-5::obj-58": {
                    "parameter_longname": "live.text[19]"
                },
                "obj-5::obj-59": {
                    "parameter_longname": "live.numbox[10]"
                },
                "obj-5::obj-60": {
                    "parameter_longname": "live.text[24]"
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0,
        "toolbaradditions": [ "s2n", "Modalys", "Gestural-Sound-Toolkit" ]
    }
}