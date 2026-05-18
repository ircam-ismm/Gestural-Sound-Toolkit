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
        "rect": [ 34.0, 102.0, 879.0, 1051.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 513.0, 635.0, 255.0, 22.0 ],
                    "text": "loadmess overview-mubu-example-single.json"
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
                    "patching_rect": [ 723.0, 985.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 499.0, 985.0, 213.0, 22.0 ],
                    "text": "overview-mubu-example-single.json"
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 596.0, 931.0, 273.0, 22.0 ],
                    "text": "route filename fileid"
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
                    "patching_rect": [ 635.0, 689.0, 226.0, 38.0 ],
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
                    "patching_rect": [ 345.0, 693.0, 286.0, 10.0 ]
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
                    "patching_rect": [ 0.0, 1022.0, 473.0, 22.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 20.0, 960.0, 264.0, 38.0 ],
                    "text": "important : create and/or check a folder ~/Documents/Ircam/gst/scale-norm"
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 1,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-2",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.norm.single.maxpat",
                    "numinlets": 6,
                    "numoutlets": 3,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 181.0, 667.0, 434.0, 259.0 ],
                    "varname": "_gst.norm.single",
                    "viewvisibility": 1
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
                    "patching_rect": [ 0.0, 685.0, 152.0, 69.0 ],
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
                    "patching_rect": [ 153.0, 693.0, 23.0, 10.0 ]
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
                    "patching_rect": [ 596.0, 330.0, 29.0, 17.0 ],
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
                    "patching_rect": [ 513.0, 330.0, 49.0, 17.0 ],
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
                    "patching_rect": [ 596.0, 269.0, 126.0, 17.0 ],
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
                    "patching_rect": [ 631.0, 330.0, 39.0, 17.0 ],
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
                    "patching_rect": [ 631.0, 309.0, 121.0, 17.0 ],
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
                    "patching_rect": [ 614.0, 288.0, 90.0, 17.0 ],
                    "text": "loadmess windresize 1"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 14.0,
                    "id": "obj-8",
                    "linecount": 15,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 25.0, 97.0, 472.0, 241.0 ],
                    "presentation": 1,
                    "presentation_linecount": 17,
                    "presentation_rect": [ 14.0, 216.0, 264.0, 272.0 ],
                    "text": "[-1. ; +1.] data normalization\n\nRe-scale incoming data in the [-1. ; +1.] interval\nDO NOT preserves the correlation of the triplet of values\nEach value is normalized independently\n\ninput:\n     - data values A : triplet of floats [list]\n     - data values B : triplet of floats [list]\n     - active A normalization\n     - active B normalization\n\noutput:\n     - [1]: normalized A data [list]\n     - [2]: normalized B data [list]"
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
                    "text": "gst.norm.single"
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
                    "patching_rect": [ 181.0, 355.0, 434.0, 259.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 47.0, 257.0, 434.0, 259.0 ],
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
                    "destination": [ "obj-11", 0 ],
                    "source": [ "obj-2", 2 ]
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
                    "destination": [ "obj-2", 1 ],
                    "source": [ "obj-48", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "source": [ "obj-48", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 4 ],
                    "source": [ "obj-9", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-2::obj-10::obj-32": [ "0-SclMin[14]", "SclMin-NB", 0 ],
            "obj-2::obj-10::obj-33": [ "0-SclMax[14]", "SclMax-NB", 0 ],
            "obj-2::obj-10::obj-58": [ "0-SclMax[7]", "SclMax-NB", 0 ],
            "obj-2::obj-10::obj-61": [ "0-SclMin[7]", "SclMin-NB", 0 ],
            "obj-2::obj-10::obj-69": [ "0-SclMax[6]", "SclMax-NB", 0 ],
            "obj-2::obj-10::obj-70": [ "0-SclMin[6]", "SclMin-NB", 0 ],
            "obj-2::obj-12::obj-32": [ "0-SclMin[13]", "SclMin-NB", 0 ],
            "obj-2::obj-12::obj-33": [ "0-SclMax[13]", "SclMax-NB", 0 ],
            "obj-2::obj-12::obj-58": [ "0-SclMax[4]", "SclMax-NB", 0 ],
            "obj-2::obj-12::obj-61": [ "0-SclMin[4]", "SclMin-NB", 0 ],
            "obj-2::obj-12::obj-69": [ "0-SclMax[5]", "SclMax-NB", 0 ],
            "obj-2::obj-12::obj-70": [ "0-SclMin[5]", "SclMin-NB", 0 ],
            "obj-2::obj-195::obj-13": [ "minMonitor", "minMonitor", 0 ],
            "obj-2::obj-195::obj-14": [ "maxMonitor", "maxMonitor", 0 ],
            "obj-2::obj-195::obj-39": [ "bypass", "bypass", 0 ],
            "obj-2::obj-195::obj-50": [ "live.text[11]", "live.text", 0 ],
            "obj-2::obj-195::obj-59": [ "live.text[9]", "live.text", 0 ],
            "obj-2::obj-195::obj-62": [ "live.text[8]", "live.text", 0 ],
            "obj-2::obj-195::obj-68": [ "live.text[10]", "live.text", 0 ],
            "obj-2::obj-24": [ "live.text[31]", "live.text", 0 ],
            "obj-2::obj-28": [ "live.text[36]", "live.text", 0 ],
            "obj-2::obj-29": [ "live.text[34]", "live.text", 0 ],
            "obj-2::obj-31": [ "live.text[29]", "live.text", 0 ],
            "obj-2::obj-34": [ "live.toggle[5]", "bypass", 0 ],
            "obj-2::obj-37": [ "live.text[33]", "live.text", 0 ],
            "obj-2::obj-50": [ "live.text[15]", "live.text", 0 ],
            "obj-2::obj-62": [ "live.text[32]", "live.text", 0 ],
            "obj-2::obj-68": [ "live.text[30]", "live.text", 0 ],
            "obj-2::obj-80": [ "live.text[35]", "live.text", 0 ],
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
                "obj-2::obj-10::obj-32": {
                    "parameter_longname": "0-SclMin[14]"
                },
                "obj-2::obj-10::obj-33": {
                    "parameter_longname": "0-SclMax[14]"
                },
                "obj-2::obj-12::obj-32": {
                    "parameter_longname": "0-SclMin[13]"
                },
                "obj-2::obj-12::obj-33": {
                    "parameter_longname": "0-SclMax[13]"
                },
                "obj-2::obj-195::obj-50": {
                    "parameter_longname": "live.text[11]"
                },
                "obj-2::obj-195::obj-59": {
                    "parameter_longname": "live.text[9]"
                },
                "obj-2::obj-195::obj-62": {
                    "parameter_longname": "live.text[8]"
                },
                "obj-2::obj-195::obj-68": {
                    "parameter_longname": "live.text[10]"
                },
                "obj-2::obj-24": {
                    "parameter_longname": "live.text[31]"
                },
                "obj-2::obj-28": {
                    "parameter_longname": "live.text[36]"
                },
                "obj-2::obj-29": {
                    "parameter_longname": "live.text[34]"
                },
                "obj-2::obj-31": {
                    "parameter_longname": "live.text[29]"
                },
                "obj-2::obj-34": {
                    "parameter_longname": "live.toggle[5]"
                },
                "obj-2::obj-37": {
                    "parameter_longname": "live.text[33]"
                },
                "obj-2::obj-62": {
                    "parameter_longname": "live.text[32]"
                },
                "obj-2::obj-68": {
                    "parameter_longname": "live.text[30]"
                },
                "obj-2::obj-80": {
                    "parameter_longname": "live.text[35]"
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
        "toolbaradditions": [ "s2n", "Modalys", "Gestural-Sound-Toolkit" ]
    }
}