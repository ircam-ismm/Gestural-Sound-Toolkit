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
        "rect": [ 34.0, 103.0, 768.0, 752.0 ],
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
                        "rect": [ 34.0, 129.0, 768.0, 726.0 ],
                        "default_fontsize": 13.0,
                        "gridsize": [ 5.0, 5.0 ],
                        "showontab": 1,
                        "boxes": [
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubbleside": 3,
                                    "id": "obj-7",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 306.0, 427.5, 51.0, 25.0 ],
                                    "text": "click"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-5",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 477.0, 427.5, 51.0, 25.0 ],
                                    "text": "click"
                                }
                            },
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
                                    "patching_rect": [ 629.6666666666667, 383.0, 128.0, 23.0 ],
                                    "text": "bounds -16.57 16.57"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 568.3333333333334, 431.0, 74.0, 21.0 ],
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
                                    "patching_rect": [ 540.3333333333334, 428.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-6",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 653.0, 474.0, 93.0, 25.0 ],
                                    "text": "double click"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 183.0, 475.0, 465.66666666666674, 23.0 ],
                                    "text": "gst.norm.multi2 @bounds -1.1 1.1 @mode 1 @clip 1",
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
                                    "jsarguments": [ "gst.norm.multi2" ],
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
                                    "destination": [ "obj-8", 2 ],
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 5 ],
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
                                    "destination": [ "obj-8", 4 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 1 ],
                                    "midpoints": [ 400.0, 397.76953125, 281.83333333333337, 397.76953125 ],
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
                                    "destination": [ "obj-22", 0 ],
                                    "source": [ "obj-8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-23", 0 ],
                                    "source": [ "obj-8", 1 ]
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
                    "patching_rect": [ 205.0, 152.0, 174.0, 22.0 ],
                    "saved_object_attributes": {
                        "filename": "helpstarter.js",
                        "parameter_enable": 0
                    },
                    "text": "js helpstarter.js gst.norm.multi2"
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
                        "rect": [ 0.0, 26.0, 768.0, 726.0 ],
                        "default_fontsize": 13.0,
                        "gridsize": [ 5.0, 5.0 ],
                        "showontab": 1,
                        "boxes": [
                            {
                                "box": {
                                    "bgmode": 0,
                                    "border": 1,
                                    "clickthrough": 0,
                                    "embed": 1,
                                    "enablehscroll": 0,
                                    "enablevscroll": 0,
                                    "id": "obj-7",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "gst.norm.multi2.maxpat",
                                    "numinlets": 6,
                                    "numoutlets": 2,
                                    "offset": [ 0.0, 0.0 ],
                                    "outlettype": [ "", "" ],
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
                                        "rect": [ 34.0, 93.0, 161.0, 144.0 ],
                                        "openinpresentation": 1,
                                        "gridsize": [ 5.0, 5.0 ],
                                        "boxes": [
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-23",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 978.0, 268.5, 60.0, 21.0 ],
                                                    "text": "r #0-clip"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-22",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 1089.25, 160.0, 62.0, 21.0 ],
                                                    "text": "s #0-clip"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "annotation": "@clip",
                                                    "annotation_name": "@clip",
                                                    "hint": "@clip",
                                                    "id": "obj-9",
                                                    "maxclass": "live.toggle",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "parameter_enable": 1,
                                                    "patching_rect": [ 955.5, 269.5, 19.0, 19.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 90.30363047122955, 4.936708763241768, 15.0, 15.0 ],
                                                    "saved_attribute_attributes": {
                                                        "valueof": {
                                                            "parameter_enum": [ "off", "on" ],
                                                            "parameter_invisible": 2,
                                                            "parameter_linknames": 1,
                                                            "parameter_longname": "_clip[1]",
                                                            "parameter_mmax": 1,
                                                            "parameter_modmode": 0,
                                                            "parameter_shortname": "clip",
                                                            "parameter_type": 2
                                                        }
                                                    },
                                                    "varname": "_clip"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-8",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 1017.75, 98.0, 80.0, 21.0 ],
                                                    "text": "s #0-bypass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-84",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 686.0, 241.0, 78.0, 21.0 ],
                                                    "text": "r #0-bypass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "bypass",
                                                    "id": "obj-71",
                                                    "index": 5,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 645.0, 60.0, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-82",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 645.0, 89.0, 80.0, 21.0 ],
                                                    "text": "s #0-bypass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-72",
                                                    "maxclass": "newobj",
                                                    "numinlets": 5,
                                                    "numoutlets": 5,
                                                    "outlettype": [ "", "", "", "", "" ],
                                                    "patching_rect": [ 982.0, 62.5, 162.0, 22.0 ],
                                                    "text": "route done bypass clip mode"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-73",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 1125.0, 125.5, 111.0, 22.0 ],
                                                    "text": "s #0-mubu-scroll"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-74",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 1125.0, 97.5, 104.0, 22.0 ],
                                                    "text": "routepass bounds"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-75",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 929.0, 36.5, 72.0, 22.0 ],
                                                    "text": "patcherargs"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-7",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 1035.0, 240.5, 54.0, 22.0 ],
                                                    "text": "deferlow"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-6",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 1035.0, 293.5, 58.0, 22.0 ],
                                                    "text": "pipe 0 10"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "annotation": "\"@mode 1 = sup[abs(min or max)]\"",
                                                    "annotation_name": "@mode 1 = sup[abs(min or max)]",
                                                    "hint": "\"@mode 1 = sup[abs(min or max)]\"",
                                                    "id": "obj-2",
                                                    "maxclass": "live.toggle",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "parameter_enable": 1,
                                                    "patching_rect": [ 1035.0, 269.5, 19.0, 19.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 108.0, 4.936708763241768, 15.0, 15.0 ],
                                                    "saved_attribute_attributes": {
                                                        "valueof": {
                                                            "parameter_enum": [ "off", "on" ],
                                                            "parameter_invisible": 2,
                                                            "parameter_linknames": 1,
                                                            "parameter_longname": "live.toggle[1]",
                                                            "parameter_mmax": 1,
                                                            "parameter_modmode": 0,
                                                            "parameter_shortname": "mode",
                                                            "parameter_type": 2
                                                        }
                                                    },
                                                    "varname": "_mode"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-21",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 616.0, 465.0, 29.5, 22.0 ],
                                                    "text": "i"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-13",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "bang", "int" ],
                                                    "patching_rect": [ 649.5, 268.0, 29.5, 22.0 ],
                                                    "text": "t b i"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-20",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "bang", "bang", "" ],
                                                    "patching_rect": [ 642.1, 496.34, 44.0, 22.0 ],
                                                    "text": "sel 0 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-16",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 191.0, 389.0, 123.0, 22.0 ],
                                                    "text": "s #0-mubu-scroll"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-19",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 191.0, 359.0, 38.0, 22.0 ],
                                                    "text": "zl.reg"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-15",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 492.0, 389.0, 123.0, 22.0 ],
                                                    "text": "s #0-mubu-scroll"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-14",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 492.0, 359.0, 38.0, 22.0 ],
                                                    "text": "zl.reg"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "annotation": "@bypass",
                                                    "annotation_name": "@bypass",
                                                    "hint": "@bypass",
                                                    "id": "obj-34",
                                                    "maxclass": "live.toggle",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "parameter_enable": 1,
                                                    "patching_rect": [ 650.0, 244.0, 15.0, 15.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.6072609424591, 4.950495064258575, 15.0, 15.0 ],
                                                    "saved_attribute_attributes": {
                                                        "valueof": {
                                                            "parameter_enum": [ "off", "on" ],
                                                            "parameter_invisible": 2,
                                                            "parameter_linknames": 1,
                                                            "parameter_longname": "live.toggle",
                                                            "parameter_mmax": 1,
                                                            "parameter_modmode": 0,
                                                            "parameter_shortname": "bypass",
                                                            "parameter_type": 2
                                                        }
                                                    },
                                                    "varname": "live.toggle"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-10",
                                                    "maxclass": "newobj",
                                                    "numinlets": 5,
                                                    "numoutlets": 4,
                                                    "outlettype": [ "", "float", "", "" ],
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
                                                        "rect": [ 867.0, 106.0, 1150.0, 1060.0 ],
                                                        "title": "B-scalenorm",
                                                        "boxes": [
                                                            {
                                                                "box": {
                                                                    "id": "obj-37",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "int" ],
                                                                    "patching_rect": [ 53.0, 728.0, 29.0, 22.0 ],
                                                                    "text": "thru"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-35",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "int" ],
                                                                    "patching_rect": [ 526.25, 116.0, 29.5, 22.0 ],
                                                                    "text": "+ 1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-34",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "" ],
                                                                    "patching_rect": [ 132.0, 783.0, 139.0, 22.0 ],
                                                                    "text": "gate 2 1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-31",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "" ],
                                                                    "patching_rect": [ 108.0, 755.0, 140.0, 22.0 ],
                                                                    "text": "gate 2 1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-30",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "" ],
                                                                    "patching_rect": [ 84.0, 728.0, 141.0, 22.0 ],
                                                                    "text": "gate 2 1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-28",
                                                                    "index": 5,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 570.0, 10.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-23",
                                                                    "index": 4,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 526.0, 10.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-126",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 3,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "float", "" ],
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
                                                                        "rect": [ 59.0, 121.0, 370.0, 356.0 ],
                                                                        "boxes": [
                                                                            {
                                                                                "box": {
                                                                                    "id": "obj-2",
                                                                                    "maxclass": "newobj",
                                                                                    "numinlets": 1,
                                                                                    "numoutlets": 2,
                                                                                    "outlettype": [ "bang", "float" ],
                                                                                    "patching_rect": [ 181.0, 75.0, 29.5, 22.0 ],
                                                                                    "text": "t b f"
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "fontsize": 10.0,
                                                                                    "id": "obj-1",
                                                                                    "maxclass": "newobj",
                                                                                    "numinlets": 1,
                                                                                    "numoutlets": 1,
                                                                                    "outlettype": [ "float" ],
                                                                                    "patching_rect": [ 115.0, 75.0, 36.0, 20.0 ],
                                                                                    "text": "abs 0."
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "id": "obj-116",
                                                                                    "maxclass": "newobj",
                                                                                    "numinlets": 1,
                                                                                    "numoutlets": 2,
                                                                                    "outlettype": [ "bang", "int" ],
                                                                                    "patching_rect": [ 306.25, 100.0, 29.5, 22.0 ],
                                                                                    "text": "t b i"
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "id": "obj-115",
                                                                                    "maxclass": "newobj",
                                                                                    "numinlets": 2,
                                                                                    "numoutlets": 1,
                                                                                    "outlettype": [ "float" ],
                                                                                    "patching_rect": [ 207.0, 156.0, 29.5, 22.0 ],
                                                                                    "text": "f 1."
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "id": "obj-114",
                                                                                    "maxclass": "newobj",
                                                                                    "numinlets": 2,
                                                                                    "numoutlets": 1,
                                                                                    "outlettype": [ "float" ],
                                                                                    "patching_rect": [ 76.0, 156.0, 29.5, 22.0 ],
                                                                                    "text": "f -1."
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "id": "obj-111",
                                                                                    "maxclass": "newobj",
                                                                                    "numinlets": 2,
                                                                                    "numoutlets": 1,
                                                                                    "outlettype": [ "int" ],
                                                                                    "patching_rect": [ 316.75, 156.0, 29.5, 22.0 ],
                                                                                    "text": "!- 1"
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "fontsize": 10.0,
                                                                                    "id": "obj-109",
                                                                                    "maxclass": "newobj",
                                                                                    "numinlets": 2,
                                                                                    "numoutlets": 1,
                                                                                    "outlettype": [ "float" ],
                                                                                    "patching_rect": [ 80.75, 231.0, 29.5, 20.0 ],
                                                                                    "text": "* -1."
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "fontsize": 10.0,
                                                                                    "id": "obj-108",
                                                                                    "maxclass": "newobj",
                                                                                    "numinlets": 2,
                                                                                    "numoutlets": 1,
                                                                                    "outlettype": [ "" ],
                                                                                    "patching_rect": [ 181.0, 193.0, 45.0, 20.0 ],
                                                                                    "text": "gate 1 1"
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "fontsize": 10.0,
                                                                                    "id": "obj-107",
                                                                                    "maxclass": "newobj",
                                                                                    "numinlets": 2,
                                                                                    "numoutlets": 1,
                                                                                    "outlettype": [ "" ],
                                                                                    "patching_rect": [ 50.0, 193.0, 45.0, 20.0 ],
                                                                                    "text": "gate 1 1"
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "fontsize": 10.0,
                                                                                    "id": "obj-104",
                                                                                    "maxclass": "newobj",
                                                                                    "numinlets": 2,
                                                                                    "numoutlets": 1,
                                                                                    "outlettype": [ "" ],
                                                                                    "patching_rect": [ 105.0, 193.0, 29.5, 20.0 ],
                                                                                    "text": "gate"
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "id": "obj-103",
                                                                                    "maxclass": "newobj",
                                                                                    "numinlets": 2,
                                                                                    "numoutlets": 1,
                                                                                    "outlettype": [ "float" ],
                                                                                    "patching_rect": [ 115.0, 156.0, 29.5, 22.0 ],
                                                                                    "text": "f 1."
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "id": "obj-93",
                                                                                    "maxclass": "newobj",
                                                                                    "numinlets": 2,
                                                                                    "numoutlets": 1,
                                                                                    "outlettype": [ "" ],
                                                                                    "patching_rect": [ 115.0, 110.0, 150.0, 22.0 ],
                                                                                    "text": "if $f1>$f2 then $f1 else $f2"
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "comment": "",
                                                                                    "id": "obj-117",
                                                                                    "index": 1,
                                                                                    "maxclass": "inlet",
                                                                                    "numinlets": 0,
                                                                                    "numoutlets": 1,
                                                                                    "outlettype": [ "" ],
                                                                                    "patching_rect": [ 76.0, 40.0, 30.0, 30.0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "comment": "",
                                                                                    "id": "obj-118",
                                                                                    "index": 2,
                                                                                    "maxclass": "inlet",
                                                                                    "numinlets": 0,
                                                                                    "numoutlets": 1,
                                                                                    "outlettype": [ "" ],
                                                                                    "patching_rect": [ 155.0, 40.0, 30.0, 30.0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "comment": "",
                                                                                    "id": "obj-119",
                                                                                    "index": 3,
                                                                                    "maxclass": "inlet",
                                                                                    "numinlets": 0,
                                                                                    "numoutlets": 1,
                                                                                    "outlettype": [ "int" ],
                                                                                    "patching_rect": [ 306.25, 40.0, 30.0, 30.0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "comment": "",
                                                                                    "id": "obj-120",
                                                                                    "index": 1,
                                                                                    "maxclass": "outlet",
                                                                                    "numinlets": 1,
                                                                                    "numoutlets": 0,
                                                                                    "patching_rect": [ 59.375, 311.0, 30.0, 30.0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "comment": "",
                                                                                    "id": "obj-121",
                                                                                    "index": 2,
                                                                                    "maxclass": "outlet",
                                                                                    "numinlets": 1,
                                                                                    "numoutlets": 0,
                                                                                    "patching_rect": [ 137.0, 311.0, 30.0, 30.0 ]
                                                                                }
                                                                            }
                                                                        ],
                                                                        "lines": [
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-93", 0 ],
                                                                                    "source": [ "obj-1", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-104", 1 ],
                                                                                    "source": [ "obj-103", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-109", 0 ],
                                                                                    "order": 1,
                                                                                    "source": [ "obj-104", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-121", 0 ],
                                                                                    "order": 0,
                                                                                    "source": [ "obj-104", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-120", 0 ],
                                                                                    "source": [ "obj-107", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-121", 0 ],
                                                                                    "source": [ "obj-108", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-120", 0 ],
                                                                                    "source": [ "obj-109", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-107", 0 ],
                                                                                    "order": 1,
                                                                                    "source": [ "obj-111", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-108", 0 ],
                                                                                    "order": 0,
                                                                                    "source": [ "obj-111", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-107", 1 ],
                                                                                    "source": [ "obj-114", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-108", 1 ],
                                                                                    "source": [ "obj-115", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-103", 0 ],
                                                                                    "order": 1,
                                                                                    "source": [ "obj-116", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-104", 0 ],
                                                                                    "order": 1,
                                                                                    "source": [ "obj-116", 1 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-111", 0 ],
                                                                                    "order": 0,
                                                                                    "source": [ "obj-116", 1 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-114", 0 ],
                                                                                    "order": 2,
                                                                                    "source": [ "obj-116", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-115", 0 ],
                                                                                    "order": 0,
                                                                                    "source": [ "obj-116", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-1", 0 ],
                                                                                    "order": 0,
                                                                                    "source": [ "obj-117", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-114", 0 ],
                                                                                    "order": 1,
                                                                                    "source": [ "obj-117", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-115", 0 ],
                                                                                    "order": 0,
                                                                                    "source": [ "obj-118", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-2", 0 ],
                                                                                    "order": 1,
                                                                                    "source": [ "obj-118", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-116", 0 ],
                                                                                    "source": [ "obj-119", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-93", 1 ],
                                                                                    "source": [ "obj-2", 1 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-93", 0 ],
                                                                                    "source": [ "obj-2", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-103", 0 ],
                                                                                    "source": [ "obj-93", 0 ]
                                                                                }
                                                                            }
                                                                        ],
                                                                        "toolbaradditions": [ "s2n", "Modalys", "Gestural-Sound-Toolkit" ]
                                                                    },
                                                                    "patching_rect": [ 288.0, 528.0, 121.0, 22.0 ],
                                                                    "text": "p mode"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-57",
                                                                    "index": 3,
                                                                    "maxclass": "outlet",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 443.0, 1010.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-54",
                                                                    "index": 2,
                                                                    "maxclass": "outlet",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 338.0, 1010.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-47",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 3,
                                                                    "numoutlets": 3,
                                                                    "outlettype": [ "bang", "bang", "" ],
                                                                    "patching_rect": [ 591.0, 841.0, 153.0, 22.0 ],
                                                                    "text": "sel 1 2"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-46",
                                                                    "index": 4,
                                                                    "maxclass": "outlet",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 591.0, 1010.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-45",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 591.11, 954.67, 95.0, 22.0 ],
                                                                    "text": "prepend bounds"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-44",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 610.11, 793.0, 41.0, 22.0 ],
                                                                    "text": "pak f f"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-43",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "" ],
                                                                    "patching_rect": [ 591.11, 884.0, 38.0, 22.0 ],
                                                                    "text": "zl.reg"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-42",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "" ],
                                                                    "patching_rect": [ 658.0, 884.0, 38.0, 22.0 ],
                                                                    "text": "zl.reg"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-41",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "" ],
                                                                    "patching_rect": [ 677.0, 793.0, 55.0, 22.0 ],
                                                                    "text": "zl.slice 2"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-40",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "int" ],
                                                                    "patching_rect": [ 295.0, 116.0, 29.5, 22.0 ],
                                                                    "text": "+ 1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-39",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "int" ],
                                                                    "patching_rect": [ 295.0, 81.0, 29.5, 22.0 ],
                                                                    "text": "!- 1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-22",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 3,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 17.0, 953.0, 62.0, 22.0 ],
                                                                    "text": "switch 2 2"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-17",
                                                                    "index": 3,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "int" ],
                                                                    "patching_rect": [ 295.0, 10.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-14",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "float" ],
                                                                    "patching_rect": [ 538.0, 550.0, 29.0, 22.0 ],
                                                                    "text": "thru"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-9",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "float" ],
                                                                    "patching_rect": [ 436.0, 550.0, 29.0, 22.0 ],
                                                                    "text": "thru"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-6",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 4,
                                                                    "outlettype": [ "", "", "", "" ],
                                                                    "patching_rect": [ 787.0, 122.94999999999999, 56.0, 22.0 ],
                                                                    "restore": {
                                                                        "B-SclMax": [ 0.47596630454063416 ],
                                                                        "B-SclMin": [ -0.48395267128944397 ]
                                                                    },
                                                                    "text": "autopattr",
                                                                    "varname": "u414003394"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-27",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "" ],
                                                                    "patching_rect": [ 969.0, 281.0, 150.0, 22.0 ],
                                                                    "text": "combine name -scalenorm"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-26",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 969.0, 311.0, 75.0, 22.0 ],
                                                                    "text": "prepend title"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-25",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 677.0, 311.0, 103.0, 22.0 ],
                                                                    "text": "prepend varname"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-21",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 824.0, 311.0, 103.0, 22.0 ],
                                                                    "text": "prepend varname"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-19",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "" ],
                                                                    "patching_rect": [ 824.0, 281.0, 134.0, 22.0 ],
                                                                    "text": "combine name -SclMax"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-18",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "" ],
                                                                    "patching_rect": [ 677.0, 281.0, 131.0, 22.0 ],
                                                                    "text": "combine name -SclMin"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-16",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 4,
                                                                    "outlettype": [ "float", "float", "int", "" ],
                                                                    "patching_rect": [ 620.0, 194.0, 76.0, 22.0 ],
                                                                    "text": "unpack f f i s"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-15",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "bang" ],
                                                                    "patching_rect": [ 584.0, 80.0, 58.0, 22.0 ],
                                                                    "text": "loadbang"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-13",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "" ],
                                                                    "patching_rect": [ 584.0, 159.0, 55.0, 22.0 ],
                                                                    "text": "zl.slice 1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-12",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "" ],
                                                                    "patching_rect": [ 584.0, 122.95, 179.0, 22.0 ],
                                                                    "text": "patcherargs"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-10",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 3,
                                                                    "outlettype": [ "float", "int", "int" ],
                                                                    "patching_rect": [ 390.0, 448.0, 104.39999399999996, 22.0 ],
                                                                    "text": "peak 0."
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-4",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 3,
                                                                    "outlettype": [ "float", "int", "int" ],
                                                                    "patching_rect": [ 288.0, 448.0, 75.0, 22.0 ],
                                                                    "text": "trough 0."
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-81",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "int" ],
                                                                    "patching_rect": [ 149.0, 218.0, 33.0, 22.0 ],
                                                                    "text": "thru"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-80",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 3,
                                                                    "outlettype": [ "int", "float", "float" ],
                                                                    "patching_rect": [ 149.0, 177.0, 55.0, 22.0 ],
                                                                    "text": "t 1 0. 0."
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-79",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "bang", "" ],
                                                                    "patching_rect": [ 149.0, 146.0, 75.0, 22.0 ],
                                                                    "text": "sel 1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-78",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 3,
                                                                    "outlettype": [ "", "", "" ],
                                                                    "patching_rect": [ 8.0, 271.0, 111.0, 22.0 ],
                                                                    "text": "t l l l"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-77",
                                                                    "linecount": 2,
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 3,
                                                                    "outlettype": [ "float", "float", "float" ],
                                                                    "patching_rect": [ 84.0, 466.0, 65.0, 35.0 ],
                                                                    "text": "unpack f f f"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-76",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 128.0, 316.0, 36.0, 22.0 ],
                                                                    "text": "gate"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-75",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 3,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 84.0, 906.0, 128.0, 22.0 ],
                                                                    "text": "pack f f f"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-74",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 3,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 252.0, 874.0, 228.0, 22.0 ],
                                                                    "text": "clip"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-73",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 3,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 229.0, 846.0, 228.0, 22.0 ],
                                                                    "text": "clip"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-72",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "" ],
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
                                                                        "rect": [ 59.0, 112.0, 472.0, 303.0 ],
                                                                        "subpatcher_template": "sebPAC-1",
                                                                        "boxes": [
                                                                            {
                                                                                "box": {
                                                                                    "id": "obj-63",
                                                                                    "maxclass": "newobj",
                                                                                    "numinlets": 1,
                                                                                    "numoutlets": 2,
                                                                                    "outlettype": [ "bang", "float" ],
                                                                                    "patching_rect": [ 278.0, 100.0, 159.0, 22.0 ],
                                                                                    "text": "t b f"
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "id": "obj-64",
                                                                                    "maxclass": "newobj",
                                                                                    "numinlets": 1,
                                                                                    "numoutlets": 2,
                                                                                    "outlettype": [ "bang", "float" ],
                                                                                    "patching_rect": [ 73.0, 100.0, 159.0, 22.0 ],
                                                                                    "text": "t b f"
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "id": "obj-65",
                                                                                    "maxclass": "newobj",
                                                                                    "numinlets": 2,
                                                                                    "numoutlets": 1,
                                                                                    "outlettype": [ "" ],
                                                                                    "patching_rect": [ 255.0, 141.0, 182.0, 22.0 ],
                                                                                    "text": "if $f1 > $f2 then $f1 else $f2"
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "id": "obj-66",
                                                                                    "maxclass": "newobj",
                                                                                    "numinlets": 2,
                                                                                    "numoutlets": 1,
                                                                                    "outlettype": [ "" ],
                                                                                    "patching_rect": [ 50.0, 141.0, 182.0, 22.0 ],
                                                                                    "text": "if $f1 < $f2 then $f1 else $f2"
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "comment": "",
                                                                                    "id": "obj-68",
                                                                                    "index": 1,
                                                                                    "maxclass": "inlet",
                                                                                    "numinlets": 0,
                                                                                    "numoutlets": 1,
                                                                                    "outlettype": [ "float" ],
                                                                                    "patching_rect": [ 158.0, 40.0, 30.0, 30.0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "comment": "",
                                                                                    "id": "obj-69",
                                                                                    "index": 2,
                                                                                    "maxclass": "inlet",
                                                                                    "numinlets": 0,
                                                                                    "numoutlets": 1,
                                                                                    "outlettype": [ "float" ],
                                                                                    "patching_rect": [ 193.0, 40.0, 30.0, 30.0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "comment": "",
                                                                                    "id": "obj-70",
                                                                                    "index": 1,
                                                                                    "maxclass": "outlet",
                                                                                    "numinlets": 1,
                                                                                    "numoutlets": 0,
                                                                                    "patching_rect": [ 50.0, 225.0, 30.0, 30.0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "comment": "",
                                                                                    "id": "obj-71",
                                                                                    "index": 2,
                                                                                    "maxclass": "outlet",
                                                                                    "numinlets": 1,
                                                                                    "numoutlets": 0,
                                                                                    "patching_rect": [ 255.0, 225.0, 30.0, 30.0 ]
                                                                                }
                                                                            }
                                                                        ],
                                                                        "lines": [
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-65", 1 ],
                                                                                    "source": [ "obj-63", 1 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-65", 0 ],
                                                                                    "source": [ "obj-63", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-66", 1 ],
                                                                                    "source": [ "obj-64", 1 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-66", 0 ],
                                                                                    "source": [ "obj-64", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-71", 0 ],
                                                                                    "source": [ "obj-65", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-70", 0 ],
                                                                                    "source": [ "obj-66", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-63", 0 ],
                                                                                    "order": 0,
                                                                                    "source": [ "obj-68", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-66", 0 ],
                                                                                    "order": 1,
                                                                                    "source": [ "obj-68", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-64", 0 ],
                                                                                    "order": 1,
                                                                                    "source": [ "obj-69", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-65", 0 ],
                                                                                    "order": 0,
                                                                                    "source": [ "obj-69", 0 ]
                                                                                }
                                                                            }
                                                                        ],
                                                                        "toolbaradditions": [ "s2n", "Modalys" ]
                                                                    },
                                                                    "patching_rect": [ 332.0, 771.0, 156.0, 22.0 ],
                                                                    "text": "p"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-67",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 3,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 206.0, 816.0, 228.0, 22.0 ],
                                                                    "text": "clip"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-53",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 6,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 130.0, 691.0, 529.0000375000002, 22.0 ],
                                                                    "text": "scale -100. 100. -1. 1."
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-52",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 6,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 107.0, 651.0, 529.0000375000002, 22.0 ],
                                                                    "text": "scale -100. 100. -1. 1."
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-49",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 6,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 84.0, 618.0, 529.0000375000002, 22.0 ],
                                                                    "text": "scale -100. 100. -1. 1."
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-36",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 3,
                                                                    "outlettype": [ "float", "float", "float" ],
                                                                    "patching_rect": [ 128.0, 359.0, 166.0, 22.0 ],
                                                                    "text": "unpack f f f"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-24",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 3,
                                                                    "numoutlets": 3,
                                                                    "outlettype": [ "float", "float", "float" ],
                                                                    "patcher": {
                                                                        "fileversion": 1,
                                                                        "appversion": {
                                                                            "major": 9,
                                                                            "minor": 1,
                                                                            "revision": 4,
                                                                            "architecture": "x64",
                                                                            "modernui": 1
                                                                        },
                                                                        "classnamespace": "dsp.gen",
                                                                        "rect": [ 714.0, 630.0, 311.0, 406.0 ],
                                                                        "subpatcher_template": "sebPAC-1",
                                                                        "boxes": [
                                                                            {
                                                                                "box": {
                                                                                    "id": "obj-3",
                                                                                    "maxclass": "newobj",
                                                                                    "numinlets": 1,
                                                                                    "numoutlets": 0,
                                                                                    "patching_rect": [ 138.0, 376.0, 35.0, 22.0 ],
                                                                                    "text": "out 2"
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "code": "a=in1;\r\nb=in2;\r\nc=in3;\r\nmin = a;\r\nmax = b;\r\nif(a>b){\r\n    min = b;\r\n    max = a;\r\n    if (c>max) max = c;\r\n    else if (min>c) min = c;\r\n    }\r\nelse {\r\n    if (c>max) max = c;\r\n    else if (min>c) min = c;\r\n    }\r\n\r\nout3=max;//max\r\nout2=-max;\r\nout1=min;//min",
                                                                                    "fontface": 0,
                                                                                    "fontname": "<Monospaced>",
                                                                                    "fontsize": 12.0,
                                                                                    "id": "obj-7",
                                                                                    "maxclass": "codebox",
                                                                                    "numinlets": 3,
                                                                                    "numoutlets": 3,
                                                                                    "outlettype": [ "", "", "" ],
                                                                                    "patching_rect": [ 11.0, 39.0, 273.0, 322.0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "id": "obj-6",
                                                                                    "maxclass": "newobj",
                                                                                    "numinlets": 1,
                                                                                    "numoutlets": 0,
                                                                                    "patching_rect": [ 265.0, 376.0, 35.0, 22.0 ],
                                                                                    "text": "out 3"
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "id": "obj-5",
                                                                                    "maxclass": "newobj",
                                                                                    "numinlets": 0,
                                                                                    "numoutlets": 1,
                                                                                    "outlettype": [ "" ],
                                                                                    "patching_rect": [ 265.0, 10.0, 28.0, 22.0 ],
                                                                                    "text": "in 3"
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "id": "obj-1",
                                                                                    "maxclass": "newobj",
                                                                                    "numinlets": 0,
                                                                                    "numoutlets": 1,
                                                                                    "outlettype": [ "" ],
                                                                                    "patching_rect": [ 11.0, 6.0, 28.0, 22.0 ],
                                                                                    "text": "in 1"
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "id": "obj-2",
                                                                                    "maxclass": "newobj",
                                                                                    "numinlets": 0,
                                                                                    "numoutlets": 1,
                                                                                    "outlettype": [ "" ],
                                                                                    "patching_rect": [ 138.0, 6.0, 28.0, 22.0 ],
                                                                                    "text": "in 2"
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "id": "obj-4",
                                                                                    "maxclass": "newobj",
                                                                                    "numinlets": 1,
                                                                                    "numoutlets": 0,
                                                                                    "patching_rect": [ 11.0, 376.0, 35.0, 22.0 ],
                                                                                    "text": "out 1"
                                                                                }
                                                                            }
                                                                        ],
                                                                        "lines": [
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-7", 0 ],
                                                                                    "source": [ "obj-1", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-7", 1 ],
                                                                                    "source": [ "obj-2", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-7", 2 ],
                                                                                    "source": [ "obj-5", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-3", 0 ],
                                                                                    "source": [ "obj-7", 1 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-4", 0 ],
                                                                                    "source": [ "obj-7", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-6", 0 ],
                                                                                    "source": [ "obj-7", 2 ]
                                                                                }
                                                                            }
                                                                        ]
                                                                    },
                                                                    "patching_rect": [ 128.0, 391.0, 166.0, 22.0 ],
                                                                    "text": "gen @t min-max-from-list"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-11",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "" ],
                                                                    "patching_rect": [ 969.0, 344.0, 77.0, 22.0 ],
                                                                    "save": [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
                                                                    "text": "thispatcher"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-20",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 372.333344, 89.0, 133.0, 20.0 ],
                                                                    "text": "#4 : name"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-8",
                                                                    "linecount": 3,
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 372.333344, 34.0, 133.0, 47.0 ],
                                                                    "text": "#3 : \nmode 0: min ≠ max \nmode 1: min = -max"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-7",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 372.333344, 10.0, 133.0, 20.0 ],
                                                                    "text": "#1 #2 : min max"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-5",
                                                                    "index": 1,
                                                                    "maxclass": "outlet",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 17.0, 1016.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-3",
                                                                    "index": 2,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 149.0, 15.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-2",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 43.0, 18.0, 49.0, 20.0 ],
                                                                    "text": "Data"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-1",
                                                                    "index": 1,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 8.0, 10.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-60",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 175.0, 82.0, 94.700012, 20.0 ],
                                                                    "text": "Normalize On"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-59",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 78.5, 178.0, 49.0, 20.0 ],
                                                                    "text": "Mode"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-56",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 355.0, 497.0, 37.0, 20.0 ],
                                                                    "text": "Max"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-55",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 244.0, 497.0, 37.0, 20.0 ],
                                                                    "text": "Min"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-50",
                                                                    "maxclass": "toggle",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "int" ],
                                                                    "parameter_enable": 0,
                                                                    "patching_rect": [ 77.75, 213.0, 24.0, 24.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-33",
                                                                    "maxclass": "live.numbox",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "float" ],
                                                                    "parameter_enable": 1,
                                                                    "patching_rect": [ 390.0, 497.0, 44.0, 15.0 ],
                                                                    "saved_attribute_attributes": {
                                                                        "valueof": {
                                                                            "parameter_longname": "0-SclMax[3]",
                                                                            "parameter_mmax": 180.0,
                                                                            "parameter_mmin": -180.0,
                                                                            "parameter_modmode": 3,
                                                                            "parameter_shortname": "SclMax-NB",
                                                                            "parameter_type": 0,
                                                                            "parameter_unitstyle": 1
                                                                        }
                                                                    },
                                                                    "varname": "B-SclMax"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-32",
                                                                    "maxclass": "live.numbox",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "float" ],
                                                                    "parameter_enable": 1,
                                                                    "patching_rect": [ 288.0, 497.0, 44.0, 15.0 ],
                                                                    "saved_attribute_attributes": {
                                                                        "valueof": {
                                                                            "parameter_longname": "0-SclMin[3]",
                                                                            "parameter_mmax": 180.0,
                                                                            "parameter_mmin": -180.0,
                                                                            "parameter_modmode": 3,
                                                                            "parameter_shortname": "SclMin-NB",
                                                                            "parameter_type": 0,
                                                                            "parameter_unitstyle": 1
                                                                        }
                                                                    },
                                                                    "varname": "B-SclMin"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-29",
                                                                    "maxclass": "toggle",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "int" ],
                                                                    "parameter_enable": 0,
                                                                    "patching_rect": [ 149.0, 80.0, 24.0, 24.0 ]
                                                                }
                                                            }
                                                        ],
                                                        "lines": [
                                                            {
                                                                "patchline": {
                                                                    "color": [ 0.501961, 0.0, 0.0, 1.0 ],
                                                                    "destination": [ "obj-78", 0 ],
                                                                    "source": [ "obj-1", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-33", 0 ],
                                                                    "source": [ "obj-10", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-13", 0 ],
                                                                    "source": [ "obj-12", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-44", 1 ],
                                                                    "order": 0,
                                                                    "source": [ "obj-126", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-44", 0 ],
                                                                    "order": 0,
                                                                    "source": [ "obj-126", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-49", 2 ],
                                                                    "order": 4,
                                                                    "source": [ "obj-126", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-49", 1 ],
                                                                    "order": 4,
                                                                    "source": [ "obj-126", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-52", 2 ],
                                                                    "order": 3,
                                                                    "source": [ "obj-126", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-52", 1 ],
                                                                    "order": 3,
                                                                    "source": [ "obj-126", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-53", 2 ],
                                                                    "order": 2,
                                                                    "source": [ "obj-126", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-53", 1 ],
                                                                    "order": 2,
                                                                    "source": [ "obj-126", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-54", 0 ],
                                                                    "order": 1,
                                                                    "source": [ "obj-126", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-57", 0 ],
                                                                    "order": 1,
                                                                    "source": [ "obj-126", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-16", 0 ],
                                                                    "order": 1,
                                                                    "source": [ "obj-13", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-41", 0 ],
                                                                    "order": 0,
                                                                    "source": [ "obj-13", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-49", 4 ],
                                                                    "order": 2,
                                                                    "source": [ "obj-14", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-52", 4 ],
                                                                    "order": 1,
                                                                    "source": [ "obj-14", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-53", 4 ],
                                                                    "order": 0,
                                                                    "source": [ "obj-14", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-72", 1 ],
                                                                    "order": 3,
                                                                    "source": [ "obj-14", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-12", 0 ],
                                                                    "source": [ "obj-15", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-14", 0 ],
                                                                    "source": [ "obj-16", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-18", 0 ],
                                                                    "order": 2,
                                                                    "source": [ "obj-16", 3 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-19", 0 ],
                                                                    "order": 1,
                                                                    "source": [ "obj-16", 3 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-27", 0 ],
                                                                    "order": 0,
                                                                    "source": [ "obj-16", 3 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-50", 0 ],
                                                                    "source": [ "obj-16", 2 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-9", 0 ],
                                                                    "source": [ "obj-16", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-39", 0 ],
                                                                    "source": [ "obj-17", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-25", 0 ],
                                                                    "source": [ "obj-18", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-21", 0 ],
                                                                    "source": [ "obj-19", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-33", 0 ],
                                                                    "source": [ "obj-21", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "color": [ 0.501961, 0.0, 0.0, 1.0 ],
                                                                    "destination": [ "obj-5", 0 ],
                                                                    "source": [ "obj-22", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-50", 0 ],
                                                                    "source": [ "obj-23", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-10", 0 ],
                                                                    "source": [ "obj-24", 2 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-4", 0 ],
                                                                    "source": [ "obj-24", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-32", 0 ],
                                                                    "source": [ "obj-25", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-11", 0 ],
                                                                    "source": [ "obj-26", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-26", 0 ],
                                                                    "source": [ "obj-27", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-35", 0 ],
                                                                    "source": [ "obj-28", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-79", 0 ],
                                                                    "source": [ "obj-29", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-29", 0 ],
                                                                    "source": [ "obj-3", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-67", 0 ],
                                                                    "source": [ "obj-30", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-75", 0 ],
                                                                    "source": [ "obj-30", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-73", 0 ],
                                                                    "source": [ "obj-31", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-75", 1 ],
                                                                    "source": [ "obj-31", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-126", 0 ],
                                                                    "source": [ "obj-32", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-126", 1 ],
                                                                    "source": [ "obj-33", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-74", 0 ],
                                                                    "source": [ "obj-34", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-75", 2 ],
                                                                    "source": [ "obj-34", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-37", 0 ],
                                                                    "source": [ "obj-35", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-24", 2 ],
                                                                    "source": [ "obj-36", 2 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-24", 1 ],
                                                                    "source": [ "obj-36", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-24", 0 ],
                                                                    "source": [ "obj-36", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-30", 0 ],
                                                                    "order": 2,
                                                                    "source": [ "obj-37", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-31", 0 ],
                                                                    "order": 1,
                                                                    "source": [ "obj-37", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-34", 0 ],
                                                                    "order": 0,
                                                                    "source": [ "obj-37", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-40", 0 ],
                                                                    "source": [ "obj-39", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-32", 0 ],
                                                                    "source": [ "obj-4", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-22", 0 ],
                                                                    "order": 1,
                                                                    "source": [ "obj-40", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-47", 0 ],
                                                                    "order": 0,
                                                                    "source": [ "obj-40", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-42", 1 ],
                                                                    "source": [ "obj-41", 0 ]
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
                                                                    "destination": [ "obj-45", 0 ],
                                                                    "source": [ "obj-43", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-43", 1 ],
                                                                    "source": [ "obj-44", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-46", 0 ],
                                                                    "source": [ "obj-45", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-42", 0 ],
                                                                    "source": [ "obj-47", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-43", 0 ],
                                                                    "source": [ "obj-47", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-30", 1 ],
                                                                    "source": [ "obj-49", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-126", 2 ],
                                                                    "source": [ "obj-50", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-31", 1 ],
                                                                    "source": [ "obj-52", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-34", 1 ],
                                                                    "source": [ "obj-53", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-75", 0 ],
                                                                    "source": [ "obj-67", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-67", 2 ],
                                                                    "order": 2,
                                                                    "source": [ "obj-72", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-67", 1 ],
                                                                    "order": 2,
                                                                    "source": [ "obj-72", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-73", 2 ],
                                                                    "order": 1,
                                                                    "source": [ "obj-72", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-73", 1 ],
                                                                    "order": 1,
                                                                    "source": [ "obj-72", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-74", 2 ],
                                                                    "order": 0,
                                                                    "source": [ "obj-72", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-74", 1 ],
                                                                    "order": 0,
                                                                    "source": [ "obj-72", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-75", 1 ],
                                                                    "source": [ "obj-73", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-75", 2 ],
                                                                    "source": [ "obj-74", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-22", 2 ],
                                                                    "source": [ "obj-75", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-36", 0 ],
                                                                    "source": [ "obj-76", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-49", 0 ],
                                                                    "source": [ "obj-77", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-52", 0 ],
                                                                    "source": [ "obj-77", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-53", 0 ],
                                                                    "source": [ "obj-77", 2 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-22", 1 ],
                                                                    "source": [ "obj-78", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-76", 1 ],
                                                                    "source": [ "obj-78", 2 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-77", 0 ],
                                                                    "source": [ "obj-78", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-80", 0 ],
                                                                    "source": [ "obj-79", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-81", 0 ],
                                                                    "midpoints": [ 214.5, 210.03125, 158.5, 210.03125 ],
                                                                    "source": [ "obj-79", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-10", 1 ],
                                                                    "source": [ "obj-80", 2 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-4", 1 ],
                                                                    "source": [ "obj-80", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-81", 0 ],
                                                                    "source": [ "obj-80", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-76", 0 ],
                                                                    "source": [ "obj-81", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-49", 3 ],
                                                                    "order": 2,
                                                                    "source": [ "obj-9", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-52", 3 ],
                                                                    "order": 1,
                                                                    "source": [ "obj-9", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-53", 3 ],
                                                                    "order": 0,
                                                                    "source": [ "obj-9", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-72", 0 ],
                                                                    "order": 3,
                                                                    "source": [ "obj-9", 0 ]
                                                                }
                                                            }
                                                        ],
                                                        "toolbaradditions": [ "s2n", "Modalys", "Gestural-Sound-Toolkit" ]
                                                    },
                                                    "patching_rect": [ 369.0, 317.0, 161.0, 22.0 ],
                                                    "text": "p gst.scalenorme -1 1 0 B",
                                                    "varname": "gyro"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 11.0,
                                                    "id": "obj-4",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 701.0, 608.0, 50.0, 21.0 ],
                                                    "text": "deferlow"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 11.0,
                                                    "id": "obj-5",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 701.0, 586.0, 161.0, 21.0 ],
                                                    "text": "loadmess resizetowindowrect 4"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 11.0,
                                                    "id": "obj-26",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 686.0, 563.0, 120.0, 21.0 ],
                                                    "text": "loadmess windresize 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-40",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 595.0, 180.39473712444305, 35.0, 22.0 ],
                                                    "text": "open"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-38",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 595.0, 210.0, 51.0, 22.0 ],
                                                    "text": "pcontrol"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-37",
                                                    "maxclass": "live.text",
                                                    "mode": 0,
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "parameter_enable": 1,
                                                    "parameter_mappable": 0,
                                                    "patching_rect": [ 595.0, 150.13157951831818, 54.0, 15.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 125.0, 5.0, 34.99999836087227, 14.873417526483536 ],
                                                    "saved_attribute_attributes": {
                                                        "valueof": {
                                                            "parameter_enum": [ "val1", "val2" ],
                                                            "parameter_initial": [ 0.0 ],
                                                            "parameter_initial_enable": 1,
                                                            "parameter_invisible": 4,
                                                            "parameter_longname": "live.text[27]",
                                                            "parameter_mmax": 1,
                                                            "parameter_modmode": 0,
                                                            "parameter_shortname": "live.text",
                                                            "parameter_type": 2
                                                        }
                                                    },
                                                    "text": "More",
                                                    "texton": "Norm. Acc.",
                                                    "varname": "live.text[3]"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-32",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 616.0, 550.0, 29.5, 22.0 ],
                                                    "text": "+ 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "annotation": "A/B monitor",
                                                    "annotation_name": "A/B monitor",
                                                    "hint": "A/B monitor",
                                                    "id": "obj-31",
                                                    "maxclass": "live.text",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "parameter_enable": 1,
                                                    "parameter_mappable": 0,
                                                    "patching_rect": [ 616.0, 436.0, 44.0, 15.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 1.0, 41.0, 22.0, 15.0 ],
                                                    "saved_attribute_attributes": {
                                                        "valueof": {
                                                            "parameter_enum": [ "val1", "val2" ],
                                                            "parameter_initial": [ 0.0 ],
                                                            "parameter_initial_enable": 1,
                                                            "parameter_invisible": 4,
                                                            "parameter_longname": "live.text[26]",
                                                            "parameter_mmax": 1,
                                                            "parameter_modmode": 0,
                                                            "parameter_shortname": "live.text",
                                                            "parameter_type": 2
                                                        }
                                                    },
                                                    "varname": "live.text"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-30",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 616.0, 591.0, 62.0, 22.0 ],
                                                    "text": "switch 2 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "annotation": "calibrate",
                                                    "annotation_name": "calibrate",
                                                    "hint": "calibrate",
                                                    "id": "obj-29",
                                                    "maxclass": "live.text",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "parameter_enable": 1,
                                                    "parameter_mappable": 0,
                                                    "patching_rect": [ 523.0, 95.0, 54.0, 15.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 25.139663815498352, 20.11173105239868, 22.9050270318985, 19.88826894760132 ],
                                                    "saved_attribute_attributes": {
                                                        "valueof": {
                                                            "parameter_enum": [ "val1", "val2" ],
                                                            "parameter_initial": [ 0.0 ],
                                                            "parameter_initial_enable": 1,
                                                            "parameter_invisible": 4,
                                                            "parameter_longname": "live.text[25]",
                                                            "parameter_mmax": 1,
                                                            "parameter_modmode": 0,
                                                            "parameter_shortname": "live.text",
                                                            "parameter_type": 2
                                                        }
                                                    },
                                                    "text": "B",
                                                    "varname": "live.text[2]"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "annotation": "calibrate",
                                                    "annotation_name": "calibrate",
                                                    "hint": "calibrate",
                                                    "id": "obj-28",
                                                    "maxclass": "live.text",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "parameter_enable": 1,
                                                    "parameter_mappable": 0,
                                                    "patching_rect": [ 214.0, 101.0, 54.0, 15.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 0.0, 20.11173105239868, 22.9050270318985, 19.88826894760132 ],
                                                    "saved_attribute_attributes": {
                                                        "valueof": {
                                                            "parameter_enum": [ "val1", "val2" ],
                                                            "parameter_initial": [ 0.0 ],
                                                            "parameter_initial_enable": 1,
                                                            "parameter_invisible": 4,
                                                            "parameter_longname": "live.text[28]",
                                                            "parameter_mmax": 1,
                                                            "parameter_modmode": 0,
                                                            "parameter_shortname": "live.text",
                                                            "parameter_type": 2
                                                        }
                                                    },
                                                    "texton": "A",
                                                    "varname": "live.text[1]"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "normalized B",
                                                    "id": "obj-25",
                                                    "index": 2,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 369.0, 714.0, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-12",
                                                    "maxclass": "newobj",
                                                    "numinlets": 5,
                                                    "numoutlets": 4,
                                                    "outlettype": [ "", "float", "", "" ],
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
                                                        "rect": [ 867.0, 106.0, 1150.0, 1060.0 ],
                                                        "title": "A-scalenorm",
                                                        "boxes": [
                                                            {
                                                                "box": {
                                                                    "id": "obj-37",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "int" ],
                                                                    "patching_rect": [ 53.0, 728.0, 29.0, 22.0 ],
                                                                    "text": "thru"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-35",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "int" ],
                                                                    "patching_rect": [ 526.25, 116.0, 29.5, 22.0 ],
                                                                    "text": "+ 1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-34",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "" ],
                                                                    "patching_rect": [ 132.0, 783.0, 139.0, 22.0 ],
                                                                    "text": "gate 2 1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-31",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "" ],
                                                                    "patching_rect": [ 108.0, 755.0, 140.0, 22.0 ],
                                                                    "text": "gate 2 1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-30",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "" ],
                                                                    "patching_rect": [ 84.0, 728.0, 141.0, 22.0 ],
                                                                    "text": "gate 2 1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-28",
                                                                    "index": 5,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 570.0, 10.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-23",
                                                                    "index": 4,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 526.0, 10.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-126",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 3,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "float", "" ],
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
                                                                        "rect": [ 59.0, 121.0, 370.0, 356.0 ],
                                                                        "boxes": [
                                                                            {
                                                                                "box": {
                                                                                    "id": "obj-2",
                                                                                    "maxclass": "newobj",
                                                                                    "numinlets": 1,
                                                                                    "numoutlets": 2,
                                                                                    "outlettype": [ "bang", "float" ],
                                                                                    "patching_rect": [ 181.0, 75.0, 29.5, 22.0 ],
                                                                                    "text": "t b f"
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "fontsize": 10.0,
                                                                                    "id": "obj-1",
                                                                                    "maxclass": "newobj",
                                                                                    "numinlets": 1,
                                                                                    "numoutlets": 1,
                                                                                    "outlettype": [ "float" ],
                                                                                    "patching_rect": [ 115.0, 75.0, 36.0, 20.0 ],
                                                                                    "text": "abs 0."
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "id": "obj-116",
                                                                                    "maxclass": "newobj",
                                                                                    "numinlets": 1,
                                                                                    "numoutlets": 2,
                                                                                    "outlettype": [ "bang", "int" ],
                                                                                    "patching_rect": [ 306.25, 100.0, 29.5, 22.0 ],
                                                                                    "text": "t b i"
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "id": "obj-115",
                                                                                    "maxclass": "newobj",
                                                                                    "numinlets": 2,
                                                                                    "numoutlets": 1,
                                                                                    "outlettype": [ "float" ],
                                                                                    "patching_rect": [ 207.0, 156.0, 29.5, 22.0 ],
                                                                                    "text": "f 1."
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "id": "obj-114",
                                                                                    "maxclass": "newobj",
                                                                                    "numinlets": 2,
                                                                                    "numoutlets": 1,
                                                                                    "outlettype": [ "float" ],
                                                                                    "patching_rect": [ 76.0, 156.0, 29.5, 22.0 ],
                                                                                    "text": "f -1."
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "id": "obj-111",
                                                                                    "maxclass": "newobj",
                                                                                    "numinlets": 2,
                                                                                    "numoutlets": 1,
                                                                                    "outlettype": [ "int" ],
                                                                                    "patching_rect": [ 316.75, 156.0, 29.5, 22.0 ],
                                                                                    "text": "!- 1"
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "fontsize": 10.0,
                                                                                    "id": "obj-109",
                                                                                    "maxclass": "newobj",
                                                                                    "numinlets": 2,
                                                                                    "numoutlets": 1,
                                                                                    "outlettype": [ "float" ],
                                                                                    "patching_rect": [ 80.75, 231.0, 29.5, 20.0 ],
                                                                                    "text": "* -1."
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "fontsize": 10.0,
                                                                                    "id": "obj-108",
                                                                                    "maxclass": "newobj",
                                                                                    "numinlets": 2,
                                                                                    "numoutlets": 1,
                                                                                    "outlettype": [ "" ],
                                                                                    "patching_rect": [ 181.0, 193.0, 45.0, 20.0 ],
                                                                                    "text": "gate 1 1"
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "fontsize": 10.0,
                                                                                    "id": "obj-107",
                                                                                    "maxclass": "newobj",
                                                                                    "numinlets": 2,
                                                                                    "numoutlets": 1,
                                                                                    "outlettype": [ "" ],
                                                                                    "patching_rect": [ 50.0, 193.0, 45.0, 20.0 ],
                                                                                    "text": "gate 1 1"
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "fontsize": 10.0,
                                                                                    "id": "obj-104",
                                                                                    "maxclass": "newobj",
                                                                                    "numinlets": 2,
                                                                                    "numoutlets": 1,
                                                                                    "outlettype": [ "" ],
                                                                                    "patching_rect": [ 105.0, 193.0, 29.5, 20.0 ],
                                                                                    "text": "gate"
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "id": "obj-103",
                                                                                    "maxclass": "newobj",
                                                                                    "numinlets": 2,
                                                                                    "numoutlets": 1,
                                                                                    "outlettype": [ "float" ],
                                                                                    "patching_rect": [ 115.0, 156.0, 29.5, 22.0 ],
                                                                                    "text": "f 1."
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "id": "obj-93",
                                                                                    "maxclass": "newobj",
                                                                                    "numinlets": 2,
                                                                                    "numoutlets": 1,
                                                                                    "outlettype": [ "" ],
                                                                                    "patching_rect": [ 115.0, 110.0, 150.0, 22.0 ],
                                                                                    "text": "if $f1>$f2 then $f1 else $f2"
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "comment": "",
                                                                                    "id": "obj-117",
                                                                                    "index": 1,
                                                                                    "maxclass": "inlet",
                                                                                    "numinlets": 0,
                                                                                    "numoutlets": 1,
                                                                                    "outlettype": [ "" ],
                                                                                    "patching_rect": [ 76.0, 40.0, 30.0, 30.0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "comment": "",
                                                                                    "id": "obj-118",
                                                                                    "index": 2,
                                                                                    "maxclass": "inlet",
                                                                                    "numinlets": 0,
                                                                                    "numoutlets": 1,
                                                                                    "outlettype": [ "" ],
                                                                                    "patching_rect": [ 155.0, 40.0, 30.0, 30.0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "comment": "",
                                                                                    "id": "obj-119",
                                                                                    "index": 3,
                                                                                    "maxclass": "inlet",
                                                                                    "numinlets": 0,
                                                                                    "numoutlets": 1,
                                                                                    "outlettype": [ "int" ],
                                                                                    "patching_rect": [ 306.25, 40.0, 30.0, 30.0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "comment": "",
                                                                                    "id": "obj-120",
                                                                                    "index": 1,
                                                                                    "maxclass": "outlet",
                                                                                    "numinlets": 1,
                                                                                    "numoutlets": 0,
                                                                                    "patching_rect": [ 59.375, 311.0, 30.0, 30.0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "comment": "",
                                                                                    "id": "obj-121",
                                                                                    "index": 2,
                                                                                    "maxclass": "outlet",
                                                                                    "numinlets": 1,
                                                                                    "numoutlets": 0,
                                                                                    "patching_rect": [ 137.0, 311.0, 30.0, 30.0 ]
                                                                                }
                                                                            }
                                                                        ],
                                                                        "lines": [
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-93", 0 ],
                                                                                    "source": [ "obj-1", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-104", 1 ],
                                                                                    "source": [ "obj-103", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-109", 0 ],
                                                                                    "order": 1,
                                                                                    "source": [ "obj-104", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-121", 0 ],
                                                                                    "order": 0,
                                                                                    "source": [ "obj-104", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-120", 0 ],
                                                                                    "source": [ "obj-107", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-121", 0 ],
                                                                                    "source": [ "obj-108", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-120", 0 ],
                                                                                    "source": [ "obj-109", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-107", 0 ],
                                                                                    "order": 1,
                                                                                    "source": [ "obj-111", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-108", 0 ],
                                                                                    "order": 0,
                                                                                    "source": [ "obj-111", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-107", 1 ],
                                                                                    "source": [ "obj-114", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-108", 1 ],
                                                                                    "source": [ "obj-115", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-103", 0 ],
                                                                                    "order": 1,
                                                                                    "source": [ "obj-116", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-104", 0 ],
                                                                                    "order": 1,
                                                                                    "source": [ "obj-116", 1 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-111", 0 ],
                                                                                    "order": 0,
                                                                                    "source": [ "obj-116", 1 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-114", 0 ],
                                                                                    "order": 2,
                                                                                    "source": [ "obj-116", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-115", 0 ],
                                                                                    "order": 0,
                                                                                    "source": [ "obj-116", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-1", 0 ],
                                                                                    "order": 0,
                                                                                    "source": [ "obj-117", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-114", 0 ],
                                                                                    "order": 1,
                                                                                    "source": [ "obj-117", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-115", 0 ],
                                                                                    "order": 0,
                                                                                    "source": [ "obj-118", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-2", 0 ],
                                                                                    "order": 1,
                                                                                    "source": [ "obj-118", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-116", 0 ],
                                                                                    "source": [ "obj-119", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-93", 1 ],
                                                                                    "source": [ "obj-2", 1 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-93", 0 ],
                                                                                    "source": [ "obj-2", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-103", 0 ],
                                                                                    "source": [ "obj-93", 0 ]
                                                                                }
                                                                            }
                                                                        ],
                                                                        "toolbaradditions": [ "s2n", "Modalys", "Gestural-Sound-Toolkit" ]
                                                                    },
                                                                    "patching_rect": [ 288.0, 528.0, 121.0, 22.0 ],
                                                                    "text": "p mode"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-57",
                                                                    "index": 3,
                                                                    "maxclass": "outlet",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 443.0, 1010.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-54",
                                                                    "index": 2,
                                                                    "maxclass": "outlet",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 338.0, 1010.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-47",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 3,
                                                                    "numoutlets": 3,
                                                                    "outlettype": [ "bang", "bang", "" ],
                                                                    "patching_rect": [ 591.0, 841.0, 153.0, 22.0 ],
                                                                    "text": "sel 1 2"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-46",
                                                                    "index": 4,
                                                                    "maxclass": "outlet",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 591.0, 1010.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-45",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 591.11, 954.67, 95.0, 22.0 ],
                                                                    "text": "prepend bounds"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-44",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 610.11, 793.0, 41.0, 22.0 ],
                                                                    "text": "pak f f"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-43",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "" ],
                                                                    "patching_rect": [ 591.11, 884.0, 38.0, 22.0 ],
                                                                    "text": "zl.reg"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-42",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "" ],
                                                                    "patching_rect": [ 658.0, 884.0, 38.0, 22.0 ],
                                                                    "text": "zl.reg"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-41",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "" ],
                                                                    "patching_rect": [ 677.0, 793.0, 55.0, 22.0 ],
                                                                    "text": "zl.slice 2"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-40",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "int" ],
                                                                    "patching_rect": [ 295.0, 116.0, 29.5, 22.0 ],
                                                                    "text": "+ 1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-39",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "int" ],
                                                                    "patching_rect": [ 295.0, 81.0, 29.5, 22.0 ],
                                                                    "text": "!- 1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-22",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 3,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 17.0, 953.0, 62.0, 22.0 ],
                                                                    "text": "switch 2 2"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-17",
                                                                    "index": 3,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "int" ],
                                                                    "patching_rect": [ 295.0, 10.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-14",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "float" ],
                                                                    "patching_rect": [ 538.0, 550.0, 29.0, 22.0 ],
                                                                    "text": "thru"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-9",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "float" ],
                                                                    "patching_rect": [ 436.0, 550.0, 29.0, 22.0 ],
                                                                    "text": "thru"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-6",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 4,
                                                                    "outlettype": [ "", "", "", "" ],
                                                                    "patching_rect": [ 787.0, 122.94999999999999, 56.0, 22.0 ],
                                                                    "restore": {
                                                                        "A-SclMax": [ 3.373450756072998 ],
                                                                        "A-SclMin": [ -1.3229886293411255 ]
                                                                    },
                                                                    "text": "autopattr",
                                                                    "varname": "u414003394"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-27",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "" ],
                                                                    "patching_rect": [ 969.0, 281.0, 150.0, 22.0 ],
                                                                    "text": "combine name -scalenorm"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-26",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 969.0, 311.0, 75.0, 22.0 ],
                                                                    "text": "prepend title"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-25",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 677.0, 311.0, 103.0, 22.0 ],
                                                                    "text": "prepend varname"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-21",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 824.0, 311.0, 103.0, 22.0 ],
                                                                    "text": "prepend varname"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-19",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "" ],
                                                                    "patching_rect": [ 824.0, 281.0, 134.0, 22.0 ],
                                                                    "text": "combine name -SclMax"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-18",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "" ],
                                                                    "patching_rect": [ 677.0, 281.0, 131.0, 22.0 ],
                                                                    "text": "combine name -SclMin"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-16",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 4,
                                                                    "outlettype": [ "float", "float", "int", "" ],
                                                                    "patching_rect": [ 620.0, 194.0, 76.0, 22.0 ],
                                                                    "text": "unpack f f i s"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-15",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "bang" ],
                                                                    "patching_rect": [ 584.0, 80.0, 58.0, 22.0 ],
                                                                    "text": "loadbang"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-13",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "" ],
                                                                    "patching_rect": [ 584.0, 159.0, 55.0, 22.0 ],
                                                                    "text": "zl.slice 1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-12",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "" ],
                                                                    "patching_rect": [ 584.0, 122.95, 179.0, 22.0 ],
                                                                    "text": "patcherargs"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-10",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 3,
                                                                    "outlettype": [ "float", "int", "int" ],
                                                                    "patching_rect": [ 390.0, 448.0, 104.39999399999996, 22.0 ],
                                                                    "text": "peak 0."
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-4",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 3,
                                                                    "outlettype": [ "float", "int", "int" ],
                                                                    "patching_rect": [ 288.0, 448.0, 75.0, 22.0 ],
                                                                    "text": "trough 0."
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-81",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "int" ],
                                                                    "patching_rect": [ 149.0, 218.0, 33.0, 22.0 ],
                                                                    "text": "thru"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-80",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 3,
                                                                    "outlettype": [ "int", "float", "float" ],
                                                                    "patching_rect": [ 149.0, 177.0, 55.0, 22.0 ],
                                                                    "text": "t 1 0. 0."
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-79",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "bang", "" ],
                                                                    "patching_rect": [ 149.0, 146.0, 75.0, 22.0 ],
                                                                    "text": "sel 1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-78",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 3,
                                                                    "outlettype": [ "", "", "" ],
                                                                    "patching_rect": [ 8.0, 271.0, 111.0, 22.0 ],
                                                                    "text": "t l l l"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-77",
                                                                    "linecount": 2,
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 3,
                                                                    "outlettype": [ "float", "float", "float" ],
                                                                    "patching_rect": [ 84.0, 466.0, 65.0, 35.0 ],
                                                                    "text": "unpack f f f"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-76",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 128.0, 316.0, 36.0, 22.0 ],
                                                                    "text": "gate"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-75",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 3,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 84.0, 906.0, 128.0, 22.0 ],
                                                                    "text": "pack f f f"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-74",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 3,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 252.0, 874.0, 228.0, 22.0 ],
                                                                    "text": "clip"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-73",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 3,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 229.0, 846.0, 228.0, 22.0 ],
                                                                    "text": "clip"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-72",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "" ],
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
                                                                        "rect": [ 59.0, 112.0, 472.0, 303.0 ],
                                                                        "subpatcher_template": "sebPAC-1",
                                                                        "boxes": [
                                                                            {
                                                                                "box": {
                                                                                    "id": "obj-63",
                                                                                    "maxclass": "newobj",
                                                                                    "numinlets": 1,
                                                                                    "numoutlets": 2,
                                                                                    "outlettype": [ "bang", "float" ],
                                                                                    "patching_rect": [ 278.0, 100.0, 159.0, 22.0 ],
                                                                                    "text": "t b f"
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "id": "obj-64",
                                                                                    "maxclass": "newobj",
                                                                                    "numinlets": 1,
                                                                                    "numoutlets": 2,
                                                                                    "outlettype": [ "bang", "float" ],
                                                                                    "patching_rect": [ 73.0, 100.0, 159.0, 22.0 ],
                                                                                    "text": "t b f"
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "id": "obj-65",
                                                                                    "maxclass": "newobj",
                                                                                    "numinlets": 2,
                                                                                    "numoutlets": 1,
                                                                                    "outlettype": [ "" ],
                                                                                    "patching_rect": [ 255.0, 141.0, 182.0, 22.0 ],
                                                                                    "text": "if $f1 > $f2 then $f1 else $f2"
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "id": "obj-66",
                                                                                    "maxclass": "newobj",
                                                                                    "numinlets": 2,
                                                                                    "numoutlets": 1,
                                                                                    "outlettype": [ "" ],
                                                                                    "patching_rect": [ 50.0, 141.0, 182.0, 22.0 ],
                                                                                    "text": "if $f1 < $f2 then $f1 else $f2"
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "comment": "",
                                                                                    "id": "obj-68",
                                                                                    "index": 1,
                                                                                    "maxclass": "inlet",
                                                                                    "numinlets": 0,
                                                                                    "numoutlets": 1,
                                                                                    "outlettype": [ "float" ],
                                                                                    "patching_rect": [ 158.0, 40.0, 30.0, 30.0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "comment": "",
                                                                                    "id": "obj-69",
                                                                                    "index": 2,
                                                                                    "maxclass": "inlet",
                                                                                    "numinlets": 0,
                                                                                    "numoutlets": 1,
                                                                                    "outlettype": [ "float" ],
                                                                                    "patching_rect": [ 193.0, 40.0, 30.0, 30.0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "comment": "",
                                                                                    "id": "obj-70",
                                                                                    "index": 1,
                                                                                    "maxclass": "outlet",
                                                                                    "numinlets": 1,
                                                                                    "numoutlets": 0,
                                                                                    "patching_rect": [ 50.0, 225.0, 30.0, 30.0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "comment": "",
                                                                                    "id": "obj-71",
                                                                                    "index": 2,
                                                                                    "maxclass": "outlet",
                                                                                    "numinlets": 1,
                                                                                    "numoutlets": 0,
                                                                                    "patching_rect": [ 255.0, 225.0, 30.0, 30.0 ]
                                                                                }
                                                                            }
                                                                        ],
                                                                        "lines": [
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-65", 1 ],
                                                                                    "source": [ "obj-63", 1 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-65", 0 ],
                                                                                    "source": [ "obj-63", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-66", 1 ],
                                                                                    "source": [ "obj-64", 1 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-66", 0 ],
                                                                                    "source": [ "obj-64", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-71", 0 ],
                                                                                    "source": [ "obj-65", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-70", 0 ],
                                                                                    "source": [ "obj-66", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-63", 0 ],
                                                                                    "order": 0,
                                                                                    "source": [ "obj-68", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-66", 0 ],
                                                                                    "order": 1,
                                                                                    "source": [ "obj-68", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-64", 0 ],
                                                                                    "order": 1,
                                                                                    "source": [ "obj-69", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-65", 0 ],
                                                                                    "order": 0,
                                                                                    "source": [ "obj-69", 0 ]
                                                                                }
                                                                            }
                                                                        ],
                                                                        "toolbaradditions": [ "s2n", "Modalys" ]
                                                                    },
                                                                    "patching_rect": [ 332.0, 771.0, 156.0, 22.0 ],
                                                                    "text": "p"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-67",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 3,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 206.0, 816.0, 228.0, 22.0 ],
                                                                    "text": "clip"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-53",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 6,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 130.0, 691.0, 529.0000375000002, 22.0 ],
                                                                    "text": "scale -100. 100. -1. 1."
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-52",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 6,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 107.0, 651.0, 529.0000375000002, 22.0 ],
                                                                    "text": "scale -100. 100. -1. 1."
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-49",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 6,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 84.0, 618.0, 529.0000375000002, 22.0 ],
                                                                    "text": "scale -100. 100. -1. 1."
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-36",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 3,
                                                                    "outlettype": [ "float", "float", "float" ],
                                                                    "patching_rect": [ 128.0, 359.0, 166.0, 22.0 ],
                                                                    "text": "unpack f f f"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-24",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 3,
                                                                    "numoutlets": 3,
                                                                    "outlettype": [ "float", "float", "float" ],
                                                                    "patcher": {
                                                                        "fileversion": 1,
                                                                        "appversion": {
                                                                            "major": 9,
                                                                            "minor": 1,
                                                                            "revision": 4,
                                                                            "architecture": "x64",
                                                                            "modernui": 1
                                                                        },
                                                                        "classnamespace": "dsp.gen",
                                                                        "rect": [ 714.0, 630.0, 311.0, 406.0 ],
                                                                        "subpatcher_template": "sebPAC-1",
                                                                        "boxes": [
                                                                            {
                                                                                "box": {
                                                                                    "id": "obj-3",
                                                                                    "maxclass": "newobj",
                                                                                    "numinlets": 1,
                                                                                    "numoutlets": 0,
                                                                                    "patching_rect": [ 138.0, 376.0, 35.0, 22.0 ],
                                                                                    "text": "out 2"
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "code": "a=in1;\r\nb=in2;\r\nc=in3;\r\nmin = a;\r\nmax = b;\r\nif(a>b){\r\n    min = b;\r\n    max = a;\r\n    if (c>max) max = c;\r\n    else if (min>c) min = c;\r\n    }\r\nelse {\r\n    if (c>max) max = c;\r\n    else if (min>c) min = c;\r\n    }\r\n\r\nout3=max;//max\r\nout2=-max;\r\nout1=min;//min",
                                                                                    "fontface": 0,
                                                                                    "fontname": "<Monospaced>",
                                                                                    "fontsize": 12.0,
                                                                                    "id": "obj-7",
                                                                                    "maxclass": "codebox",
                                                                                    "numinlets": 3,
                                                                                    "numoutlets": 3,
                                                                                    "outlettype": [ "", "", "" ],
                                                                                    "patching_rect": [ 11.0, 39.0, 273.0, 322.0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "id": "obj-6",
                                                                                    "maxclass": "newobj",
                                                                                    "numinlets": 1,
                                                                                    "numoutlets": 0,
                                                                                    "patching_rect": [ 265.0, 376.0, 35.0, 22.0 ],
                                                                                    "text": "out 3"
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "id": "obj-5",
                                                                                    "maxclass": "newobj",
                                                                                    "numinlets": 0,
                                                                                    "numoutlets": 1,
                                                                                    "outlettype": [ "" ],
                                                                                    "patching_rect": [ 265.0, 10.0, 28.0, 22.0 ],
                                                                                    "text": "in 3"
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "id": "obj-1",
                                                                                    "maxclass": "newobj",
                                                                                    "numinlets": 0,
                                                                                    "numoutlets": 1,
                                                                                    "outlettype": [ "" ],
                                                                                    "patching_rect": [ 11.0, 6.0, 28.0, 22.0 ],
                                                                                    "text": "in 1"
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "id": "obj-2",
                                                                                    "maxclass": "newobj",
                                                                                    "numinlets": 0,
                                                                                    "numoutlets": 1,
                                                                                    "outlettype": [ "" ],
                                                                                    "patching_rect": [ 138.0, 6.0, 28.0, 22.0 ],
                                                                                    "text": "in 2"
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "id": "obj-4",
                                                                                    "maxclass": "newobj",
                                                                                    "numinlets": 1,
                                                                                    "numoutlets": 0,
                                                                                    "patching_rect": [ 11.0, 376.0, 35.0, 22.0 ],
                                                                                    "text": "out 1"
                                                                                }
                                                                            }
                                                                        ],
                                                                        "lines": [
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-7", 0 ],
                                                                                    "source": [ "obj-1", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-7", 1 ],
                                                                                    "source": [ "obj-2", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-7", 2 ],
                                                                                    "source": [ "obj-5", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-3", 0 ],
                                                                                    "source": [ "obj-7", 1 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-4", 0 ],
                                                                                    "source": [ "obj-7", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-6", 0 ],
                                                                                    "source": [ "obj-7", 2 ]
                                                                                }
                                                                            }
                                                                        ]
                                                                    },
                                                                    "patching_rect": [ 128.0, 391.0, 166.0, 22.0 ],
                                                                    "text": "gen @t min-max-from-list"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-11",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "" ],
                                                                    "patching_rect": [ 969.0, 344.0, 77.0, 22.0 ],
                                                                    "save": [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
                                                                    "text": "thispatcher"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-20",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 372.333344, 89.0, 133.0, 20.0 ],
                                                                    "text": "#4 : name"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-8",
                                                                    "linecount": 3,
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 372.333344, 34.0, 133.0, 47.0 ],
                                                                    "text": "#3 : \nmode 0: min ≠ max \nmode 1: min = -max"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-7",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 372.333344, 10.0, 133.0, 20.0 ],
                                                                    "text": "#1 #2 : min max"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-5",
                                                                    "index": 1,
                                                                    "maxclass": "outlet",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 17.0, 1016.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-3",
                                                                    "index": 2,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 149.0, 15.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-2",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 43.0, 18.0, 49.0, 20.0 ],
                                                                    "text": "Data"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-1",
                                                                    "index": 1,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 8.0, 10.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-60",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 175.0, 82.0, 94.700012, 20.0 ],
                                                                    "text": "Normalize On"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-59",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 78.5, 178.0, 49.0, 20.0 ],
                                                                    "text": "Mode"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-56",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 355.0, 497.0, 37.0, 20.0 ],
                                                                    "text": "Max"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-55",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 244.0, 497.0, 37.0, 20.0 ],
                                                                    "text": "Min"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-50",
                                                                    "maxclass": "toggle",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "int" ],
                                                                    "parameter_enable": 0,
                                                                    "patching_rect": [ 77.75, 213.0, 24.0, 24.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-33",
                                                                    "maxclass": "live.numbox",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "float" ],
                                                                    "parameter_enable": 1,
                                                                    "patching_rect": [ 390.0, 497.0, 44.0, 15.0 ],
                                                                    "saved_attribute_attributes": {
                                                                        "valueof": {
                                                                            "parameter_longname": "0-SclMax[2]",
                                                                            "parameter_mmax": 180.0,
                                                                            "parameter_mmin": -180.0,
                                                                            "parameter_modmode": 3,
                                                                            "parameter_shortname": "SclMax-NB",
                                                                            "parameter_type": 0,
                                                                            "parameter_unitstyle": 1
                                                                        }
                                                                    },
                                                                    "varname": "A-SclMax"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-32",
                                                                    "maxclass": "live.numbox",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "float" ],
                                                                    "parameter_enable": 1,
                                                                    "patching_rect": [ 288.0, 497.0, 44.0, 15.0 ],
                                                                    "saved_attribute_attributes": {
                                                                        "valueof": {
                                                                            "parameter_longname": "0-SclMin[2]",
                                                                            "parameter_mmax": 180.0,
                                                                            "parameter_mmin": -180.0,
                                                                            "parameter_modmode": 3,
                                                                            "parameter_shortname": "SclMin-NB",
                                                                            "parameter_type": 0,
                                                                            "parameter_unitstyle": 1
                                                                        }
                                                                    },
                                                                    "varname": "A-SclMin"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-29",
                                                                    "maxclass": "toggle",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "int" ],
                                                                    "parameter_enable": 0,
                                                                    "patching_rect": [ 149.0, 80.0, 24.0, 24.0 ]
                                                                }
                                                            }
                                                        ],
                                                        "lines": [
                                                            {
                                                                "patchline": {
                                                                    "color": [ 0.501961, 0.0, 0.0, 1.0 ],
                                                                    "destination": [ "obj-78", 0 ],
                                                                    "source": [ "obj-1", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-33", 0 ],
                                                                    "source": [ "obj-10", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-13", 0 ],
                                                                    "source": [ "obj-12", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-44", 1 ],
                                                                    "order": 0,
                                                                    "source": [ "obj-126", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-44", 0 ],
                                                                    "order": 0,
                                                                    "source": [ "obj-126", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-49", 2 ],
                                                                    "order": 4,
                                                                    "source": [ "obj-126", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-49", 1 ],
                                                                    "order": 4,
                                                                    "source": [ "obj-126", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-52", 2 ],
                                                                    "order": 3,
                                                                    "source": [ "obj-126", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-52", 1 ],
                                                                    "order": 3,
                                                                    "source": [ "obj-126", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-53", 2 ],
                                                                    "order": 2,
                                                                    "source": [ "obj-126", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-53", 1 ],
                                                                    "order": 2,
                                                                    "source": [ "obj-126", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-54", 0 ],
                                                                    "order": 1,
                                                                    "source": [ "obj-126", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-57", 0 ],
                                                                    "order": 1,
                                                                    "source": [ "obj-126", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-16", 0 ],
                                                                    "order": 1,
                                                                    "source": [ "obj-13", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-41", 0 ],
                                                                    "order": 0,
                                                                    "source": [ "obj-13", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-49", 4 ],
                                                                    "order": 2,
                                                                    "source": [ "obj-14", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-52", 4 ],
                                                                    "order": 1,
                                                                    "source": [ "obj-14", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-53", 4 ],
                                                                    "order": 0,
                                                                    "source": [ "obj-14", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-72", 1 ],
                                                                    "order": 3,
                                                                    "source": [ "obj-14", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-12", 0 ],
                                                                    "source": [ "obj-15", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-14", 0 ],
                                                                    "source": [ "obj-16", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-18", 0 ],
                                                                    "order": 2,
                                                                    "source": [ "obj-16", 3 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-19", 0 ],
                                                                    "order": 1,
                                                                    "source": [ "obj-16", 3 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-27", 0 ],
                                                                    "order": 0,
                                                                    "source": [ "obj-16", 3 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-50", 0 ],
                                                                    "source": [ "obj-16", 2 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-9", 0 ],
                                                                    "source": [ "obj-16", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-39", 0 ],
                                                                    "source": [ "obj-17", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-25", 0 ],
                                                                    "source": [ "obj-18", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-21", 0 ],
                                                                    "source": [ "obj-19", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-33", 0 ],
                                                                    "source": [ "obj-21", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "color": [ 0.501961, 0.0, 0.0, 1.0 ],
                                                                    "destination": [ "obj-5", 0 ],
                                                                    "source": [ "obj-22", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-50", 0 ],
                                                                    "source": [ "obj-23", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-10", 0 ],
                                                                    "source": [ "obj-24", 2 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-4", 0 ],
                                                                    "source": [ "obj-24", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-32", 0 ],
                                                                    "source": [ "obj-25", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-11", 0 ],
                                                                    "source": [ "obj-26", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-26", 0 ],
                                                                    "source": [ "obj-27", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-35", 0 ],
                                                                    "source": [ "obj-28", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-79", 0 ],
                                                                    "source": [ "obj-29", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-29", 0 ],
                                                                    "source": [ "obj-3", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-67", 0 ],
                                                                    "source": [ "obj-30", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-75", 0 ],
                                                                    "source": [ "obj-30", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-73", 0 ],
                                                                    "source": [ "obj-31", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-75", 1 ],
                                                                    "source": [ "obj-31", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-126", 0 ],
                                                                    "source": [ "obj-32", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-126", 1 ],
                                                                    "source": [ "obj-33", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-74", 0 ],
                                                                    "source": [ "obj-34", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-75", 2 ],
                                                                    "source": [ "obj-34", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-37", 0 ],
                                                                    "source": [ "obj-35", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-24", 2 ],
                                                                    "source": [ "obj-36", 2 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-24", 1 ],
                                                                    "source": [ "obj-36", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-24", 0 ],
                                                                    "source": [ "obj-36", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-30", 0 ],
                                                                    "order": 2,
                                                                    "source": [ "obj-37", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-31", 0 ],
                                                                    "order": 1,
                                                                    "source": [ "obj-37", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-34", 0 ],
                                                                    "order": 0,
                                                                    "source": [ "obj-37", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-40", 0 ],
                                                                    "source": [ "obj-39", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-32", 0 ],
                                                                    "source": [ "obj-4", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-22", 0 ],
                                                                    "order": 1,
                                                                    "source": [ "obj-40", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-47", 0 ],
                                                                    "order": 0,
                                                                    "source": [ "obj-40", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-42", 1 ],
                                                                    "source": [ "obj-41", 0 ]
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
                                                                    "destination": [ "obj-45", 0 ],
                                                                    "source": [ "obj-43", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-43", 1 ],
                                                                    "source": [ "obj-44", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-46", 0 ],
                                                                    "source": [ "obj-45", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-42", 0 ],
                                                                    "source": [ "obj-47", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-43", 0 ],
                                                                    "source": [ "obj-47", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-30", 1 ],
                                                                    "source": [ "obj-49", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-126", 2 ],
                                                                    "source": [ "obj-50", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-31", 1 ],
                                                                    "source": [ "obj-52", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-34", 1 ],
                                                                    "source": [ "obj-53", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-75", 0 ],
                                                                    "source": [ "obj-67", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-67", 2 ],
                                                                    "order": 2,
                                                                    "source": [ "obj-72", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-67", 1 ],
                                                                    "order": 2,
                                                                    "source": [ "obj-72", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-73", 2 ],
                                                                    "order": 1,
                                                                    "source": [ "obj-72", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-73", 1 ],
                                                                    "order": 1,
                                                                    "source": [ "obj-72", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-74", 2 ],
                                                                    "order": 0,
                                                                    "source": [ "obj-72", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-74", 1 ],
                                                                    "order": 0,
                                                                    "source": [ "obj-72", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-75", 1 ],
                                                                    "source": [ "obj-73", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-75", 2 ],
                                                                    "source": [ "obj-74", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-22", 2 ],
                                                                    "source": [ "obj-75", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-36", 0 ],
                                                                    "source": [ "obj-76", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-49", 0 ],
                                                                    "source": [ "obj-77", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-52", 0 ],
                                                                    "source": [ "obj-77", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-53", 0 ],
                                                                    "source": [ "obj-77", 2 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-22", 1 ],
                                                                    "source": [ "obj-78", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-76", 1 ],
                                                                    "source": [ "obj-78", 2 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-77", 0 ],
                                                                    "source": [ "obj-78", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-80", 0 ],
                                                                    "source": [ "obj-79", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-81", 0 ],
                                                                    "midpoints": [ 214.5, 210.03125, 158.5, 210.03125 ],
                                                                    "source": [ "obj-79", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-10", 1 ],
                                                                    "source": [ "obj-80", 2 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-4", 1 ],
                                                                    "source": [ "obj-80", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-81", 0 ],
                                                                    "source": [ "obj-80", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-76", 0 ],
                                                                    "source": [ "obj-81", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-49", 3 ],
                                                                    "order": 2,
                                                                    "source": [ "obj-9", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-52", 3 ],
                                                                    "order": 1,
                                                                    "source": [ "obj-9", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-53", 3 ],
                                                                    "order": 0,
                                                                    "source": [ "obj-9", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-72", 0 ],
                                                                    "order": 3,
                                                                    "source": [ "obj-9", 0 ]
                                                                }
                                                            }
                                                        ],
                                                        "toolbaradditions": [ "s2n", "Modalys", "Gestural-Sound-Toolkit" ]
                                                    },
                                                    "patching_rect": [ 68.0, 317.0, 161.0, 22.0 ],
                                                    "text": "p gst.scalenorme -1 1 0 A",
                                                    "varname": "acc"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "B data [list of 3 floats]",
                                                    "id": "obj-3",
                                                    "index": 2,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 113.0, 60.0, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-11",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 476.0, 591.0, 54.0, 22.0 ],
                                                    "text": "deferlow"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-27",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 476.0, 562.0, 121.0, 22.0 ],
                                                    "text": "r #0-mubu-scroll"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-197",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "", "" ],
                                                    "patching_rect": [ 650.0, 160.0, 264.0, 22.0 ],
                                                    "text": "getattr bounds"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 11.0,
                                                    "id": "obj-195",
                                                    "maxclass": "newobj",
                                                    "numinlets": 8,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "", "" ],
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
                                                        "rect": [ 267.0, 102.0, 217.0, 330.0 ],
                                                        "openinpresentation": 1,
                                                        "boxes": [
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-30",
                                                                    "index": 2,
                                                                    "maxclass": "outlet",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 804.0, 193.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-31",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 828.0, 133.0, 36.0, 19.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 183.0, 24.5, 25.0, 19.0 ],
                                                                    "text": "clip"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-32",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 804.0, 80.0, 41.0, 22.0 ],
                                                                    "text": "set $1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "annotation": "@clip",
                                                                    "annotation_name": "@clip",
                                                                    "hint": "@clip",
                                                                    "id": "obj-33",
                                                                    "maxclass": "live.toggle",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "parameter_enable": 1,
                                                                    "patching_rect": [ 804.0, 133.0, 15.0, 15.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 166.0, 26.5, 15.0, 15.0 ],
                                                                    "saved_attribute_attributes": {
                                                                        "valueof": {
                                                                            "parameter_enum": [ "off", "on" ],
                                                                            "parameter_initial": [ 0 ],
                                                                            "parameter_initial_enable": 1,
                                                                            "parameter_linknames": 1,
                                                                            "parameter_longname": "clip[1]",
                                                                            "parameter_mmax": 1,
                                                                            "parameter_modmode": 0,
                                                                            "parameter_shortname": "clip",
                                                                            "parameter_type": 2
                                                                        }
                                                                    },
                                                                    "varname": "clip"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-34",
                                                                    "index": 7,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 804.0, 31.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-5",
                                                                    "index": 3,
                                                                    "maxclass": "outlet",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 896.0, 193.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-25",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 920.0, 133.0, 36.0, 19.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 178.0, 4.0, 36.0, 19.0 ],
                                                                    "text": "mode"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-26",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 896.0, 80.0, 41.0, 22.0 ],
                                                                    "text": "set $1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "annotation": "\"@mode 1 = sup[abs(min or max)]\"",
                                                                    "annotation_name": "@mode 1 = sup[abs(min or max)]",
                                                                    "hint": "\"@mode 1 = sup[abs(min or max)]\"",
                                                                    "id": "obj-29",
                                                                    "maxclass": "live.toggle",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "parameter_enable": 1,
                                                                    "patching_rect": [ 896.0, 133.0, 15.0, 15.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 166.0, 6.0, 15.0, 15.0 ],
                                                                    "saved_attribute_attributes": {
                                                                        "valueof": {
                                                                            "parameter_enum": [ "off", "on" ],
                                                                            "parameter_initial": [ 1 ],
                                                                            "parameter_initial_enable": 1,
                                                                            "parameter_linknames": 1,
                                                                            "parameter_longname": "mode",
                                                                            "parameter_mmax": 1,
                                                                            "parameter_modmode": 0,
                                                                            "parameter_shortname": "mode",
                                                                            "parameter_type": 2
                                                                        }
                                                                    },
                                                                    "varname": "mode"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-57",
                                                                    "index": 8,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 896.0, 31.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-18",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 553.0, 252.0, 112.0, 19.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 86.5, 84.66666666666669, 69.0, 19.0 ],
                                                                    "text": "B max value"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "bgcolor": [ 0.501961, 0.501961, 0.501961, 1.0 ],
                                                                    "fontname": "Arial",
                                                                    "fontsize": 12.0,
                                                                    "format": 6,
                                                                    "id": "obj-19",
                                                                    "maxclass": "flonum",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "bang" ],
                                                                    "parameter_enable": 0,
                                                                    "parameter_mappable": 0,
                                                                    "patching_rect": [ 482.0, 250.5, 69.0, 22.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 10.0, 83.16666666666667, 51.0, 22.0 ],
                                                                    "saved_attribute_attributes": {
                                                                        "bgcolor": {
                                                                            "expression": "themecolor.theme_accentcolor"
                                                                        }
                                                                    },
                                                                    "triangle": 0
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "bgcolor": [ 0.501961, 0.501961, 0.501961, 1.0 ],
                                                                    "fontname": "Arial",
                                                                    "fontsize": 12.0,
                                                                    "format": 6,
                                                                    "id": "obj-20",
                                                                    "maxclass": "flonum",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "bang" ],
                                                                    "parameter_enable": 0,
                                                                    "parameter_mappable": 0,
                                                                    "patching_rect": [ 291.0, 250.5, 69.0, 22.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 10.0, 109.0, 51.0, 22.0 ],
                                                                    "saved_attribute_attributes": {
                                                                        "bgcolor": {
                                                                            "expression": "themecolor.theme_accentcolor"
                                                                        }
                                                                    },
                                                                    "triangle": 0
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-21",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 362.0, 252.0, 109.0, 19.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 86.5, 110.5, 66.0, 19.0 ],
                                                                    "text": "B min value"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-12",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 553.0, 192.0, 112.0, 19.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 86.5, 33.0, 68.0, 19.0 ],
                                                                    "text": "A max value"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "bgcolor": [ 0.501961, 0.501961, 0.501961, 1.0 ],
                                                                    "fontname": "Arial",
                                                                    "fontsize": 12.0,
                                                                    "format": 6,
                                                                    "id": "obj-15",
                                                                    "maxclass": "flonum",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "bang" ],
                                                                    "parameter_enable": 0,
                                                                    "parameter_mappable": 0,
                                                                    "patching_rect": [ 482.0, 190.5, 69.0, 22.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 10.0, 31.5, 51.0, 22.0 ],
                                                                    "saved_attribute_attributes": {
                                                                        "bgcolor": {
                                                                            "expression": "themecolor.theme_accentcolor"
                                                                        }
                                                                    },
                                                                    "triangle": 0
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "bgcolor": [ 0.501961, 0.501961, 0.501961, 1.0 ],
                                                                    "fontname": "Arial",
                                                                    "fontsize": 12.0,
                                                                    "format": 6,
                                                                    "id": "obj-16",
                                                                    "maxclass": "flonum",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "bang" ],
                                                                    "parameter_enable": 0,
                                                                    "parameter_mappable": 0,
                                                                    "patching_rect": [ 291.0, 190.5, 69.0, 22.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 10.0, 57.333333333333336, 51.0, 22.0 ],
                                                                    "saved_attribute_attributes": {
                                                                        "bgcolor": {
                                                                            "expression": "themecolor.theme_accentcolor"
                                                                        }
                                                                    },
                                                                    "triangle": 0
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-17",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 362.0, 192.0, 109.0, 19.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 86.5, 58.83333333333334, 65.0, 19.0 ],
                                                                    "text": "A min value"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-9",
                                                                    "index": 5,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 604.0, 31.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-10",
                                                                    "index": 4,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "float" ],
                                                                    "patching_rect": [ 547.0, 31.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-7",
                                                                    "index": 3,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 482.0, 31.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-6",
                                                                    "index": 2,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "float" ],
                                                                    "patching_rect": [ 425.0, 31.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-2",
                                                                    "index": 1,
                                                                    "maxclass": "outlet",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 708.5, 193.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-36",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 734.0, 133.0, 26.0, 19.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 132.0, 4.0, 27.0, 19.0 ],
                                                                    "text": "byp"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-38",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 709.0, 80.0, 41.0, 22.0 ],
                                                                    "text": "set $1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "annotation": "@bypass",
                                                                    "annotation_name": "@bypass",
                                                                    "hint": "@bypass",
                                                                    "id": "obj-39",
                                                                    "maxclass": "live.toggle",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "parameter_enable": 1,
                                                                    "patching_rect": [ 709.0, 133.0, 15.0, 15.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 120.0, 6.0, 15.0, 15.0 ],
                                                                    "saved_attribute_attributes": {
                                                                        "valueof": {
                                                                            "parameter_enum": [ "off", "on" ],
                                                                            "parameter_initial": [ 0.0 ],
                                                                            "parameter_initial_enable": 1,
                                                                            "parameter_linknames": 1,
                                                                            "parameter_longname": "bypass",
                                                                            "parameter_mmax": 1,
                                                                            "parameter_modmode": 0,
                                                                            "parameter_shortname": "bypass",
                                                                            "parameter_type": 2
                                                                        }
                                                                    },
                                                                    "varname": "bypass"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-40",
                                                                    "index": 6,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "int" ],
                                                                    "patching_rect": [ 709.0, 31.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-27",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 3,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 13.0, 189.0, 84.0, 22.0 ],
                                                                    "text": "pak bounds f f"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-24",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 13.0, 230.0, 113.0, 21.0 ],
                                                                    "text": "s #0-mubu-scroll"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-23",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 4,
                                                                    "outlettype": [ "", "", "", "" ],
                                                                    "patching_rect": [ 311.0, 28.0, 56.0, 22.0 ],
                                                                    "restore": {
                                                                        "bypass": [ 0.0 ],
                                                                        "clip": [ 0.0 ],
                                                                        "maxMonitor": [ 1.0 ],
                                                                        "minMonitor": [ -1.0 ],
                                                                        "mode": [ 1.0 ]
                                                                    },
                                                                    "text": "autopattr",
                                                                    "varname": "u933006469"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-28",
                                                                    "index": 1,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 45.0, 31.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-202",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 206.0, 92.0, 41.0, 22.0 ],
                                                                    "text": "set $1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-201",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 45.0, 92.0, 41.0, 22.0 ],
                                                                    "text": "set $1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-198",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "float", "float" ],
                                                                    "patching_rect": [ 45.0, 66.0, 180.0, 22.0 ],
                                                                    "text": "unpack f f"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-4",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 255.0, 126.0, 112.0, 19.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 88.0, 170.0, 112.0, 19.0 ],
                                                                    "text": "Max value for display"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "annotation": "@bounds",
                                                                    "annotation_name": "@bounds",
                                                                    "fontsize": 12.0,
                                                                    "hint": "@bounds",
                                                                    "id": "obj-14",
                                                                    "maxclass": "live.numbox",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "float" ],
                                                                    "parameter_enable": 1,
                                                                    "patching_rect": [ 206.0, 126.0, 53.0, 18.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 10.0, 172.0, 53.0, 18.0 ],
                                                                    "saved_attribute_attributes": {
                                                                        "valueof": {
                                                                            "parameter_linknames": 1,
                                                                            "parameter_longname": "maxMonitor",
                                                                            "parameter_mmax": 100.0,
                                                                            "parameter_mmin": -100.0,
                                                                            "parameter_modmode": 3,
                                                                            "parameter_shortname": "maxMonitor",
                                                                            "parameter_type": 0,
                                                                            "parameter_unitstyle": 1
                                                                        }
                                                                    },
                                                                    "varname": "maxMonitor"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "annotation": "@bounds",
                                                                    "annotation_name": "@bounds",
                                                                    "fontsize": 12.0,
                                                                    "hint": "@bounds",
                                                                    "id": "obj-13",
                                                                    "maxclass": "live.numbox",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "float" ],
                                                                    "parameter_enable": 1,
                                                                    "patching_rect": [ 45.0, 126.0, 53.0, 18.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 10.0, 194.0, 53.0, 18.0 ],
                                                                    "saved_attribute_attributes": {
                                                                        "valueof": {
                                                                            "parameter_linknames": 1,
                                                                            "parameter_longname": "minMonitor",
                                                                            "parameter_mmax": 100.0,
                                                                            "parameter_mmin": -100.0,
                                                                            "parameter_modmode": 3,
                                                                            "parameter_shortname": "minMonitor",
                                                                            "parameter_type": 0,
                                                                            "parameter_unitstyle": 1
                                                                        }
                                                                    },
                                                                    "varname": "minMonitor"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-1",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 99.0, 127.0, 109.0, 19.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 88.0, 191.0, 109.0, 19.0 ],
                                                                    "text": "Min value for display"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "bgcolor": [ 1.0, 1.0, 1.0, 0.4 ],
                                                                    "fontsize": 14.0,
                                                                    "id": "obj-8",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 27.0, 341.0, 230.0, 22.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 2.0, 222.0, 210.0, 22.0 ],
                                                                    "text": "Help [-1. +1 normalization]"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontsize": 12.0,
                                                                    "id": "obj-3",
                                                                    "linecount": 5,
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 27.0, 373.0, 284.0, 74.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_linecount": 5,
                                                                    "presentation_rect": [ 2.0, 246.0, 210.0, 74.0 ],
                                                                    "text": "@input: \n   - [float float float]\n\n@output: \n   - [float float float] normalized [-1. +1]"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "bgcolor": [ 1.0, 1.0, 1.0, 0.4 ],
                                                                    "fontsize": 14.0,
                                                                    "id": "obj-11",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 43.0, 5.0, 77.0, 22.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 2.0, 141.0, 210.0, 22.0 ],
                                                                    "saved_attribute_attributes": {
                                                                        "bubble_bgcolor": {
                                                                            "expression": "themecolor.theme_bubble_bgcolor"
                                                                        }
                                                                    },
                                                                    "text": "Monitoring"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "bgcolor": [ 1.0, 1.0, 1.0, 0.4 ],
                                                                    "fontsize": 14.0,
                                                                    "id": "obj-22",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 390.0, 218.0, 115.0, 22.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 2.0, 2.5, 210.0, 22.0 ],
                                                                    "saved_attribute_attributes": {
                                                                        "bubble_bgcolor": {
                                                                            "expression": "themecolor.theme_bubble_bgcolor"
                                                                        }
                                                                    },
                                                                    "text": "Measured values"
                                                                }
                                                            }
                                                        ],
                                                        "lines": [
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-20", 0 ],
                                                                    "source": [ "obj-10", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-27", 1 ],
                                                                    "source": [ "obj-13", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-27", 2 ],
                                                                    "source": [ "obj-14", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-201", 0 ],
                                                                    "source": [ "obj-198", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-202", 0 ],
                                                                    "source": [ "obj-198", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-13", 0 ],
                                                                    "source": [ "obj-201", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-14", 0 ],
                                                                    "source": [ "obj-202", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-29", 0 ],
                                                                    "source": [ "obj-26", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-24", 0 ],
                                                                    "source": [ "obj-27", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-198", 0 ],
                                                                    "source": [ "obj-28", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-5", 0 ],
                                                                    "source": [ "obj-29", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-33", 0 ],
                                                                    "source": [ "obj-32", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-30", 0 ],
                                                                    "source": [ "obj-33", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-32", 0 ],
                                                                    "source": [ "obj-34", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-39", 0 ],
                                                                    "source": [ "obj-38", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-2", 0 ],
                                                                    "source": [ "obj-39", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-38", 0 ],
                                                                    "source": [ "obj-40", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-26", 0 ],
                                                                    "source": [ "obj-57", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-16", 0 ],
                                                                    "source": [ "obj-6", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-15", 0 ],
                                                                    "source": [ "obj-7", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-19", 0 ],
                                                                    "source": [ "obj-9", 0 ]
                                                                }
                                                            }
                                                        ],
                                                        "toolbaradditions": [ "s2n", "Modalys", "Gestural-Sound-Toolkit" ],
                                                        "saved_attribute_attributes": {
                                                            "editing_bgcolor": {
                                                                "expression": "themecolor.theme_editing_bgcolor"
                                                            },
                                                            "locked_bgcolor": {
                                                                "expression": "themecolor.theme_locked_bgcolor"
                                                            }
                                                        }
                                                    },
                                                    "patching_rect": [ 650.0, 210.0, 404.0, 21.0 ],
                                                    "saved_attribute_attributes": {
                                                        "editing_bgcolor": {
                                                            "expression": "themecolor.theme_editing_bgcolor"
                                                        },
                                                        "locked_bgcolor": {
                                                            "expression": "themecolor.theme_locked_bgcolor"
                                                        }
                                                    },
                                                    "text": "p more",
                                                    "varname": "more"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "fontsize": 11.0,
                                                    "id": "obj-18",
                                                    "linecount": 2,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 833.0, 56.0, 89.0, 35.0 ],
                                                    "text": "mubu.scroll configuration"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "mubu.scroll configuration",
                                                    "id": "obj-17",
                                                    "index": 6,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 800.0, 60.0, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "Gyro. Norm on/off",
                                                    "id": "obj-60",
                                                    "index": 4,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 523.0, 60.0, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "Acc. Norm on/off",
                                                    "id": "obj-61",
                                                    "index": 3,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 214.0, 61.0, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "normalized A",
                                                    "id": "obj-1",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 68.0, 714.0, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "A data [list of 3 floats]",
                                                    "id": "obj-91",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 68.0, 60.0, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 13.0,
                                                    "id": "obj-57",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 15.0, 26.0, 88.0, 21.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 0.0, 1.0, 69.0, 21.0 ],
                                                    "text": "norm.multi"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "autobounds": 0,
                                                    "autoupdate": 120.0,
                                                    "bgcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                                    "bgcolordefault": 1,
                                                    "bounds": [ -1.0, 1.0 ],
                                                    "colormode": "fgcolor",
                                                    "colorpattern": [ "red", "green", "blue", "" ],
                                                    "domainruler": 0,
                                                    "domainruler_size": 35,
                                                    "fgcolor": [ 0.129412, 0.129412, 0.129412, 1.0 ],
                                                    "fgcolordefault": 1,
                                                    "first_cursor_color": [ 1.0, 0.0, 0.0, 1.0 ],
                                                    "first_cursor_size": 3,
                                                    "first_cursor_value": 0.0,
                                                    "first_cursor_visible": 0,
                                                    "id": "obj-113",
                                                    "inversed": 0,
                                                    "layout": "juxtaposed",
                                                    "length": 256,
                                                    "matrix": 0,
                                                    "maxclass": "mubu.scroll",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 579.0, 709.0, 10.0, 10.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 0.0, 40.0, 430.0, 220.0 ],
                                                    "rangeruler": 0,
                                                    "rangeruler_size": 30,
                                                    "sampleperiod": 10.0,
                                                    "second_cursor_color": [ 1.0, 0.0, 0.0, 1.0 ],
                                                    "second_cursor_size": 3,
                                                    "second_cursor_value": 0.0,
                                                    "second_cursor_visible": 0,
                                                    "shape": "lines",
                                                    "varname": "scroll",
                                                    "windresize": 1
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-14", 1 ],
                                                    "source": [ "obj-10", 3 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-195", 4 ],
                                                    "source": [ "obj-10", 2 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-195", 3 ],
                                                    "source": [ "obj-10", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-25", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-10", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-30", 2 ],
                                                    "order": 0,
                                                    "source": [ "obj-10", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-113", 0 ],
                                                    "source": [ "obj-11", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-1", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-12", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-19", 1 ],
                                                    "source": [ "obj-12", 3 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-195", 2 ],
                                                    "source": [ "obj-12", 2 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-195", 1 ],
                                                    "source": [ "obj-12", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-30", 1 ],
                                                    "order": 0,
                                                    "source": [ "obj-12", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-10", 2 ],
                                                    "order": 1,
                                                    "source": [ "obj-13", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-12", 2 ],
                                                    "order": 2,
                                                    "source": [ "obj-13", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-195", 5 ],
                                                    "order": 0,
                                                    "source": [ "obj-13", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-21", 0 ],
                                                    "source": [ "obj-13", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-15", 0 ],
                                                    "source": [ "obj-14", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-113", 0 ],
                                                    "midpoints": [ 809.5, 129.28125, 583.0, 129.28125 ],
                                                    "source": [ "obj-17", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-16", 0 ],
                                                    "source": [ "obj-19", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-34", 0 ],
                                                    "source": [ "obj-195", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-7", 0 ],
                                                    "source": [ "obj-195", 2 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-113", 0 ],
                                                    "midpoints": [ 782.0, 420.640625, 583.0, 420.640625 ],
                                                    "source": [ "obj-197", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-195", 0 ],
                                                    "source": [ "obj-197", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-6", 0 ],
                                                    "source": [ "obj-2", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-14", 0 ],
                                                    "source": [ "obj-20", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-19", 0 ],
                                                    "source": [ "obj-20", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-20", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-21", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-32", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-21", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-9", 0 ],
                                                    "source": [ "obj-23", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-113", 0 ],
                                                    "source": [ "obj-26", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-11", 0 ],
                                                    "source": [ "obj-27", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-12", 1 ],
                                                    "source": [ "obj-28", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-10", 1 ],
                                                    "source": [ "obj-29", 0 ]
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
                                                    "destination": [ "obj-113", 0 ],
                                                    "source": [ "obj-30", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-21", 0 ],
                                                    "source": [ "obj-31", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-30", 0 ],
                                                    "source": [ "obj-32", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-13", 0 ],
                                                    "source": [ "obj-34", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-40", 0 ],
                                                    "source": [ "obj-37", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-195", 0 ],
                                                    "source": [ "obj-38", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-113", 0 ],
                                                    "source": [ "obj-4", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-38", 0 ],
                                                    "source": [ "obj-40", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-4", 0 ],
                                                    "source": [ "obj-5", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-10", 3 ],
                                                    "order": 1,
                                                    "source": [ "obj-6", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-12", 3 ],
                                                    "order": 2,
                                                    "source": [ "obj-6", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-195", 7 ],
                                                    "midpoints": [ 1044.5, 325.5, 1101.80859375, 325.5, 1101.80859375, 200.0, 1044.5, 200.0 ],
                                                    "order": 0,
                                                    "source": [ "obj-6", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-29", 0 ],
                                                    "source": [ "obj-60", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-28", 0 ],
                                                    "source": [ "obj-61", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-2", 0 ],
                                                    "source": [ "obj-7", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-82", 0 ],
                                                    "source": [ "obj-71", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-2", 0 ],
                                                    "source": [ "obj-72", 2 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-22", 0 ],
                                                    "source": [ "obj-72", 3 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-74", 0 ],
                                                    "source": [ "obj-72", 4 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-8", 0 ],
                                                    "source": [ "obj-72", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-73", 0 ],
                                                    "source": [ "obj-74", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-72", 0 ],
                                                    "source": [ "obj-75", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-34", 0 ],
                                                    "source": [ "obj-84", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-10", 4 ],
                                                    "order": 1,
                                                    "source": [ "obj-9", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-12", 4 ],
                                                    "order": 2,
                                                    "source": [ "obj-9", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-195", 6 ],
                                                    "order": 0,
                                                    "source": [ "obj-9", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-12", 0 ],
                                                    "source": [ "obj-91", 0 ]
                                                }
                                            }
                                        ],
                                        "toolbaradditions": [ "s2n", "Modalys", "Gestural-Sound-Toolkit" ]
                                    },
                                    "patching_rect": [ 183.0, 417.0, 434.0, 264.0 ],
                                    "varname": "_gst.norm.multi2",
                                    "viewvisibility": 1
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
                                    "patching_rect": [ 356.0, 392.0, 261.0, 22.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 29.0, 231.0, 264.0, 22.0 ],
                                    "text": "embeded <bpatcher> saves parameters."
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
                                    "jsarguments": [ "gst.norm.multi2" ],
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
                                    "destination": [ "obj-7", 1 ],
                                    "source": [ "obj-48", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "source": [ "obj-48", 0 ]
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
                    "jsarguments": [ "gst.norm.multi2" ],
                    "maxclass": "jsui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 10.0, 10.0, 337.1600341796875, 57.599853515625 ]
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
                        "rect": [ 0.0, 26.0, 768.0, 726.0 ],
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
            "obj-2::obj-7::obj-10::obj-32": [ "0-SclMin[3]", "SclMin-NB", 0 ],
            "obj-2::obj-7::obj-10::obj-33": [ "0-SclMax[3]", "SclMax-NB", 0 ],
            "obj-2::obj-7::obj-12::obj-32": [ "0-SclMin[2]", "SclMin-NB", 0 ],
            "obj-2::obj-7::obj-12::obj-33": [ "0-SclMax[2]", "SclMax-NB", 0 ],
            "obj-2::obj-7::obj-195::obj-13": [ "minMonitor", "minMonitor", 0 ],
            "obj-2::obj-7::obj-195::obj-14": [ "maxMonitor", "maxMonitor", 0 ],
            "obj-2::obj-7::obj-195::obj-29": [ "mode", "mode", 0 ],
            "obj-2::obj-7::obj-195::obj-33": [ "clip[1]", "clip", 0 ],
            "obj-2::obj-7::obj-195::obj-39": [ "bypass", "bypass", 0 ],
            "obj-2::obj-7::obj-2": [ "live.toggle[1]", "mode", 0 ],
            "obj-2::obj-7::obj-28": [ "live.text[28]", "live.text", 0 ],
            "obj-2::obj-7::obj-29": [ "live.text[25]", "live.text", 0 ],
            "obj-2::obj-7::obj-31": [ "live.text[26]", "live.text", 0 ],
            "obj-2::obj-7::obj-34": [ "live.toggle", "bypass", 0 ],
            "obj-2::obj-7::obj-37": [ "live.text[27]", "live.text", 0 ],
            "obj-2::obj-7::obj-9": [ "_clip[1]", "clip", 0 ],
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
            "obj-6::obj-8::obj-195::obj-29": [ "mode[1]", "mode", 0 ],
            "obj-6::obj-8::obj-195::obj-33": [ "clip", "clip", 0 ],
            "obj-6::obj-8::obj-195::obj-39": [ "bypass[1]", "bypass", 0 ],
            "obj-6::obj-8::obj-2": [ "_mode", "mode", 0 ],
            "obj-6::obj-8::obj-28": [ "live.text[30]", "live.text", 0 ],
            "obj-6::obj-8::obj-29": [ "live.text[31]", "live.text", 0 ],
            "obj-6::obj-8::obj-31": [ "live.text[29]", "live.text", 0 ],
            "obj-6::obj-8::obj-34": [ "live.toggle[3]", "bypass", 0 ],
            "obj-6::obj-8::obj-37": [ "live.text[32]", "live.text", 0 ],
            "obj-6::obj-8::obj-9": [ "_clip", "clip", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "parameter_overrides": {
                "obj-2::obj-48::obj-71": {
                    "parameter_longname": "live.toggle[9]"
                },
                "obj-2::obj-48::obj-80": {
                    "parameter_longname": "live.text[20]"
                },
                "obj-2::obj-7::obj-195::obj-33": {
                    "parameter_longname": "clip[1]"
                },
                "obj-2::obj-7::obj-2": {
                    "parameter_longname": "live.toggle[1]"
                },
                "obj-2::obj-7::obj-9": {
                    "parameter_longname": "_clip[1]"
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
                "obj-6::obj-8::obj-195::obj-29": {
                    "parameter_longname": "mode[1]"
                },
                "obj-6::obj-8::obj-195::obj-39": {
                    "parameter_longname": "bypass[1]"
                },
                "obj-6::obj-8::obj-28": {
                    "parameter_longname": "live.text[30]"
                },
                "obj-6::obj-8::obj-29": {
                    "parameter_longname": "live.text[31]"
                },
                "obj-6::obj-8::obj-31": {
                    "parameter_longname": "live.text[29]"
                },
                "obj-6::obj-8::obj-34": {
                    "parameter_longname": "live.toggle[3]"
                },
                "obj-6::obj-8::obj-37": {
                    "parameter_longname": "live.text[32]"
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0,
        "toolbaradditions": [ "s2n", "Modalys", "Gestural-Sound-Toolkit" ]
    }
}