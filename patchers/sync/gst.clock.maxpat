{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 3,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 444.0, 94.0, 88.0, 107.0 ],
        "openinpresentation": 1,
        "gridsize": [ 5.0, 5.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-65",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "int", "int", "int", "bang" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 3,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 59.0, 112.0, 270.0, 277.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "obj-50",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 81.0, 145.0, 29.0, 21.0 ],
                                    "text": "thru"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "obj-49",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 172.0, 145.0, 29.0, 21.0 ],
                                    "text": "thru"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "obj-45",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 125.0, 145.0, 29.0, 21.0 ],
                                    "text": "thru"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "obj-44",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 35.0, 145.0, 29.0, 21.0 ],
                                    "text": "thru"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "obj-42",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "bang", "int", "int", "int" ],
                                    "patching_rect": [ 125.0, 96.0, 66.0, 21.0 ],
                                    "text": "t b 2 1 0"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "obj-38",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "bang", "int", "int", "int" ],
                                    "patching_rect": [ 13.0, 96.0, 87.0, 21.0 ],
                                    "text": "t b 1 1 0"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "obj-35",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 3,
                                    "outlettype": [ "bang", "bang", "" ],
                                    "patching_rect": [ 13.0, 70.0, 243.0, 21.0 ],
                                    "text": "sel 0 1"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-60",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 13.0, 10.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-61",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 35.0, 226.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-62",
                                    "index": 3,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 131.0, 226.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-63",
                                    "index": 4,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 176.0, 226.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-64",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 81.0, 226.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-38", 0 ],
                                    "source": [ "obj-35", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-42", 0 ],
                                    "source": [ "obj-35", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-44", 0 ],
                                    "source": [ "obj-38", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-45", 0 ],
                                    "source": [ "obj-38", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-49", 0 ],
                                    "source": [ "obj-38", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-50", 0 ],
                                    "source": [ "obj-38", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-44", 0 ],
                                    "source": [ "obj-42", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-45", 0 ],
                                    "source": [ "obj-42", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-49", 0 ],
                                    "source": [ "obj-42", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-50", 0 ],
                                    "source": [ "obj-42", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-61", 0 ],
                                    "source": [ "obj-44", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-63", 0 ],
                                    "source": [ "obj-45", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-64", 0 ],
                                    "source": [ "obj-49", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-62", 0 ],
                                    "source": [ "obj-50", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-35", 0 ],
                                    "source": [ "obj-60", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "s2n", "Modalys" ]
                    },
                    "patching_rect": [ 99.33333333333337, 238.0, 242.0, 22.0 ],
                    "text": "p clock select"
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-53",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 99.33333333333337, 357.0, 29.0, 21.0 ],
                    "text": "thru"
                }
            },
            {
                "box": {
                    "id": "obj-52",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 225.0, 313.0, 74.0, 22.0 ],
                    "text": "gate 2"
                }
            },
            {
                "box": {
                    "id": "obj-51",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 280.0, 279.0, 29.5, 22.0 ],
                    "text": "i"
                }
            },
            {
                "box": {
                    "id": "obj-43",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 204.0, 423.0, 63.0, 22.0 ],
                    "text": "switch 2"
                }
            },
            {
                "box": {
                    "id": "obj-33",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 408.0, 285.0, 29.0, 22.0 ],
                    "text": "thru"
                }
            },
            {
                "box": {
                    "annotation": "clock type",
                    "hint": "clock type",
                    "id": "obj-28",
                    "maxclass": "live.menu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 99.33333333333337, 210.0, 100.0, 15.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 5.0, 43.0, 55.0, 15.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "metro", "qmetro" ],
                            "parameter_initial": [ 0.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "1774-clock-type",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "clock-type",
                            "parameter_type": 2
                        }
                    },
                    "varname": "#0-clock-type"
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-25",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 248.0, 388.0, 212.0, 21.0 ],
                    "text": "qmetro"
                }
            },
            {
                "box": {
                    "id": "obj-27",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "resync" ],
                    "patching_rect": [ 325.0, 491.0, 51.0, 22.0 ],
                    "text": "t resync"
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-24",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 106.0, 50.0, 97.0, 21.0 ],
                    "text": "r gst.clock-check"
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 5,
                    "outlettype": [ "", "", "", "", "" ],
                    "patching_rect": [ 208.0, 49.0, 215.0, 22.0 ],
                    "text": "route bang frameperiod framerate start"
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "obj-15",
                    "index": 1,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 208.0, 9.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 204.0, 627.0, 74.0, 20.0 ],
                    "text": "clock (bang)"
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 342.0, 627.0, 109.0, 20.0 ],
                    "text": "messages for sync"
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 517.0, 549.0, 56.0, 22.0 ],
                    "restore": {
                        "1781-FramePeriod": [ 0.0 ],
                        "1781-FrameRate": [ 0.0 ],
                        "1781-Mclock": [ 1.0 ],
                        "1781-clock-type": [ 0.0 ],
                        "1781-id-clock": [ 0.0 ],
                        "live.button[1]": [ 0.0 ]
                    },
                    "text": "autopattr",
                    "varname": "u682008148"
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "bang", "bang", "bang" ],
                    "patching_rect": [ 208.0, 127.0, 42.0, 22.0 ],
                    "text": "t b b b"
                }
            },
            {
                "box": {
                    "annotation": "re-sync",
                    "hint": "re-sync",
                    "id": "obj-17",
                    "maxclass": "live.button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 325.0, 463.0, 15.0, 15.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 66.5, 43.0, 15.0, 15.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "off", "on" ],
                            "parameter_longname": "live.button[8]",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "live.button",
                            "parameter_type": 2
                        }
                    },
                    "varname": "live.button[1]"
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-14",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 306.0, 211.5, 56.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 22.0, 22.0, 56.0, 19.0 ],
                    "text": "Start/stop"
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-10",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 204.0, 550.0, 58.0, 21.0 ],
                    "text": "prepend 0"
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-7",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 204.0, 600.0, 95.0, 21.0 ],
                    "text": "s gst.clock-bang"
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "float" ],
                    "patching_rect": [ 651.0, 177.0, 103.0, 22.0 ],
                    "text": "t f f"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "float" ],
                    "patching_rect": [ 483.0, 177.0, 103.0, 22.0 ],
                    "text": "t f f"
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-41",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 567.0, 492.0, 82.0, 21.0 ],
                    "text": "frameperiod $1"
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-40",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 483.0, 215.0, 38.0, 21.0 ],
                    "text": "set $1"
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-39",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 735.0, 492.0, 71.0, 21.0 ],
                    "text": "framerate $1"
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-37",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 483.0, 147.0, 45.0, 21.0 ],
                    "text": "!/ 1000."
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-36",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 651.0, 215.0, 38.0, 21.0 ],
                    "text": "set $1"
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-34",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 389.0, 492.0, 38.0, 21.0 ],
                    "text": "set $1"
                }
            },
            {
                "box": {
                    "hint": "id-clock",
                    "id": "obj-31",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 389.0, 87.0, 44.0, 15.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 64.0, 2.0, 20.0, 15.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 0.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "1774-id-clock",
                            "parameter_modmode": 3,
                            "parameter_shortname": "live.numbox",
                            "parameter_type": 0,
                            "parameter_unitstyle": 0
                        }
                    },
                    "varname": "#0-id-clock"
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-29",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 441.0, 88.0, 70.0, 19.0 ],
                    "text": "id (default 0)"
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-20",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 341.0, 550.0, 58.0, 21.0 ],
                    "text": "prepend 0"
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-19",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 651.0, 492.0, 71.0, 21.0 ],
                    "text": "framerate $1"
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-18",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 483.0, 492.0, 82.0, 21.0 ],
                    "text": "frameperiod $1"
                }
            },
            {
                "box": {
                    "annotation": "frame rate",
                    "hint": "frame rate",
                    "id": "obj-11",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 651.0, 246.0, 44.0, 15.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 5.0, 77.0, 55.0, 15.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_linknames": 1,
                            "parameter_longname": "1774-FrameRate",
                            "parameter_mmax": 20000.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "FrameRate",
                            "parameter_type": 0,
                            "parameter_unitstyle": 3
                        }
                    },
                    "varname": "#0-FrameRate"
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-9",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 651.0, 147.0, 45.0, 21.0 ],
                    "text": "!/ 1000."
                }
            },
            {
                "box": {
                    "annotation": "on/off",
                    "hint": "on/off",
                    "id": "obj-8",
                    "maxclass": "live.toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 280.0, 208.5, 15.0, 15.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 5.0, 24.0, 15.0, 15.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "off", "on" ],
                            "parameter_initial": [ 1.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "1774-Mclock",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Mclock",
                            "parameter_type": 2
                        }
                    },
                    "varname": "#0-Mclock"
                }
            },
            {
                "box": {
                    "annotation": "frame period",
                    "hint": "frame period",
                    "id": "obj-4",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 483.0, 247.0, 44.0, 15.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 5.0, 60.0, 55.0, 15.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 10.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "1774-FramePeriod",
                            "parameter_mmax": 1000.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "FramePeriod",
                            "parameter_type": 0,
                            "parameter_unitstyle": 2
                        }
                    },
                    "varname": "#0-FramePeriod"
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 226.0, 357.0, 201.0, 21.0 ],
                    "text": "metro"
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 341.0, 600.0, 97.0, 21.0 ],
                    "text": "s gst.clock-mess"
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "obj-57",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 115.0, 3.0, 88.0, 21.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 0.0, 0.0, 82.0, 21.0 ],
                    "text": "gst.clock"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "order": 0,
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-37", 0 ],
                    "order": 1,
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 0 ],
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-27", 0 ],
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-43", 1 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "source": [ "obj-21", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-22", 0 ],
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "source": [ "obj-21", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "source": [ "obj-21", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "source": [ "obj-22", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 0 ],
                    "source": [ "obj-22", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-22", 0 ],
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-43", 2 ],
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-65", 0 ],
                    "source": [ "obj-28", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-33", 0 ],
                    "midpoints": [ 492.5, 206.1171875, 417.5, 206.1171875 ],
                    "order": 1,
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "order": 0,
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-41", 0 ],
                    "source": [ "obj-3", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-34", 0 ],
                    "source": [ "obj-31", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 1 ],
                    "order": 1,
                    "source": [ "obj-33", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 1 ],
                    "order": 0,
                    "source": [ "obj-33", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "order": 1,
                    "source": [ "obj-34", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "order": 0,
                    "source": [ "obj-34", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "source": [ "obj-36", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-37", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "source": [ "obj-39", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 0 ],
                    "order": 1,
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-33", 0 ],
                    "order": 2,
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 0 ],
                    "order": 0,
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "source": [ "obj-40", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "source": [ "obj-41", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "source": [ "obj-43", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-36", 0 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-39", 0 ],
                    "source": [ "obj-5", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-52", 1 ],
                    "source": [ "obj-51", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "source": [ "obj-52", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 0 ],
                    "source": [ "obj-52", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-43", 0 ],
                    "order": 1,
                    "source": [ "obj-53", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-52", 0 ],
                    "order": 0,
                    "source": [ "obj-53", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "source": [ "obj-65", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 0 ],
                    "source": [ "obj-65", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-51", 0 ],
                    "source": [ "obj-65", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-53", 0 ],
                    "source": [ "obj-65", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-51", 0 ],
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-9", 0 ]
                }
            }
        ],
        "toolbaradditions": [ "s2n", "Modalys" ]
    }
}