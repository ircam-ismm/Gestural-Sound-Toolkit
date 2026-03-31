{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 1,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 163.0, 135.0, 933.0, 818.0 ],
        "openinpresentation": 1,
        "default_fontsize": 11.0,
        "gridonopen": 2,
        "gridsize": [ 10.0, 10.0 ],
        "gridsnaponopen": 2,
        "toolbarvisible": 0,
        "toolbars_unpinned_last_save": 15,
        "boxes": [
            {
                "box": {
                    "id": "obj-75",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "int", "bang" ],
                    "patching_rect": [ 331.0, 249.0, 85.0, 21.0 ],
                    "text": "t i b"
                }
            },
            {
                "box": {
                    "id": "obj-74",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 330.0, 210.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-72",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 333.0, 330.0, 21.0, 21.0 ],
                    "text": "t b"
                }
            },
            {
                "box": {
                    "id": "obj-71",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 331.0, 285.5, 30.0, 21.0 ],
                    "text": "gate"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-70",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patching_rect": [ 352.0, 460.0, 56.0, 23.0 ],
                    "text": "select 2"
                }
            },
            {
                "box": {
                    "id": "obj-69",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 397.0, 285.5, 29.5, 21.0 ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "id": "obj-66",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 4,
                    "outlettype": [ "int", "", "", "int" ],
                    "patching_rect": [ 331.0, 380.0, 113.0, 21.0 ],
                    "text": "counter"
                }
            },
            {
                "box": {
                    "id": "obj-65",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "int" ],
                    "patching_rect": [ 162.0, 430.0, 210.0, 21.0 ],
                    "text": "t b i"
                }
            },
            {
                "box": {
                    "id": "obj-51",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 194.0, 553.0, 161.0, 19.0 ],
                    "style": "helpfile_label",
                    "text": "time since last bang, ms"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-53",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 159.0, 553.0, 36.0, 23.0 ],
                    "text": "- 0."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-54",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 532.0, 540.0, 19.0, 23.0 ],
                    "text": "0."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-55",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 427.0, 540.0, 59.0, 23.0 ],
                    "text": "100000."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-56",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 487.0, 540.0, 37.0, 23.0 ],
                    "text": "clear"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "format": 6,
                    "id": "obj-7",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 470.0, 670.0, 78.0, 23.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "format": 6,
                    "id": "obj-58",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 331.0, 670.0, 78.0, 23.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "format": 6,
                    "id": "obj-59",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 159.0, 670.0, 78.0, 23.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-60",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "float", "int" ],
                    "patching_rect": [ 470.0, 644.0, 81.0, 23.0 ],
                    "text": "maximum 0."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-61",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "int" ],
                    "patching_rect": [ 331.0, 644.0, 41.0, 23.0 ],
                    "text": "mean"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-62",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "float", "int" ],
                    "patching_rect": [ 159.0, 644.0, 115.0, 23.0 ],
                    "text": "minimum 100000."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-63",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "float" ],
                    "patching_rect": [ 159.0, 518.0, 36.0, 23.0 ],
                    "text": "t f f"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-19",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 161.0, 469.0, 62.0, 23.0 ],
                    "text": "cpuclock"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-64",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 561.0, 671.0, 171.0, 25.0 ],
                    "text": "Observe uzi interval, ms."
                }
            },
            {
                "box": {
                    "comment": "Gravity",
                    "id": "obj-32",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 441.0, 32.5, 20.0, 20.0 ]
                }
            },
            {
                "box": {
                    "comment": "Quaternion",
                    "id": "obj-31",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 396.0, 32.5, 20.0, 20.0 ]
                }
            },
            {
                "box": {
                    "comment": "Euler",
                    "id": "obj-30",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 352.0, 32.5, 20.0, 20.0 ]
                }
            },
            {
                "box": {
                    "comment": "Magnetometer",
                    "id": "obj-29",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 308.0, 32.5, 20.0, 20.0 ]
                }
            },
            {
                "box": {
                    "comment": "Gyroscope",
                    "id": "obj-28",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 264.0, 32.5, 20.0, 20.0 ]
                }
            },
            {
                "box": {
                    "comment": "Accelerometer",
                    "id": "obj-27",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 220.0, 32.5, 20.0, 20.0 ]
                }
            },
            {
                "box": {
                    "comment": "Gravity",
                    "id": "obj-18",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 210.0, 350.0, 25.0, 25.0 ]
                }
            },
            {
                "box": {
                    "comment": "Quaternion",
                    "id": "obj-17",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 180.0, 350.0, 25.0, 25.0 ]
                }
            },
            {
                "box": {
                    "comment": "Euler",
                    "id": "obj-16",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 150.0, 350.0, 25.0, 25.0 ]
                }
            },
            {
                "box": {
                    "comment": "Magnetometer",
                    "id": "obj-15",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 120.0, 350.0, 25.0, 25.0 ]
                }
            },
            {
                "box": {
                    "comment": "Gyroscope",
                    "id": "obj-14",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 90.0, 350.0, 25.0, 25.0 ]
                }
            },
            {
                "box": {
                    "comment": "Accelerometer",
                    "id": "obj-13",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 60.0, 350.0, 25.0, 25.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 9.0,
                    "id": "obj-48",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 168.0, 11.0, 47.0, 17.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 121.0, 9.0, 47.0, 17.0 ],
                    "saved_attribute_attributes": {
                        "textcolor": {
                            "expression": "themecolor.live_control_fg"
                        }
                    },
                    "text": "sensor ID",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-46",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 170.0, 30.0, 44.0, 15.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 170.0, 10.0, 44.0, 15.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 1 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "SensId",
                            "parameter_mmax": 128.0,
                            "parameter_mmin": 1.0,
                            "parameter_modmode": 4,
                            "parameter_shortname": "SensId",
                            "parameter_type": 1,
                            "parameter_unitstyle": 0
                        }
                    },
                    "varname": "SensId"
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 600.0, 110.0, 52.0, 21.0 ],
                    "restore": {
                        "SensId": [ 1.0 ],
                        "live.text": [ 0.0 ],
                        "riotVersion": [ 1.0 ]
                    },
                    "text": "autopattr",
                    "varname": "u584004667"
                }
            },
            {
                "box": {
                    "id": "obj-109",
                    "maxclass": "live.menu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 60.0, 30.0, 100.0, 15.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 11.0, 10.0, 100.0, 15.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "none", "riot-v3" ],
                            "parameter_initial": [ 1 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "riotVersion",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "riotVersion",
                            "parameter_type": 2
                        }
                    },
                    "varname": "riotVersion"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "bang", "int" ],
                    "patching_rect": [ 570.0, 220.0, 40.0, 21.0 ],
                    "text": "text"
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 570.0, 190.0, 239.0, 21.0 ],
                    "text": "read ~/Documents/Ircam/oscar/oscar.xml, open"
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "obj-6",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 350.0, 25.0, 25.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "live.line",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 685.0, 261.0, 5.0, 100.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 11.0, 112.0, 215.0, 10.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 1.0, 1.0, 1.0, 0.0 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-3",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.osc.sensor.receive.maxpat",
                    "numinlets": 9,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 70.0, 451.0, 90.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 0.0, 30.0, 226.0, 80.0 ],
                    "varname": "gst.osc.sensor.receive",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 11.0,
                    "id": "obj-2",
                    "maxclass": "comment",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "patching_rect": [ 254.0, 200.0, 40.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 174.0, 70.0, 36.0, 19.0 ],
                    "suppressinlet": 1,
                    "text": "OSC",
                    "textjustification": 2
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "live.line",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 670.0, 246.0, 5.0, 100.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 8.0, 171.0, 215.0, 10.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 1.0, 1.0, 1.0, 0.0 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-1",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.osc.send.maxpat",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "offset": [ 0.0, 0.0 ],
                    "patching_rect": [ 30.0, 200.0, 220.0, 70.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 3.0, 112.0, 223.0, 70.0 ],
                    "varname": "gst.osc.send",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "bgcolor": [ 1.0, 1.0, 1.0, 0.0 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-5",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.osc.receive.maxpat",
                    "numinlets": 2,
                    "numoutlets": 7,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "", "", "", "", "", "", "" ],
                    "patching_rect": [ 30.0, 299.0, 220.0, 37.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 3.0, 169.0, 223.0, 37.0 ],
                    "varname": "gst.osc.receive",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "angle": 0.0,
                    "bgcolor": [ 0.737254901960784, 0.737254901960784, 0.737254901960784, 0.329411764705882 ],
                    "border": 2,
                    "bordercolor": [ 0.0, 0.0, 0.0, 0.5 ],
                    "id": "obj-26",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 710.0, 278.055588, 196.121216, 65.888824 ],
                    "presentation": 1,
                    "presentation_rect": [ 4.0, 30.0, 222.0, 177.0 ],
                    "proportion": 0.39,
                    "rounded": 18,
                    "saved_attribute_attributes": {
                        "bgfillcolor": {
                            "expression": "themecolor.live_spectrum_default_color"
                        }
                    }
                }
            },
            {
                "box": {
                    "angle": 0.0,
                    "bgcolor": [ 0.737254901960784, 0.737254901960784, 0.737254901960784, 0.329411764705882 ],
                    "border": 2,
                    "bordercolor": [ 0.0, 0.0, 0.0, 0.5 ],
                    "id": "obj-12",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 940.0, 278.0, 196.121216, 65.888824 ],
                    "presentation": 1,
                    "presentation_rect": [ 4.0, 6.0, 222.0, 22.0 ],
                    "proportion": 0.39,
                    "rounded": 13,
                    "saved_attribute_attributes": {
                        "bgfillcolor": {
                            "expression": "themecolor.live_spectrum_default_color"
                        }
                    }
                }
            },
            {
                "box": {
                    "background": 1,
                    "id": "obj-24",
                    "maxclass": "live.text",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 570.0, 150.0, 140.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 4.0, 209.0, 222.0, 15.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "val1", "val2" ],
                            "parameter_initial": [ 0 ],
                            "parameter_linknames": 1,
                            "parameter_longname": "oscarxml",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "oscarxml",
                            "parameter_type": 2
                        }
                    },
                    "text": "load & edit OSCar XML",
                    "texton": "Gravity",
                    "varname": "live.text"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-9", 0 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 1 ],
                    "source": [ "obj-109", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-63", 0 ],
                    "midpoints": [ 170.5, 499.0, 168.5, 499.0 ],
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 3 ],
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 4 ],
                    "source": [ "obj-28", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 5 ],
                    "source": [ "obj-29", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 6 ],
                    "source": [ "obj-30", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 7 ],
                    "source": [ "obj-31", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 8 ],
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 2 ],
                    "order": 1,
                    "source": [ "obj-46", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 1 ],
                    "order": 0,
                    "source": [ "obj-46", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "source": [ "obj-5", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "source": [ "obj-5", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "source": [ "obj-5", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 0 ],
                    "source": [ "obj-5", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "source": [ "obj-5", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 0 ],
                    "source": [ "obj-5", 6 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-60", 0 ],
                    "midpoints": [ 168.5, 631.0, 479.5, 631.0 ],
                    "order": 0,
                    "source": [ "obj-53", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-61", 0 ],
                    "midpoints": [ 168.5, 631.0, 340.5, 631.0 ],
                    "order": 1,
                    "source": [ "obj-53", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-62", 0 ],
                    "midpoints": [ 168.5, 577.0, 168.5, 577.0 ],
                    "order": 2,
                    "source": [ "obj-53", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-60", 1 ],
                    "midpoints": [ 541.5, 565.0, 541.5, 565.0 ],
                    "source": [ "obj-54", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-62", 1 ],
                    "midpoints": [ 436.5, 631.0, 264.5, 631.0 ],
                    "source": [ "obj-55", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-61", 0 ],
                    "midpoints": [ 496.5, 631.0, 340.5, 631.0 ],
                    "source": [ "obj-56", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-62", 1 ],
                    "hidden": 1,
                    "midpoints": [ 168.5, 703.0, 285.0, 703.0, 285.0, 640.0, 264.5, 640.0 ],
                    "source": [ "obj-59", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "midpoints": [ 479.5, 670.0, 479.5, 670.0 ],
                    "source": [ "obj-60", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-58", 0 ],
                    "midpoints": [ 340.5, 670.0, 340.5, 670.0 ],
                    "source": [ "obj-61", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-59", 0 ],
                    "midpoints": [ 168.5, 670.0, 168.5, 670.0 ],
                    "source": [ "obj-62", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-53", 0 ],
                    "midpoints": [ 185.5, 544.0, 168.5, 544.0 ],
                    "source": [ "obj-63", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-53", 1 ],
                    "midpoints": [ 168.5, 544.0, 185.5, 544.0 ],
                    "source": [ "obj-63", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "source": [ "obj-65", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-70", 0 ],
                    "source": [ "obj-65", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-65", 0 ],
                    "source": [ "obj-66", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-66", 2 ],
                    "source": [ "obj-69", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-60", 1 ],
                    "hidden": 1,
                    "midpoints": [ 479.5, 694.0, 456.0, 694.0, 456.0, 631.0, 541.5, 631.0 ],
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-54", 0 ],
                    "midpoints": [ 361.5, 526.0, 539.5, 526.0 ],
                    "order": 0,
                    "source": [ "obj-70", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-55", 0 ],
                    "midpoints": [ 361.5, 499.0, 436.5, 499.0 ],
                    "order": 2,
                    "source": [ "obj-70", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-56", 0 ],
                    "midpoints": [ 361.5, 526.0, 496.5, 526.0 ],
                    "order": 1,
                    "source": [ "obj-70", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-72", 0 ],
                    "source": [ "obj-71", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-66", 0 ],
                    "source": [ "obj-72", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-75", 0 ],
                    "source": [ "obj-74", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-69", 0 ],
                    "source": [ "obj-75", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-71", 0 ],
                    "source": [ "obj-75", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-109": [ "riotVersion", "riotVersion", 0 ],
            "obj-1::obj-11": [ "live.numbox[1]", "live.numbox", 0 ],
            "obj-1::obj-14": [ "live.text[1]", "live.text", 0 ],
            "obj-1::obj-17": [ "OSCIP2", "IP2", 0 ],
            "obj-1::obj-18": [ "OSCIP3", "IP3", 0 ],
            "obj-1::obj-2": [ "live.text", "live.text", 0 ],
            "obj-1::obj-20": [ "live.button", "live.button", 0 ],
            "obj-1::obj-21": [ "OSCIP4", "IP4", 0 ],
            "obj-1::obj-53": [ "OSCOutPort", "OutPortHost", 0 ],
            "obj-1::obj-8": [ "OSCIP1", "IP1", 0 ],
            "obj-24": [ "oscarxml", "oscarxml", 0 ],
            "obj-3::obj-13": [ "accel", "accel", 0 ],
            "obj-3::obj-14": [ "live.text[5]", "live.text", 0 ],
            "obj-3::obj-17": [ "gyros", "gyros", 0 ],
            "obj-3::obj-18": [ "magnet", "magnet", 0 ],
            "obj-3::obj-2": [ "live.text[4]", "live.text", 0 ],
            "obj-3::obj-20": [ "live.button[2]", "live.button", 0 ],
            "obj-3::obj-21": [ "euler", "euler", 0 ],
            "obj-3::obj-23": [ "quat", "quat", 0 ],
            "obj-3::obj-24": [ "gravit", "gravit", 0 ],
            "obj-3::obj-53": [ "OSCOutPort[2]", "InPortSens", 0 ],
            "obj-3::obj-8": [ "live.numbox[2]", "live.numbox", 0 ],
            "obj-46": [ "SensId", "SensId", 0 ],
            "obj-5::obj-14": [ "live.text[2]", "live.text", 0 ],
            "obj-5::obj-2": [ "live.text[3]", "live.text", 0 ],
            "obj-5::obj-20": [ "live.button[1]", "live.button", 0 ],
            "obj-5::obj-53": [ "OSCOutPort[1]", "InPort", 0 ],
            "obj-5::obj-8": [ "live.numbox", "live.numbox", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "parameter_overrides": {
                "obj-1::obj-11": {
                    "parameter_longname": "live.numbox[1]"
                },
                "obj-1::obj-53": {
                    "parameter_longname": "OSCOutPort"
                },
                "obj-3::obj-14": {
                    "parameter_longname": "live.text[5]"
                },
                "obj-3::obj-2": {
                    "parameter_longname": "live.text[4]"
                },
                "obj-3::obj-20": {
                    "parameter_longname": "live.button[2]"
                },
                "obj-3::obj-53": {
                    "parameter_longname": "OSCOutPort[2]"
                },
                "obj-3::obj-8": {
                    "parameter_longname": "live.numbox[2]"
                },
                "obj-5::obj-14": {
                    "parameter_longname": "live.text[2]"
                },
                "obj-5::obj-2": {
                    "parameter_longname": "live.text[3]"
                },
                "obj-5::obj-20": {
                    "parameter_longname": "live.button[1]"
                },
                "obj-5::obj-53": {
                    "parameter_longname": "OSCOutPort[1]"
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0,
        "toolbaradditions": [ "s2n", "Modalys" ],
        "bgcolor": [ 0.9, 0.9, 0.9, 1.0 ]
    }
}