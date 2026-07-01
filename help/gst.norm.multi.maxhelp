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
        "rect": [ 34.0, 94.0, 885.0, 800.0 ],
        "showrootpatcherontab": 0,
        "showontab": 0,
        "boxes": [
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
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
                        "rect": [ 34.0, 120.0, 885.0, 774.0 ],
                        "default_fontsize": 13.0,
                        "gridsize": [ 5.0, 5.0 ],
                        "showontab": 1,
                        "boxes": [
                            {
                                "box": {
                                    "bgmode": 0,
                                    "border": 1,
                                    "clickthrough": 0,
                                    "enablehscroll": 0,
                                    "enablevscroll": 0,
                                    "id": "obj-23",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "gst.display.maxpat",
                                    "numinlets": 4,
                                    "numoutlets": 1,
                                    "offset": [ 0.0, 0.0 ],
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 325.0, 517.0, 258.0, 192.0 ],
                                    "varname": "_gst.display[1]",
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
                                    "id": "obj-22",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "gst.display.maxpat",
                                    "numinlets": 4,
                                    "numoutlets": 1,
                                    "offset": [ 0.0, 0.0 ],
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 38.0, 517.0, 258.0, 192.0 ],
                                    "varname": "_gst.display",
                                    "viewvisibility": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-21",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 439.0, 405.0, 48.0, 21.0 ],
                                    "text": "scan B"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-20",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 349.0, 405.0, 48.0, 21.0 ],
                                    "text": "scan A"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 451.0, 428.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 361.0, 428.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-17",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 719.0, 427.0, 128.0, 23.0 ],
                                    "text": "bounds -16.57 16.57"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 638.0, 429.0, 74.0, 21.0 ],
                                    "text": "bypass 0/1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 610.0, 426.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-6",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 744.0, 474.0, 93.0, 25.0 ],
                                    "text": "double click"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 7,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 183.0, 475.0, 555.0, 23.0 ],
                                    "text": "gst.norm.multi @bounds -1.1 1.1 @mode 1 @clip 1",
                                    "varname": "gst.movingaverage"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.0,
                                    "hidden": 1,
                                    "id": "obj-1",
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
                                    "patching_rect": [ 515.0, 85.0, 102.0, 26.0 ],
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
                                    "patching_rect": [ 540.0, 391.0, 237.0, 23.0 ],
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
                                    "patching_rect": [ 725.0, 735.0, 50.0, 23.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 501.0, 735.0, 213.0, 23.0 ],
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
                                    "patching_rect": [ 598.0, 681.0, 273.0, 23.0 ],
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
                                    "patching_rect": [ 10.0, 735.5, 473.0, 22.0 ],
                                    "presentation": 1,
                                    "presentation_linecount": 2,
                                    "presentation_rect": [ 20.0, 960.0, 264.0, 38.0 ],
                                    "text": "important : create and/or check a folder ~/Documents/Ircam/gst/scale-norm"
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
                                    "patching_rect": [ 183.0, 121.0, 434.0, 259.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 47.0, 257.0, 434.0, 259.0 ],
                                    "varname": "gst.recorddata",
                                    "viewvisibility": 1
                                }
                            },
                            {
                                "box": {
                                    "border": 0,
                                    "filename": "helpdetails.js",
                                    "id": "obj-2",
                                    "ignoreclick": 1,
                                    "jsarguments": [ "gst.norm.multi" ],
                                    "maxclass": "jsui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 10.0, 10.0, 433.0, 109.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-48", 5 ],
                                    "hidden": 1,
                                    "source": [ "obj-1", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-48", 4 ],
                                    "hidden": 1,
                                    "source": [ "obj-1", 0 ]
                                }
                            },
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
                                    "destination": [ "obj-8", 2 ],
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 6 ],
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 3 ],
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 5 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 1 ],
                                    "midpoints": [ 400.0, 397.76953125, 281.8333333333333, 397.76953125 ],
                                    "source": [ "obj-48", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-48", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "source": [ "obj-8", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-22", 0 ],
                                    "source": [ "obj-8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-23", 0 ],
                                    "source": [ "obj-8", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 4 ],
                                    "source": [ "obj-9", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "s2n", "Modalys", "Gestural-Sound-Toolkit" ]
                    },
                    "patching_rect": [ 10.0, 110.0, 50.0, 22.0 ],
                    "saved_object_attributes": {
                        "fontsize": 13.0
                    },
                    "text": "p more",
                    "varname": "basic_tab[1]"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 205.0, 152.0, 193.0, 22.0 ],
                    "saved_object_attributes": {
                        "filename": "helpstarter.js",
                        "parameter_enable": 0
                    },
                    "text": "js helpstarter.js gst.norm.multi"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
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
                        "rect": [ 0.0, 26.0, 885.0, 774.0 ],
                        "default_fontsize": 13.0,
                        "gridsize": [ 5.0, 5.0 ],
                        "showontab": 1,
                        "boxes": [
                            {
                                "box": {
                                    "fontsize": 8.0,
                                    "hidden": 1,
                                    "id": "obj-1",
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
                                    "patching_rect": [ 515.0, 85.0, 102.0, 26.0 ],
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
                                    "patching_rect": [ 460.0, 385.0, 237.0, 23.0 ],
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
                                    "patching_rect": [ 725.0, 735.0, 50.0, 23.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 501.0, 735.0, 213.0, 23.0 ],
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
                                    "patching_rect": [ 598.0, 681.0, 273.0, 23.0 ],
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
                                    "patching_rect": [ 10.0, 735.5, 473.0, 22.0 ],
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
                                    "patching_rect": [ 5.0, 435.0, 158.0, 69.0 ],
                                    "presentation": 1,
                                    "presentation_linecount": 3,
                                    "presentation_rect": [ 608.0, 782.0, 264.0, 53.0 ],
                                    "text": "Scan A & B for min and max detection of the incoming signals and apply normalization"
                                }
                            },
                            {
                                "box": {
                                    "arrows": 2,
                                    "id": "obj-5",
                                    "maxclass": "live.line",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 158.0, 443.0, 23.0, 10.0 ]
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
                                    "patching_rect": [ 640.0, 439.0, 226.0, 38.0 ],
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
                                    "patching_rect": [ 350.0, 443.0, 286.0, 10.0 ]
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
                                    "patching_rect": [ 183.0, 121.0, 434.0, 259.0 ],
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
                                    "patching_rect": [ 183.0, 419.0, 434.0, 255.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 47.0, 555.0, 434.0, 229.0 ],
                                    "varname": "gst",
                                    "viewvisibility": 1
                                }
                            },
                            {
                                "box": {
                                    "border": 0,
                                    "filename": "helpdetails.js",
                                    "id": "obj-2",
                                    "ignoreclick": 1,
                                    "jsarguments": [ "gst.norm.multi" ],
                                    "maxclass": "jsui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 10.0, 10.0, 433.0, 109.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-48", 5 ],
                                    "hidden": 1,
                                    "source": [ "obj-1", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-48", 4 ],
                                    "hidden": 1,
                                    "source": [ "obj-1", 0 ]
                                }
                            },
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
                        "toolbaradditions": [ "s2n", "Modalys", "Gestural-Sound-Toolkit" ]
                    },
                    "patching_rect": [ 10.0, 85.0, 50.0, 22.0 ],
                    "saved_object_attributes": {
                        "fontsize": 13.0
                    },
                    "text": "p basic",
                    "varname": "basic_tab"
                }
            },
            {
                "box": {
                    "border": 0,
                    "filename": "helpname.js",
                    "id": "obj-4",
                    "ignoreclick": 1,
                    "jsarguments": [ "gst.norm.multi" ],
                    "maxclass": "jsui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 10.0, 10.0, 309.32000732421875, 57.599853515625 ]
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
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
                        "rect": [ 0.0, 26.0, 885.0, 774.0 ],
                        "showontab": 1,
                        "boxes": [],
                        "lines": [],
                        "toolbaradditions": [ "s2n", "Modalys", "Gestural-Sound-Toolkit" ]
                    },
                    "patching_rect": [ 205.0, 205.0, 50.0, 22.0 ],
                    "text": "p ?",
                    "varname": "q_tab"
                }
            }
        ],
        "lines": [],
        "parameters": {
            "obj-2::obj-31::obj-10::obj-32": [ "0-SclMin[3]", "SclMin-NB", 0 ],
            "obj-2::obj-31::obj-10::obj-33": [ "0-SclMax[3]", "SclMax-NB", 0 ],
            "obj-2::obj-31::obj-12::obj-32": [ "0-SclMin[2]", "SclMin-NB", 0 ],
            "obj-2::obj-31::obj-12::obj-33": [ "0-SclMax[2]", "SclMax-NB", 0 ],
            "obj-2::obj-31::obj-195::obj-13": [ "minMonitor", "minMonitor", 0 ],
            "obj-2::obj-31::obj-195::obj-14": [ "maxMonitor", "maxMonitor", 0 ],
            "obj-2::obj-31::obj-195::obj-33": [ "clip[1]", "clip", 0 ],
            "obj-2::obj-31::obj-195::obj-39": [ "bypass", "bypass", 0 ],
            "obj-2::obj-31::obj-195::obj-50": [ "live.text[9]", "live.text", 0 ],
            "obj-2::obj-31::obj-195::obj-59": [ "live.text[8]", "live.text", 0 ],
            "obj-2::obj-31::obj-195::obj-62": [ "live.text[7]", "live.text", 0 ],
            "obj-2::obj-31::obj-195::obj-64": [ "mode", "mode", 0 ],
            "obj-2::obj-31::obj-195::obj-68": [ "live.text[39]", "live.text", 0 ],
            "obj-2::obj-31::obj-22": [ "live.text[19]", "live.text", 0 ],
            "obj-2::obj-31::obj-28": [ "live.text[28]", "live.text", 0 ],
            "obj-2::obj-31::obj-29": [ "live.text[25]", "live.text", 0 ],
            "obj-2::obj-31::obj-31": [ "live.text[26]", "live.text", 0 ],
            "obj-2::obj-31::obj-34": [ "live.toggle", "bypass", 0 ],
            "obj-2::obj-31::obj-37": [ "live.text[27]", "live.text", 0 ],
            "obj-2::obj-31::obj-50": [ "live.text[21]", "live.text", 0 ],
            "obj-2::obj-31::obj-59": [ "live.text[3]", "live.text", 0 ],
            "obj-2::obj-31::obj-62": [ "live.text[38]", "live.text", 0 ],
            "obj-2::obj-31::obj-68": [ "live.text[33]", "live.text", 0 ],
            "obj-2::obj-31::obj-73": [ "live.toggle[1]", "bypass", 0 ],
            "obj-2::obj-31::obj-86": [ "_clip[1]", "clip", 0 ],
            "obj-2::obj-48::obj-15": [ "live.text[12]", "live.text", 0 ],
            "obj-2::obj-48::obj-16": [ "loop", "loop", 0 ],
            "obj-2::obj-48::obj-18": [ "live.text[10]", "live.text", 0 ],
            "obj-2::obj-48::obj-4": [ "live.text[11]", "live.text", 0 ],
            "obj-2::obj-48::obj-40": [ "live.toggle[2]", "live.toggle", 0 ],
            "obj-2::obj-48::obj-50": [ "live.numbox", "live.numbox", 0 ],
            "obj-2::obj-48::obj-57": [ "autoscale", "autoscale", 0 ],
            "obj-2::obj-48::obj-6": [ "live.text[13]", "live.text", 0 ],
            "obj-2::obj-48::obj-71": [ "live.toggle[9]", "live.toggle", 0 ],
            "obj-2::obj-48::obj-80": [ "live.text[20]", "live.text", 0 ],
            "obj-2::obj-48::obj-85::obj-25": [ "maxduration", "maxduration", 0 ],
            "obj-6::obj-22::obj-37": [ "live.text[56]", "live.text", 0 ],
            "obj-6::obj-22::obj-8::obj-34": [ "maxMonitor[2]", "maxMonitor", 0 ],
            "obj-6::obj-22::obj-8::obj-37": [ "minMonitor[2]", "minMonitor", 0 ],
            "obj-6::obj-23::obj-37": [ "live.text[57]", "live.text", 0 ],
            "obj-6::obj-23::obj-8::obj-34": [ "maxMonitor[3]", "maxMonitor", 0 ],
            "obj-6::obj-23::obj-8::obj-37": [ "minMonitor[3]", "minMonitor", 0 ],
            "obj-6::obj-48::obj-15": [ "live.text[49]", "live.text", 0 ],
            "obj-6::obj-48::obj-16": [ "loop[1]", "loop", 0 ],
            "obj-6::obj-48::obj-18": [ "live.text[23]", "live.text", 0 ],
            "obj-6::obj-48::obj-4": [ "live.text[16]", "live.text", 0 ],
            "obj-6::obj-48::obj-40": [ "live.toggle[11]", "live.toggle", 0 ],
            "obj-6::obj-48::obj-50": [ "live.numbox[1]", "live.numbox", 0 ],
            "obj-6::obj-48::obj-57": [ "autoscale[1]", "autoscale", 0 ],
            "obj-6::obj-48::obj-6": [ "live.text[48]", "live.text", 0 ],
            "obj-6::obj-48::obj-71": [ "live.toggle[10]", "live.toggle", 0 ],
            "obj-6::obj-48::obj-80": [ "live.text[47]", "live.text", 0 ],
            "obj-6::obj-48::obj-85::obj-25": [ "maxduration[1]", "maxduration", 0 ],
            "obj-6::obj-8::obj-10::obj-32": [ "0-SclMin[5]", "SclMin-NB", 0 ],
            "obj-6::obj-8::obj-10::obj-33": [ "0-SclMax[5]", "SclMax-NB", 0 ],
            "obj-6::obj-8::obj-12::obj-32": [ "0-SclMin[4]", "SclMin-NB", 0 ],
            "obj-6::obj-8::obj-12::obj-33": [ "0-SclMax[4]", "SclMax-NB", 0 ],
            "obj-6::obj-8::obj-195::obj-13": [ "minMonitor[4]", "minMonitor", 0 ],
            "obj-6::obj-8::obj-195::obj-14": [ "maxMonitor[4]", "maxMonitor", 0 ],
            "obj-6::obj-8::obj-195::obj-33": [ "clip", "clip", 0 ],
            "obj-6::obj-8::obj-195::obj-39": [ "bypass[1]", "bypass", 0 ],
            "obj-6::obj-8::obj-195::obj-50": [ "live.text[15]", "live.text", 0 ],
            "obj-6::obj-8::obj-195::obj-59": [ "live.text[14]", "live.text", 0 ],
            "obj-6::obj-8::obj-195::obj-62": [ "live.text[22]", "live.text", 0 ],
            "obj-6::obj-8::obj-195::obj-64": [ "mode[1]", "mode", 0 ],
            "obj-6::obj-8::obj-195::obj-68": [ "live.text[29]", "live.text", 0 ],
            "obj-6::obj-8::obj-22": [ "live.text[18]", "live.text", 0 ],
            "obj-6::obj-8::obj-28": [ "live.text[35]", "live.text", 0 ],
            "obj-6::obj-8::obj-29": [ "live.text[34]", "live.text", 0 ],
            "obj-6::obj-8::obj-31": [ "live.text[59]", "live.text", 0 ],
            "obj-6::obj-8::obj-34": [ "live.toggle[12]", "bypass", 0 ],
            "obj-6::obj-8::obj-37": [ "live.text[60]", "live.text", 0 ],
            "obj-6::obj-8::obj-50": [ "live.text[30]", "live.text", 0 ],
            "obj-6::obj-8::obj-59": [ "live.text[17]", "live.text", 0 ],
            "obj-6::obj-8::obj-62": [ "live.text[31]", "live.text", 0 ],
            "obj-6::obj-8::obj-68": [ "live.text[58]", "live.text", 0 ],
            "obj-6::obj-8::obj-73": [ "live.toggle[13]", "bypass", 0 ],
            "obj-6::obj-8::obj-86": [ "_clip", "clip", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "parameter_overrides": {
                "obj-2::obj-31::obj-195::obj-33": {
                    "parameter_longname": "clip[1]"
                },
                "obj-2::obj-31::obj-22": {
                    "parameter_longname": "live.text[19]"
                },
                "obj-2::obj-31::obj-86": {
                    "parameter_longname": "_clip[1]"
                },
                "obj-2::obj-48::obj-71": {
                    "parameter_longname": "live.toggle[9]"
                },
                "obj-2::obj-48::obj-80": {
                    "parameter_longname": "live.text[20]"
                },
                "obj-6::obj-22::obj-37": {
                    "parameter_longname": "live.text[56]"
                },
                "obj-6::obj-22::obj-8::obj-34": {
                    "parameter_longname": "maxMonitor[2]"
                },
                "obj-6::obj-22::obj-8::obj-37": {
                    "parameter_longname": "minMonitor[2]"
                },
                "obj-6::obj-23::obj-37": {
                    "parameter_longname": "live.text[57]"
                },
                "obj-6::obj-23::obj-8::obj-34": {
                    "parameter_longname": "maxMonitor[3]"
                },
                "obj-6::obj-23::obj-8::obj-37": {
                    "parameter_longname": "minMonitor[3]"
                },
                "obj-6::obj-48::obj-15": {
                    "parameter_longname": "live.text[49]"
                },
                "obj-6::obj-48::obj-16": {
                    "parameter_longname": "loop[1]"
                },
                "obj-6::obj-48::obj-18": {
                    "parameter_longname": "live.text[23]"
                },
                "obj-6::obj-48::obj-4": {
                    "parameter_longname": "live.text[16]"
                },
                "obj-6::obj-48::obj-40": {
                    "parameter_longname": "live.toggle[11]"
                },
                "obj-6::obj-48::obj-50": {
                    "parameter_longname": "live.numbox[1]"
                },
                "obj-6::obj-48::obj-57": {
                    "parameter_longname": "autoscale[1]"
                },
                "obj-6::obj-48::obj-6": {
                    "parameter_longname": "live.text[48]"
                },
                "obj-6::obj-48::obj-71": {
                    "parameter_longname": "live.toggle[10]"
                },
                "obj-6::obj-48::obj-80": {
                    "parameter_longname": "live.text[47]"
                },
                "obj-6::obj-48::obj-85::obj-25": {
                    "parameter_longname": "maxduration[1]"
                },
                "obj-6::obj-8::obj-10::obj-32": {
                    "parameter_longname": "0-SclMin[5]"
                },
                "obj-6::obj-8::obj-10::obj-33": {
                    "parameter_longname": "0-SclMax[5]"
                },
                "obj-6::obj-8::obj-12::obj-32": {
                    "parameter_longname": "0-SclMin[4]"
                },
                "obj-6::obj-8::obj-12::obj-33": {
                    "parameter_longname": "0-SclMax[4]"
                },
                "obj-6::obj-8::obj-195::obj-13": {
                    "parameter_longname": "minMonitor[4]"
                },
                "obj-6::obj-8::obj-195::obj-14": {
                    "parameter_longname": "maxMonitor[4]"
                },
                "obj-6::obj-8::obj-195::obj-39": {
                    "parameter_longname": "bypass[1]"
                },
                "obj-6::obj-8::obj-195::obj-50": {
                    "parameter_longname": "live.text[15]"
                },
                "obj-6::obj-8::obj-195::obj-59": {
                    "parameter_longname": "live.text[14]"
                },
                "obj-6::obj-8::obj-195::obj-62": {
                    "parameter_longname": "live.text[22]"
                },
                "obj-6::obj-8::obj-195::obj-64": {
                    "parameter_longname": "mode[1]"
                },
                "obj-6::obj-8::obj-195::obj-68": {
                    "parameter_longname": "live.text[29]"
                },
                "obj-6::obj-8::obj-22": {
                    "parameter_longname": "live.text[18]"
                },
                "obj-6::obj-8::obj-28": {
                    "parameter_longname": "live.text[35]"
                },
                "obj-6::obj-8::obj-29": {
                    "parameter_longname": "live.text[34]"
                },
                "obj-6::obj-8::obj-31": {
                    "parameter_longname": "live.text[59]"
                },
                "obj-6::obj-8::obj-34": {
                    "parameter_longname": "live.toggle[12]"
                },
                "obj-6::obj-8::obj-37": {
                    "parameter_longname": "live.text[60]"
                },
                "obj-6::obj-8::obj-50": {
                    "parameter_longname": "live.text[30]"
                },
                "obj-6::obj-8::obj-59": {
                    "parameter_longname": "live.text[17]"
                },
                "obj-6::obj-8::obj-62": {
                    "parameter_longname": "live.text[31]"
                },
                "obj-6::obj-8::obj-68": {
                    "parameter_longname": "live.text[58]"
                },
                "obj-6::obj-8::obj-73": {
                    "parameter_longname": "live.toggle[13]"
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0,
        "toolbaradditions": [ "s2n", "Modalys", "Gestural-Sound-Toolkit" ]
    }
}