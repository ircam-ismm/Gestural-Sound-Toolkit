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
        "rect": [ 0.0, 53.0, 557.0, 421.0 ],
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
                    "id": "obj-12",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 200.0, 190.0, 30.0, 21.0 ],
                    "text": "print"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "bang", "int" ],
                    "patching_rect": [ 310.0, 210.0, 40.0, 21.0 ],
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
                    "patching_rect": [ 310.0, 180.0, 239.0, 21.0 ],
                    "text": "read ~/Documents/Ircam/oscar/oscar.xml, open"
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "obj-7",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 30.0, 25.0, 25.0 ]
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
                    "patching_rect": [ 425.0, 251.0, 5.0, 100.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 11.0, 102.0, 215.0, 10.0 ]
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
                    "numinlets": 1,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 70.0, 260.0, 110.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 0.0, 0.0, 230.0, 100.0 ],
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
                    "patching_rect": [ 80.0, 200.0, 40.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 185.0, 105.0, 36.0, 19.0 ],
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
                    "patching_rect": [ 410.0, 236.0, 5.0, 100.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 8.0, 161.0, 215.0, 10.0 ]
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
                    "patching_rect": [ 30.0, 230.0, 220.0, 70.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 3.0, 102.0, 230.0, 70.0 ],
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
                    "numinlets": 1,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 299.0, 220.0, 37.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 3.0, 159.0, 230.0, 37.0 ],
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
                    "patching_rect": [ 90.0, 350.0, 196.121216, 65.888824 ],
                    "presentation": 1,
                    "presentation_rect": [ 4.0, 0.0, 222.0, 197.0 ],
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
                    "background": 1,
                    "id": "obj-24",
                    "maxclass": "live.text",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 310.0, 140.0, 140.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 4.0, 200.0, 222.0, 15.0 ],
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
                    "destination": [ "obj-10", 0 ],
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "order": 1,
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "order": 0,
                    "source": [ "obj-3", 0 ]
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
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-7", 0 ]
                }
            }
        ],
        "parameters": {
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
            "obj-3::obj-109": [ "riotVersion", "riotVersion", 0 ],
            "obj-3::obj-13": [ "accel", "accel", 0 ],
            "obj-3::obj-14": [ "live.text[5]", "live.text", 0 ],
            "obj-3::obj-17": [ "gyros", "gyros", 0 ],
            "obj-3::obj-18": [ "magnet", "magnet", 0 ],
            "obj-3::obj-2": [ "live.text[4]", "live.text", 0 ],
            "obj-3::obj-20": [ "live.button[2]", "live.button", 0 ],
            "obj-3::obj-21": [ "euler", "euler", 0 ],
            "obj-3::obj-23": [ "quat", "quat", 0 ],
            "obj-3::obj-24": [ "gravit", "gravit", 0 ],
            "obj-3::obj-46": [ "SensId", "SensId", 0 ],
            "obj-3::obj-53": [ "OSCOutPort[2]", "InPortSens", 0 ],
            "obj-3::obj-8": [ "live.numbox[2]", "live.numbox", 0 ],
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