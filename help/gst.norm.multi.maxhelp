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
        "rect": [ 34.0, 93.0, 892.0, 1061.0 ],
        "boxes": [
            {
                "box": {
                    "fontname": "Arial Italic",
                    "fontsize": 14.0,
                    "id": "obj-6",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 0.0, 669.0, 151.0, 69.0 ],
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
                    "fontname": "Arial Italic",
                    "fontsize": 14.0,
                    "id": "obj-2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 153.0, 931.0, 473.0, 22.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 20.0, 960.0, 264.0, 38.0 ],
                    "text": "important : create and/or check a folder ~/Documents/Ircam/gst/scale-norm"
                }
            },
            {
                "box": {
                    "fontsize": 8.0,
                    "hidden": 1,
                    "id": "obj-19",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 593.0, 330.0, 29.0, 17.0 ],
                    "text": "thru"
                }
            },
            {
                "box": {
                    "fontsize": 8.0,
                    "hidden": 1,
                    "id": "obj-17",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 510.0, 330.0, 49.0, 17.0 ],
                    "text": "loadmess 1"
                }
            },
            {
                "box": {
                    "fontsize": 8.0,
                    "hidden": 1,
                    "id": "obj-37",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 593.0, 269.0, 126.0, 17.0 ],
                    "text": "loadmess readall overview.mubu"
                }
            },
            {
                "box": {
                    "fontsize": 8.0,
                    "hidden": 1,
                    "id": "obj-40",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 628.0, 330.0, 39.0, 17.0 ],
                    "text": "deferlow"
                }
            },
            {
                "box": {
                    "fontsize": 8.0,
                    "hidden": 1,
                    "id": "obj-44",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 628.0, 309.0, 121.0, 17.0 ],
                    "text": "loadmess resizetowindowrect 4"
                }
            },
            {
                "box": {
                    "fontsize": 8.0,
                    "hidden": 1,
                    "id": "obj-46",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 611.0, 288.0, 90.0, 17.0 ],
                    "text": "loadmess windresize 1"
                }
            },
            {
                "box": {
                    "fontname": "Arial Italic",
                    "fontsize": 14.0,
                    "id": "obj-9",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 351.0, 629.0, 261.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 29.0, 231.0, 264.0, 22.0 ],
                    "text": "embeded <bpatcher> saves parameters."
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
                    "patching_rect": [ 69.0, 89.0, 472.0, 225.0 ],
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
                    "numinlets": 5,
                    "numoutlets": 2,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "", "" ],
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
                    "destination": [ "obj-48", 4 ],
                    "hidden": 1,
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-48", 5 ],
                    "hidden": 1,
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "hidden": 1,
                    "source": [ "obj-37", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "hidden": 1,
                    "source": [ "obj-40", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "hidden": 1,
                    "source": [ "obj-44", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "hidden": 1,
                    "source": [ "obj-46", 0 ]
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
            "obj-31::obj-195::obj-68": [ "live.text[8]", "live.text", 0 ],
            "obj-31::obj-28": [ "live.text[1]", "live.text", 0 ],
            "obj-31::obj-29": [ "live.text[2]", "live.text", 0 ],
            "obj-31::obj-31": [ "live.text", "live.text", 0 ],
            "obj-31::obj-33": [ "live.text[15]", "live.text", 0 ],
            "obj-31::obj-34": [ "live.toggle[3]", "bypass", 0 ],
            "obj-31::obj-37": [ "live.text[3]", "live.text", 0 ],
            "obj-31::obj-50": [ "live.text[14]", "live.text", 0 ],
            "obj-31::obj-59": [ "live.text[16]", "live.text", 0 ],
            "obj-31::obj-62": [ "live.text[13]", "live.text", 0 ],
            "obj-31::obj-68": [ "live.text[12]", "live.text", 0 ],
            "obj-48::obj-15": [ "live.text[4]", "live.text", 0 ],
            "obj-48::obj-16": [ "loop", "loop", 0 ],
            "obj-48::obj-18": [ "live.text[7]", "live.text", 0 ],
            "obj-48::obj-4": [ "live.text[5]", "live.text", 0 ],
            "obj-48::obj-40": [ "live.toggle", "live.toggle", 0 ],
            "obj-48::obj-50": [ "live.numbox", "live.numbox", 0 ],
            "obj-48::obj-57": [ "live.toggle[2]", "autoscale", 0 ],
            "obj-48::obj-6": [ "live.text[6]", "live.text", 0 ],
            "obj-48::obj-71": [ "live.toggle[1]", "live.toggle", 0 ],
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
                "obj-31::obj-33": {
                    "parameter_longname": "live.text[15]"
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
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0,
        "toolbaradditions": [ "s2n", "Modalys" ]
    }
}