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
        "rect": [ 42.0, 94.0, 892.0, 1050.0 ],
        "boxes": [
            {
                "box": {
                    "fontsize": 8.0,
                    "hidden": 1,
                    "id": "obj-2",
                    "linecount": 2,
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 2,
                    "outlettype": [ "int", "" ],
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
                        "rect": [ 579.0, 93.0, 258.0, 348.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 24.0, 136.0, 121.0, 22.0 ],
                                    "text": "resizetowindowrect 4"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "" ],
                                    "patching_rect": [ 24.0, 102.0, 214.5, 22.0 ],
                                    "text": "t b l"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 24.0, 78.0, 93.0, 22.0 ],
                                    "text": "route load&start"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 24.0, 25.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 24.0, 54.0, 182.0, 22.0 ],
                                    "text": "patcherargs"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 58.0, 216.0, 180.5, 22.0 ],
                                    "text": "readall overview.mubu"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "int", "bang", "" ],
                                    "patching_rect": [ 24.0, 168.0, 87.0, 22.0 ],
                                    "text": "t 1 b l"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-10",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 58.0, 297.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-12",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 297.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 1 ],
                                    "source": [ "obj-2", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-4", 0 ]
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
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-6", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-6", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-8", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "s2n", "Modalys", "Gestural-Sound-Toolkit" ]
                    },
                    "patching_rect": [ 510.0, 319.0, 102.0, 26.0 ],
                    "text": "p load&start readall overview.mubu"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 454.6666666666667, 619.0, 219.0, 22.0 ],
                    "text": "loadmess overview-mubu-example.json"
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 720.0, 969.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 496.0, 969.0, 213.0, 22.0 ],
                    "text": "overview-mubu-example.json"
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 593.0, 915.0, 273.0, 22.0 ],
                    "text": "route filename fileid"
                }
            },
            {
                "box": {
                    "fontname": "Arial Italic",
                    "fontsize": 14.0,
                    "id": "obj-7",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 6.5, 1020.0, 473.0, 22.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 20.0, 960.0, 264.0, 38.0 ],
                    "text": "important : create and/or check a folder ~/Documents/Ircam/gst/scale-norm"
                }
            },
            {
                "box": {
                    "fontname": "Arial Italic",
                    "fontsize": 14.0,
                    "id": "obj-6",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 0.0, 669.0, 152.0, 69.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 608.0, 782.0, 264.0, 38.0 ],
                    "text": "A & B for min and max detection of the incoming signals and apply normalization"
                }
            },
            {
                "box": {
                    "arrows": 2,
                    "id": "obj-5",
                    "maxclass": "live.line",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 153.0, 677.0, 23.0, 10.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial Italic",
                    "fontsize": 14.0,
                    "id": "obj-4",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 635.0, 673.0, 226.0, 38.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 515.0, 676.0, 264.0, 38.0 ],
                    "text": "check available \"json\" file in ~/Documents/Ircam/gst/scale-norm"
                }
            },
            {
                "box": {
                    "arrows": 1,
                    "id": "obj-3",
                    "maxclass": "live.line",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 345.0, 677.0, 286.0, 10.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 14.0,
                    "id": "obj-8",
                    "linecount": 14,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 70.0, 101.0, 472.0, 225.0 ],
                    "presentation": 1,
                    "presentation_linecount": 16,
                    "presentation_rect": [ 14.0, 216.0, 264.0, 257.0 ],
                    "text": "[-1. ; +1.] data normalization\n\nRe-scale incoming data in the [-1. ; +1.] interval\nPreserves the correlation of the triplet of values\n\ninput:\n     - data values A : triplet of floats [list]\n     - data values B : triplet of floats [list]\n     - active A normalization\n     - active B normalization\n\noutput:\n     - [1]: normalized A data [list]\n     - [2]: normalized B data [list]"
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
                    "patching_rect": [ 99.0, 53.0, 288.0, 42.0 ],
                    "text": "gst.norm.multi"
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
                    "patching_rect": [ 30.0, 21.0, 259.0, 30.0 ],
                    "text": "Gestural Sound Toolkit V2 "
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.65045, 0.65045, 0.65045, 0.0 ],
                    "bgmode": 1,
                    "border": 1,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-48",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.recorddata.maxpat",
                    "numinlets": 6,
                    "numoutlets": 3,
                    "offset": [ -2.0, -4.0 ],
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 178.0, 355.0, 434.0, 259.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 47.0, 257.0, 434.0, 259.0 ],
                    "varname": "gst.recorddata",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.819608, 0.819608, 0.819608, 0.0 ],
                    "bgmode": 2,
                    "border": 1,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-31",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.norm.multi.maxpat",
                    "numinlets": 7,
                    "numoutlets": 3,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 178.0, 653.0, 434.0, 255.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 47.0, 555.0, 434.0, 229.0 ],
                    "varname": "gst",
                    "viewvisibility": 1
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-13", 1 ],
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "source": [ "obj-11", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-48", 5 ],
                    "hidden": 1,
                    "source": [ "obj-2", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-48", 4 ],
                    "hidden": 1,
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "source": [ "obj-31", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 1 ],
                    "source": [ "obj-48", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 0 ],
                    "source": [ "obj-48", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 4 ],
                    "source": [ "obj-9", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-31::obj-10::obj-32": [ "gyro-SclMin", "SclMin-NB", 0 ],
            "obj-31::obj-10::obj-33": [ "gyro-SclMax", "SclMax-NB", 0 ],
            "obj-31::obj-12::obj-32": [ "acc-SclMin", "SclMin-NB", 0 ],
            "obj-31::obj-12::obj-33": [ "acc-SclMax", "SclMax-NB", 0 ],
            "obj-31::obj-195::obj-13": [ "minMonitor", "minMonitor", 0 ],
            "obj-31::obj-195::obj-14": [ "maxMonitor", "maxMonitor", 0 ],
            "obj-31::obj-195::obj-39": [ "bypass", "bypass", 0 ],
            "obj-31::obj-195::obj-50": [ "live.text[11]", "live.text", 0 ],
            "obj-31::obj-195::obj-59": [ "live.text[9]", "live.text", 0 ],
            "obj-31::obj-195::obj-62": [ "live.text[10]", "live.text", 0 ],
            "obj-31::obj-195::obj-64": [ "mode", "mode", 0 ],
            "obj-31::obj-195::obj-68": [ "live.text[8]", "live.text", 0 ],
            "obj-31::obj-22": [ "live.text[22]", "live.text", 0 ],
            "obj-31::obj-28": [ "live.text[1]", "live.text", 0 ],
            "obj-31::obj-29": [ "live.text[2]", "live.text", 0 ],
            "obj-31::obj-31": [ "live.text", "live.text", 0 ],
            "obj-31::obj-34": [ "live.toggle[3]", "bypass", 0 ],
            "obj-31::obj-37": [ "live.text[3]", "live.text", 0 ],
            "obj-31::obj-50": [ "live.text[14]", "live.text", 0 ],
            "obj-31::obj-59": [ "live.text[16]", "live.text", 0 ],
            "obj-31::obj-62": [ "live.text[13]", "live.text", 0 ],
            "obj-31::obj-68": [ "live.text[12]", "live.text", 0 ],
            "obj-31::obj-73": [ "live.toggle[1]", "bypass", 0 ],
            "obj-48::obj-15": [ "live.text[4]", "live.text", 0 ],
            "obj-48::obj-16": [ "loop", "loop", 0 ],
            "obj-48::obj-18": [ "live.text[7]", "live.text", 0 ],
            "obj-48::obj-4": [ "live.text[5]", "live.text", 0 ],
            "obj-48::obj-40": [ "live.toggle", "live.toggle", 0 ],
            "obj-48::obj-50": [ "live.numbox", "live.numbox", 0 ],
            "obj-48::obj-57": [ "live.toggle[2]", "autoscale", 0 ],
            "obj-48::obj-6": [ "live.text[6]", "live.text", 0 ],
            "obj-48::obj-71": [ "live.toggle[4]", "live.toggle", 0 ],
            "obj-48::obj-80": [ "live.text[15]", "live.text", 0 ],
            "obj-48::obj-85::obj-25": [ "maxduration", "maxduration", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "parameter_overrides": {
                "obj-31::obj-10::obj-32": {
                    "parameter_longname": "gyro-SclMin"
                },
                "obj-31::obj-10::obj-33": {
                    "parameter_longname": "gyro-SclMax"
                },
                "obj-31::obj-12::obj-32": {
                    "parameter_longname": "acc-SclMin"
                },
                "obj-31::obj-12::obj-33": {
                    "parameter_longname": "acc-SclMax"
                },
                "obj-31::obj-195::obj-50": {
                    "parameter_longname": "live.text[11]"
                },
                "obj-31::obj-195::obj-59": {
                    "parameter_longname": "live.text[9]"
                },
                "obj-31::obj-195::obj-62": {
                    "parameter_longname": "live.text[10]"
                },
                "obj-31::obj-195::obj-68": {
                    "parameter_longname": "live.text[8]"
                },
                "obj-31::obj-28": {
                    "parameter_longname": "live.text[1]"
                },
                "obj-31::obj-29": {
                    "parameter_longname": "live.text[2]"
                },
                "obj-31::obj-31": {
                    "parameter_longname": "live.text"
                },
                "obj-31::obj-34": {
                    "parameter_longname": "live.toggle[3]"
                },
                "obj-31::obj-37": {
                    "parameter_longname": "live.text[3]"
                },
                "obj-31::obj-50": {
                    "parameter_longname": "live.text[14]"
                },
                "obj-31::obj-59": {
                    "parameter_longname": "live.text[16]"
                },
                "obj-31::obj-62": {
                    "parameter_longname": "live.text[13]"
                },
                "obj-31::obj-68": {
                    "parameter_longname": "live.text[12]"
                },
                "obj-48::obj-15": {
                    "parameter_longname": "live.text[4]"
                },
                "obj-48::obj-18": {
                    "parameter_longname": "live.text[7]"
                },
                "obj-48::obj-4": {
                    "parameter_longname": "live.text[5]"
                },
                "obj-48::obj-40": {
                    "parameter_longname": "live.toggle"
                },
                "obj-48::obj-57": {
                    "parameter_longname": "live.toggle[2]"
                },
                "obj-48::obj-6": {
                    "parameter_longname": "live.text[6]"
                },
                "obj-48::obj-71": {
                    "parameter_longname": "live.toggle[4]"
                },
                "obj-48::obj-80": {
                    "parameter_longname": "live.text[15]"
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0,
        "toolbaradditions": [ "s2n", "Modalys", "Gestural-Sound-Toolkit" ]
    }
}