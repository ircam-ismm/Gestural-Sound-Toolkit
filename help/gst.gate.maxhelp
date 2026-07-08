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
        "rect": [ 34.0, 102.0, 503.0, 986.0 ],
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
                        "rect": [ 34.0, 128.0, 503.0, 960.0 ],
                        "default_fontsize": 13.0,
                        "gridsize": [ 5.0, 5.0 ],
                        "showontab": 1,
                        "boxes": [
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "obj-1",
                                    "maxclass": "live.text",
                                    "mode": 0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "parameter_enable": 1,
                                    "parameter_mappable": 0,
                                    "patching_rect": [ 311.0, 31.0, 163.0, 18.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 201.0, 172.0, 124.0, 17.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "val1", "val2" ],
                                            "parameter_invisible": 4,
                                            "parameter_longname": "live.text[27]",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "live.text",
                                            "parameter_type": 2
                                        }
                                    },
                                    "text": "movement analysis.maxpat",
                                    "varname": "live.text[2]"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.0,
                                    "hidden": 1,
                                    "id": "obj-58",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
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
                                        "rect": [ 977.0, 472.0, 290.0, 244.0 ],
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-14",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 86.0, 141.0, 53.0, 22.0 ],
                                                    "text": "pcontrol"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-13",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 86.0, 111.0, 117.0, 22.0 ],
                                                    "text": "prepend loadunique"
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
                                                    "patching_rect": [ 86.0, 70.0, 30.0, 30.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-13", 0 ],
                                                    "source": [ "obj-1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-14", 0 ],
                                                    "source": [ "obj-13", 0 ]
                                                }
                                            }
                                        ],
                                        "toolbaradditions": [ "s2n", "Modalys", "Gestural-Sound-Toolkit" ]
                                    },
                                    "patching_rect": [ 479.0, 32.0, 58.0, 17.0 ],
                                    "text": "p load-helpfile"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 422.0, 581.0, 80.0, 23.0 ],
                                    "text": "bounds 0. 1."
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.0,
                                    "hidden": 1,
                                    "id": "obj-13",
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
                                    "patching_rect": [ 343.24999999999994, 122.0, 102.0, 26.0 ],
                                    "text": "p load&start readall overview.mubu"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 141.24999999999994, 582.0, 76.0, 21.0 ],
                                    "text": "float control"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 22.249999999999943, 582.0, 34.0, 21.0 ],
                                    "text": "data"
                                }
                            },
                            {
                                "box": {
                                    "bgmode": 0,
                                    "border": 1,
                                    "clickthrough": 0,
                                    "embed": 1,
                                    "enablehscroll": 0,
                                    "enablevscroll": 0,
                                    "id": "obj-6",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "gst.display.maxpat",
                                    "numinlets": 4,
                                    "numoutlets": 1,
                                    "offset": [ 0.0, 0.0 ],
                                    "outlettype": [ "" ],
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
                                        "rect": [ 34.0, 93.0, 127.0, 122.0 ],
                                        "openinpresentation": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-31",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 444.0, 140.0, 66.0, 22.0 ],
                                                    "text": "route done"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-25",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 491.0, 214.0, 111.0, 22.0 ],
                                                    "text": "s #0-mubu-scroll"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-29",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 491.0, 178.0, 104.0, 22.0 ],
                                                    "text": "routepass bounds"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-30",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 391.0, 113.0, 72.0, 22.0 ],
                                                    "text": "patcherargs"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "mubu.scroll configuration",
                                                    "id": "obj-3",
                                                    "index": 4,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 373.0, 43.5, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 11.0,
                                                    "id": "obj-11",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 315.0, 267.0, 50.0, 21.0 ],
                                                    "text": "deferlow"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 11.0,
                                                    "id": "obj-12",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 315.0, 240.0, 161.0, 21.0 ],
                                                    "text": "loadmess resizetowindowrect 4"
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
                                                    "patching_rect": [ 300.0, 215.0, 120.0, 21.0 ],
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
                                                    "patching_rect": [ 141.0, 119.5, 35.0, 22.0 ],
                                                    "text": "open"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-13",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 141.0, 149.5, 51.0, 22.0 ],
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
                                                    "patching_rect": [ 141.0, 98.5, 54.0, 15.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 90.0, 5.0, 33.0, 15.0 ],
                                                    "saved_attribute_attributes": {
                                                        "valueof": {
                                                            "parameter_enum": [ "val1", "val2" ],
                                                            "parameter_initial": [ 0.0 ],
                                                            "parameter_initial_enable": 1,
                                                            "parameter_invisible": 4,
                                                            "parameter_longname": "live.text[14]",
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
                                                    "id": "obj-197",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "", "" ],
                                                    "patching_rect": [ 254.5, 45.0, 85.0, 22.0 ],
                                                    "text": "getattr bounds"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-52",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 270.0, 178.0, 54.0, 22.0 ],
                                                    "text": "deferlow"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-53",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 270.0, 149.0, 109.0, 22.0 ],
                                                    "text": "r #0-mubu-scroll"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "max",
                                                    "id": "obj-26",
                                                    "index": 3,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 222.0, 43.5, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "min",
                                                    "id": "obj-9",
                                                    "index": 2,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 195.0, 43.5, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-8",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
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
                                                        "rect": [ 134.0, 174.0, 214.0, 82.0 ],
                                                        "openinpresentation": 1,
                                                        "boxes": [
                                                            {
                                                                "box": {
                                                                    "id": "obj-1",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 3,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 45.0, 199.0, 103.0, 22.0 ],
                                                                    "text": "pak bounds f f"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-21",
                                                                    "linecount": 2,
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 45.0, 240.0, 94.0, 33.0 ],
                                                                    "text": "s #0-mubu-scroll"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-28",
                                                                    "index": 3,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 386.0, 6.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-202",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 248.0, 104.0, 41.0, 22.0 ],
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
                                                                    "patching_rect": [ 87.0, 104.0, 41.0, 22.0 ],
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
                                                                    "patching_rect": [ 87.0, 78.0, 180.0, 22.0 ],
                                                                    "text": "unpack f f"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-31",
                                                                    "linecount": 2,
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 297.0, 138.0, 102.0, 31.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 62.0, 32.0, 112.0, 19.0 ],
                                                                    "text": "Max value for display"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "annotation": "@bounds",
                                                                    "annotation_name": "@bounds",
                                                                    "fontsize": 12.0,
                                                                    "hint": "@bounds",
                                                                    "id": "obj-34",
                                                                    "maxclass": "live.numbox",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "float" ],
                                                                    "parameter_enable": 1,
                                                                    "patching_rect": [ 248.0, 138.0, 53.0, 18.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 3.0, 28.0, 53.0, 18.0 ],
                                                                    "saved_attribute_attributes": {
                                                                        "valueof": {
                                                                            "parameter_linknames": 1,
                                                                            "parameter_longname": "maxMonitor[4]",
                                                                            "parameter_mmax": 100.0,
                                                                            "parameter_mmin": -100.0,
                                                                            "parameter_modmode": 3,
                                                                            "parameter_shortname": "maxMonitor",
                                                                            "parameter_type": 0,
                                                                            "parameter_unitstyle": 1
                                                                        }
                                                                    },
                                                                    "varname": "maxMonitor[4]"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontsize": 12.0,
                                                                    "id": "obj-37",
                                                                    "maxclass": "live.numbox",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "float" ],
                                                                    "parameter_enable": 1,
                                                                    "patching_rect": [ 87.0, 138.0, 53.0, 18.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 3.0, 53.0, 53.0, 18.0 ],
                                                                    "saved_attribute_attributes": {
                                                                        "valueof": {
                                                                            "parameter_linknames": 1,
                                                                            "parameter_longname": "minMonitor[4]",
                                                                            "parameter_mmax": 100.0,
                                                                            "parameter_mmin": -100.0,
                                                                            "parameter_modmode": 3,
                                                                            "parameter_shortname": "minMonitor",
                                                                            "parameter_type": 0,
                                                                            "parameter_unitstyle": 1
                                                                        }
                                                                    },
                                                                    "varname": "minMonitor[4]"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-38",
                                                                    "linecount": 2,
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 141.0, 139.0, 100.0, 31.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 62.0, 57.0, 109.0, 19.0 ],
                                                                    "text": "Min value for display"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-3",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 4,
                                                                    "outlettype": [ "", "", "", "" ],
                                                                    "patching_rect": [ 196.5, 205.0, 56.0, 22.0 ],
                                                                    "restore": {
                                                                        "maxMonitor[4]": [ 3.700000047683716 ],
                                                                        "minMonitor[4]": [ -2.0 ]
                                                                    },
                                                                    "text": "autopattr",
                                                                    "varname": "u933006469"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-15",
                                                                    "index": 2,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 176.5, 6.0, 25.0, 25.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-12",
                                                                    "index": 1,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 9.5, 6.0, 25.0, 25.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "bgcolor": [ 1.0, 1.0, 1.0, 0.4 ],
                                                                    "fontname": "Arial",
                                                                    "fontsize": 14.0,
                                                                    "id": "obj-9",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 9.5, 37.0, 120.0, 22.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 3.0, 4.0, 209.0, 22.0 ],
                                                                    "text": "Monitoring"
                                                                }
                                                            }
                                                        ],
                                                        "lines": [
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-21", 0 ],
                                                                    "source": [ "obj-1", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-37", 0 ],
                                                                    "source": [ "obj-12", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-34", 0 ],
                                                                    "source": [ "obj-15", 0 ]
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
                                                                    "destination": [ "obj-37", 0 ],
                                                                    "source": [ "obj-201", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-34", 0 ],
                                                                    "source": [ "obj-202", 0 ]
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
                                                                    "destination": [ "obj-1", 2 ],
                                                                    "source": [ "obj-34", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-1", 1 ],
                                                                    "source": [ "obj-37", 0 ]
                                                                }
                                                            }
                                                        ],
                                                        "toolbaradditions": [ "s2n", "Modalys", "Gestural-Sound-Toolkit" ]
                                                    },
                                                    "patching_rect": [ 194.0, 149.5, 74.0, 21.0 ],
                                                    "text": "p more",
                                                    "varname": "more"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-60",
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
                                                        "rect": [ 831.0, 435.0, 729.0, 350.0 ],
                                                        "boxes": [
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-2",
                                                                    "linecount": 6,
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 10.0, 25.0, 310.0, 74.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_linecount": 6,
                                                                    "presentation_rect": [ 80.0, 101.0, 155.0, 74.0 ],
                                                                    "text": "\ninput: \n     - data values [list]\n\noutput:\n     - unfiltered data [list]"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 14.0,
                                                                    "id": "obj-1",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 10.0, 6.0, 309.0, 22.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 65.0, 86.0, 203.0, 22.0 ],
                                                                    "text": "simple display"
                                                                }
                                                            }
                                                        ],
                                                        "lines": []
                                                    },
                                                    "patching_rect": [ 199.0, 20.5, 44.0, 21.0 ],
                                                    "text": "p help"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 13.0,
                                                    "id": "obj-24",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 108.0, 38.0, 61.0, 21.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 0.0, 1.0, 51.0, 21.0 ],
                                                    "text": "Display"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "autobounds": 0,
                                                    "autoupdate": 120.0,
                                                    "bgcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                                    "bgcolordefault": 0,
                                                    "bounds": [ -2.0, 3.700000047683716 ],
                                                    "colormode": "fgcolor",
                                                    "domainruler": 0,
                                                    "domainruler_size": 0,
                                                    "fgcolor": [ 0.129412, 0.129412, 0.129412, 1.0 ],
                                                    "fgcolordefault": 1,
                                                    "first_cursor_color": [ 1.0, 0.0, 0.0, 1.0 ],
                                                    "first_cursor_size": 3,
                                                    "first_cursor_value": 0.0,
                                                    "first_cursor_visible": 0,
                                                    "id": "obj-101",
                                                    "inversed": 0,
                                                    "layout": "juxtaposed",
                                                    "length": 256,
                                                    "matrix": 0,
                                                    "maxclass": "mubu.scroll",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 270.0, 351.0, 136.0, 10.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 0.0, 23.0, 406.0, 290.0 ],
                                                    "rangeruler": 0,
                                                    "rangeruler_size": 30,
                                                    "sampleperiod": 10.0,
                                                    "second_cursor_color": [ 1.0, 0.0, 0.0, 1.0 ],
                                                    "second_cursor_size": 3,
                                                    "second_cursor_value": 0.0,
                                                    "second_cursor_visible": 0,
                                                    "shape": "lines",
                                                    "windresize": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "filtered data",
                                                    "id": "obj-2",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 76.0, 413.0, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "input [list]",
                                                    "id": "obj-1",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 76.0, 38.0, 25.0, 25.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-101", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-2", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-101", 0 ],
                                                    "source": [ "obj-11", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-11", 0 ],
                                                    "source": [ "obj-12", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-8", 0 ],
                                                    "source": [ "obj-13", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-101", 0 ],
                                                    "source": [ "obj-197", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-8", 2 ],
                                                    "source": [ "obj-197", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-8", 1 ],
                                                    "source": [ "obj-26", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-25", 0 ],
                                                    "source": [ "obj-29", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-101", 0 ],
                                                    "source": [ "obj-3", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-31", 0 ],
                                                    "source": [ "obj-30", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-29", 0 ],
                                                    "source": [ "obj-31", 1 ]
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
                                                    "destination": [ "obj-13", 0 ],
                                                    "source": [ "obj-40", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-101", 0 ],
                                                    "source": [ "obj-5", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-101", 0 ],
                                                    "source": [ "obj-52", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-52", 0 ],
                                                    "source": [ "obj-53", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-8", 0 ],
                                                    "source": [ "obj-9", 0 ]
                                                }
                                            }
                                        ],
                                        "toolbaradditions": [ "s2n", "Modalys", "Gestural-Sound-Toolkit" ]
                                    },
                                    "patching_rect": [ 11.0, 640.0, 409.24999999999994, 317.0 ],
                                    "varname": "gst.display",
                                    "viewvisibility": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 469.24999999999994, 831.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 422.24999999999994, 831.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 10.0,
                                    "id": "obj-17",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "bang" ],
                                    "patching_rect": [ 422.24999999999994, 805.0, 66.0, 20.0 ],
                                    "text": "togedge"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.819608, 0.819608, 0.819608, 0.0 ],
                                    "bgmode": 2,
                                    "border": 1,
                                    "clickthrough": 0,
                                    "embed": 1,
                                    "enablehscroll": 0,
                                    "enablevscroll": 0,
                                    "id": "obj-22",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "gst.acc.intensity.maxpat",
                                    "numinlets": 4,
                                    "numoutlets": 4,
                                    "offset": [ 0.0, 0.0 ],
                                    "outlettype": [ "float", "float", "float", "float" ],
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
                                        "rect": [ 35.0, 102.0, 127.0, 119.0 ],
                                        "openinpresentation": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-31",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 722.0, 916.0, 66.0, 22.0 ],
                                                    "text": "route done"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 769.0, 999.0, 111.0, 22.0 ],
                                                    "text": "s #0-mubu-scroll"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-9",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 873.0, 999.5, 86.0, 21.0 ],
                                                    "text": "s #0-intensity"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-10",
                                                    "maxclass": "newobj",
                                                    "numinlets": 14,
                                                    "numoutlets": 14,
                                                    "outlettype": [ "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
                                                    "patching_rect": [ 769.0, 944.0, 1285.0, 22.0 ],
                                                    "text": "routepass bounds framerate intensity.cutfrequency intensity.gain intensity.powerexp intensity.offsetvalue intensity.movingaveragesize intensity.deltasize intensity.mode intensity.normmode intensity.offset intensity.clipmax intensity.maxclipvalue"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-30",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 669.0, 889.0, 72.0, 22.0 ],
                                                    "text": "patcherargs"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-2",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "int", "int" ],
                                                    "patching_rect": [ 260.0, 570.0, 65.0, 22.0 ],
                                                    "text": "change -1."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-21",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 260.0, 513.0, 63.0, 22.0 ],
                                                    "text": "r gst.clock"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-19",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 260.0, 543.0, 91.0, 22.0 ],
                                                    "text": "route framerate"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "intensity",
                                                    "id": "obj-8",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 246.0, 835.0, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-40",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 241.0, 134.0, 35.0, 22.0 ],
                                                    "text": "open"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-13",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 241.0, 164.0, 51.0, 22.0 ],
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
                                                    "patching_rect": [ 241.0, 113.0, 54.0, 15.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 91.0, 3.989270269870758, 32.918452501297, 15.021459460258484 ],
                                                    "saved_attribute_attributes": {
                                                        "valueof": {
                                                            "parameter_enum": [ "val1", "val2" ],
                                                            "parameter_initial": [ 0.0 ],
                                                            "parameter_initial_enable": 1,
                                                            "parameter_invisible": 4,
                                                            "parameter_longname": "live.text[19]",
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
                                                    "fontsize": 11.0,
                                                    "id": "obj-6",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 756.0, 793.0, 50.0, 21.0 ],
                                                    "text": "deferlow"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 11.0,
                                                    "id": "obj-12",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 756.0, 771.0, 161.0, 21.0 ],
                                                    "text": "loadmess resizetowindowrect 4"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 11.0,
                                                    "id": "obj-7",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 741.0, 748.0, 120.0, 21.0 ],
                                                    "text": "loadmess windresize 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-11",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 727.0, 715.5, 54.0, 22.0 ],
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
                                                    "patching_rect": [ 727.0, 688.5, 109.0, 22.0 ],
                                                    "text": "r #0-mubu-scroll"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-157",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 228.0, 391.0, 91.0, 22.0 ],
                                                    "text": "r #0-intensity"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-197",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "", "" ],
                                                    "patching_rect": [ 1919.0, 167.0, 85.0, 22.0 ],
                                                    "text": "getattr bounds"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 11.0,
                                                    "id": "obj-195",
                                                    "maxclass": "newobj",
                                                    "numinlets": 15,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
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
                                                        "rect": [ 664.0, 102.0, 498.0, 479.0 ],
                                                        "openinpresentation": 1,
                                                        "boxes": [
                                                            {
                                                                "box": {
                                                                    "id": "obj-19",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 145.0, 202.0, 41.0, 22.0 ],
                                                                    "text": "set $1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-16",
                                                                    "index": 1,
                                                                    "maxclass": "outlet",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 145.0, 239.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "annotation": "@intensity.offsetvalue",
                                                                    "annotation_name": "@intensity.offsetvalue",
                                                                    "fontsize": 12.0,
                                                                    "hint": "@intensity.offsetvalue",
                                                                    "id": "obj-31",
                                                                    "maxclass": "live.numbox",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "float" ],
                                                                    "parameter_enable": 1,
                                                                    "patching_rect": [ 773.0, 143.0, 50.0, 18.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 10.0, 129.4, 53.0, 18.0 ],
                                                                    "saved_attribute_attributes": {
                                                                        "valueof": {
                                                                            "parameter_initial": [ 1 ],
                                                                            "parameter_linknames": 1,
                                                                            "parameter_longname": "gatethresh[1]",
                                                                            "parameter_mmax": 1.0,
                                                                            "parameter_modmode": 3,
                                                                            "parameter_shortname": "gatethresh",
                                                                            "parameter_type": 0,
                                                                            "parameter_unitstyle": 1
                                                                        }
                                                                    },
                                                                    "varname": "gatethresh[1]"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontface": 2,
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-5",
                                                                    "linecount": 2,
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 26.0, 544.0, 231.0, 31.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_linecount": 2,
                                                                    "presentation_rect": [ 257.0, 424.0, 226.0, 31.0 ],
                                                                    "text": "Note: uses PiPo from ISMM team at IRCAM Centre Pompidou http://ismm.ircam.fr/pipo/"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-29",
                                                                    "justification": 1,
                                                                    "maxclass": "live.line",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 330.0, 415.0, 5.0, 100.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 246.0, 7.0, 13.0, 448.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-27",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 3,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 2002.0, 207.0, 84.0, 22.0 ],
                                                                    "text": "pak bounds f f"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-24",
                                                                    "linecount": 3,
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 2002.0, 248.0, 80.0, 45.0 ],
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
                                                                    "patching_rect": [ 544.0, 5.0, 56.0, 22.0 ],
                                                                    "restore": {
                                                                        "clipmax[1]": [ 1.0 ],
                                                                        "cliponoff[1]": [ 1.0 ],
                                                                        "compexp[1]": [ 0.5 ],
                                                                        "derivativewindow[1]": [ 3.0 ],
                                                                        "fcut[1]": [ 10.999999999999995 ],
                                                                        "framerate[1]": [ 100.0 ],
                                                                        "gain[1]": [ 2.4488188976377963 ],
                                                                        "gateonoff[1]": [ 1.0 ],
                                                                        "gatethresh[1]": [ 0.1 ],
                                                                        "maveragewindow[1]": [ 1.0 ],
                                                                        "maxMonitor[5]": [ 1.0 ],
                                                                        "minMonitor[5]": [ 0.0 ],
                                                                        "mode": [ 0.0 ],
                                                                        "norm-mode": [ 1.0 ]
                                                                    },
                                                                    "text": "autopattr",
                                                                    "varname": "u933006469"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-28",
                                                                    "index": 15,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 2034.0, 49.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-202",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 2195.0, 110.0, 41.0, 22.0 ],
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
                                                                    "patching_rect": [ 2034.0, 110.0, 41.0, 22.0 ],
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
                                                                    "patching_rect": [ 2034.0, 84.0, 180.0, 22.0 ],
                                                                    "text": "unpack f f"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "bgcolor": [ 1.0, 1.0, 1.0, 0.4 ],
                                                                    "fontsize": 14.0,
                                                                    "id": "obj-26",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 964.0, -4.0, 239.0, 22.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 258.0, 7.0, 224.0, 22.0 ],
                                                                    "text": "advanced"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-25",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 1935.0, 142.5, 86.0, 19.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 62.0, 153.0, 86.0, 19.0 ],
                                                                    "text": "max clip (linear)"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-22",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 1553.0, 143.0, 64.0, 19.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 339.0, 104.0, 64.0, 19.0 ],
                                                                    "text": "norm mode"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-21",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 1413.0, 143.0, 36.0, 19.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 339.0, 82.0, 36.0, 19.0 ],
                                                                    "text": "mode"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-20",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 1196.0, 146.0, 118.0, 19.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 318.0, 55.5, 118.0, 19.0 ],
                                                                    "text": "derivative window size"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-17",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 1016.0, 146.0, 98.0, 19.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 318.0, 32.5, 98.0, 19.0 ],
                                                                    "text": "mean window size"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-15",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 825.0, 142.5, 116.0, 19.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 62.0, 128.9, 116.0, 19.0 ],
                                                                    "text": "gate threshold (linear)"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-12",
                                                                    "linecount": 2,
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 639.0, 146.0, 119.0, 31.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 62.0, 104.80000000000001, 182.0, 19.0 ],
                                                                    "text": "compression (<1.) / expansion (>1.)"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-10",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 520.0, 145.0, 67.0, 19.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 62.0, 80.7, 67.0, 19.0 ],
                                                                    "text": "gain (linear)"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-6",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 353.0, 146.0, 87.0, 19.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 61.5, 56.6, 87.0, 19.0 ],
                                                                    "text": "cutoff frequency"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-2",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 247.0, 146.0, 59.0, 19.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 62.0, 32.5, 59.0, 19.0 ],
                                                                    "text": "frame rate"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "bgcolor": [ 1.0, 1.0, 1.0, 0.4 ],
                                                                    "fontsize": 14.0,
                                                                    "id": "obj-9",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 96.0, -4.0, 239.0, 22.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 7.0, 7.0, 209.0, 22.0 ],
                                                                    "text": "accelerometer \"intensity\""
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-4",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 2244.0, 144.0, 112.0, 19.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 93.0, 212.0, 112.0, 19.0 ],
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
                                                                    "patching_rect": [ 2195.0, 144.0, 53.0, 18.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 13.0, 210.0, 53.0, 18.0 ],
                                                                    "saved_attribute_attributes": {
                                                                        "valueof": {
                                                                            "parameter_linknames": 1,
                                                                            "parameter_longname": "maxMonitor[5]",
                                                                            "parameter_mmax": 100.0,
                                                                            "parameter_mmin": -100.0,
                                                                            "parameter_modmode": 3,
                                                                            "parameter_shortname": "maxMonitor",
                                                                            "parameter_type": 0,
                                                                            "parameter_unitstyle": 1
                                                                        }
                                                                    },
                                                                    "varname": "maxMonitor[5]"
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
                                                                    "patching_rect": [ 2034.0, 144.0, 53.0, 18.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 13.0, 232.0, 53.0, 18.0 ],
                                                                    "saved_attribute_attributes": {
                                                                        "valueof": {
                                                                            "parameter_linknames": 1,
                                                                            "parameter_longname": "minMonitor[5]",
                                                                            "parameter_mmax": 100.0,
                                                                            "parameter_mmin": -100.0,
                                                                            "parameter_modmode": 3,
                                                                            "parameter_shortname": "minMonitor",
                                                                            "parameter_type": 0,
                                                                            "parameter_unitstyle": 1
                                                                        }
                                                                    },
                                                                    "varname": "minMonitor[5]"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-1",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 2088.0, 145.0, 109.0, 19.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 93.0, 233.0, 109.0, 19.0 ],
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
                                                                    "presentation_rect": [ 7.0, 264.0, 210.0, 22.0 ],
                                                                    "text": "Help [accelerometer \"intensity\"]"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontsize": 12.0,
                                                                    "id": "obj-3",
                                                                    "linecount": 12,
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 27.0, 373.0, 284.0, 167.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_linecount": 12,
                                                                    "presentation_rect": [ 7.0, 288.0, 210.0, 167.0 ],
                                                                    "text": "Compute an intensity, based on the raw acceleremeter data\nDerivate and integrate.\n\n@input: \n    -accelerometer [list]\n\n@output: \n    - intensity\n    - intensity X axis\n    - intensity Y axis\n    - intensity Z axis"
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
                                                                    "patching_rect": [ 2032.0, 23.0, 77.0, 22.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 7.0, 183.0, 210.0, 22.0 ],
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
                                                                    "id": "obj-175",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 1880.0, 175.0, 141.0, 22.0 ],
                                                                    "text": "intensity.maxclipvalue $1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-173",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 1742.0, 175.0, 112.0, 22.0 ],
                                                                    "text": "intensity.clipmax $1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-172",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 1626.0, 175.0, 101.0, 22.0 ],
                                                                    "text": "intensity.offset $1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-171",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 1451.0, 175.0, 129.0, 22.0 ],
                                                                    "text": "intensity.normmode $1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-170",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 1311.0, 175.0, 102.0, 22.0 ],
                                                                    "text": "intensity.mode $1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-168",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 1144.0, 175.0, 119.0, 22.0 ],
                                                                    "text": "intensity.deltasize $1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-165",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 964.0, 175.0, 175.0, 22.0 ],
                                                                    "text": "intensity.movingaveragesize $1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-163",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 773.0, 175.0, 129.0, 22.0 ],
                                                                    "text": "intensity.offsetvalue $1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-162",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 587.0, 175.0, 124.0, 22.0 ],
                                                                    "text": "intensity.powerexp $1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-161",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 468.0, 175.0, 94.0, 22.0 ],
                                                                    "text": "intensity.gain $1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-160",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 301.0, 175.0, 140.0, 22.0 ],
                                                                    "text": "intensity.cutfrequency $1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-159",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 195.0, 202.0, 77.0, 22.0 ],
                                                                    "text": "framerate $1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-157",
                                                                    "linecount": 3,
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 217.0, 305.0, 69.0, 49.0 ],
                                                                    "text": "s #0-intensity"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "annotation": "intensity.maxclipvalue",
                                                                    "annotation_name": "intensity.maxclipvalue",
                                                                    "fontsize": 12.0,
                                                                    "hint": "intensity.maxclipvalue",
                                                                    "id": "obj-154",
                                                                    "maxclass": "live.numbox",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "float" ],
                                                                    "parameter_enable": 1,
                                                                    "patching_rect": [ 1880.0, 143.0, 50.0, 18.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 10.0, 153.5, 53.0, 18.0 ],
                                                                    "saved_attribute_attributes": {
                                                                        "valueof": {
                                                                            "parameter_initial": [ 1 ],
                                                                            "parameter_linknames": 1,
                                                                            "parameter_longname": "clipmax[1]",
                                                                            "parameter_mmax": 100.0,
                                                                            "parameter_modmode": 3,
                                                                            "parameter_shortname": "gain",
                                                                            "parameter_type": 0,
                                                                            "parameter_unitstyle": 1
                                                                        }
                                                                    },
                                                                    "varname": "clipmax[1]"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-155",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 1880.0, 109.0, 41.0, 22.0 ],
                                                                    "text": "set $1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "annotation": "intensity.clipmax",
                                                                    "annotation_name": "intensity.clipmax",
                                                                    "hint": "intensity.clipmax",
                                                                    "id": "obj-151",
                                                                    "maxclass": "live.toggle",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "parameter_enable": 1,
                                                                    "patching_rect": [ 1742.0, 142.0, 15.0, 15.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 179.0, 154.0, 15.0, 15.0 ],
                                                                    "saved_attribute_attributes": {
                                                                        "valueof": {
                                                                            "parameter_enum": [ "off", "on" ],
                                                                            "parameter_linknames": 1,
                                                                            "parameter_longname": "cliponoff[1]",
                                                                            "parameter_mmax": 1,
                                                                            "parameter_modmode": 0,
                                                                            "parameter_shortname": "cliponoff",
                                                                            "parameter_type": 2
                                                                        }
                                                                    },
                                                                    "varname": "cliponoff[1]"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-152",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 1742.0, 109.0, 41.0, 22.0 ],
                                                                    "text": "set $1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "annotation": "intensity.offset",
                                                                    "annotation_name": "intensity.offset",
                                                                    "hint": "intensity.offset",
                                                                    "id": "obj-150",
                                                                    "maxclass": "live.toggle",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "parameter_enable": 1,
                                                                    "patching_rect": [ 1627.0, 142.0, 15.0, 15.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 179.0, 130.0, 15.0, 15.0 ],
                                                                    "saved_attribute_attributes": {
                                                                        "valueof": {
                                                                            "parameter_enum": [ "off", "on" ],
                                                                            "parameter_linknames": 1,
                                                                            "parameter_longname": "gateonoff[1]",
                                                                            "parameter_mmax": 1,
                                                                            "parameter_modmode": 0,
                                                                            "parameter_shortname": "gateonoff",
                                                                            "parameter_type": 2
                                                                        }
                                                                    },
                                                                    "varname": "gateonoff[1]"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-134",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 1626.0, 109.0, 41.0, 22.0 ],
                                                                    "text": "set $1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "annotation": "intensity.normmode (default 1) [0 3]",
                                                                    "annotation_name": "intensity.normmode (default 1) [0 3]",
                                                                    "fontsize": 13.0,
                                                                    "hint": "intensity.normmode (default 1) [0 3]",
                                                                    "id": "obj-136",
                                                                    "maxclass": "live.menu",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 3,
                                                                    "outlettype": [ "", "", "float" ],
                                                                    "parameter_enable": 1,
                                                                    "patching_rect": [ 1451.0, 143.0, 100.0, 19.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 266.0, 104.0, 71.0, 19.0 ],
                                                                    "saved_attribute_attributes": {
                                                                        "valueof": {
                                                                            "parameter_enum": [ "Pre", "Post", "meanPre", "meanPost" ],
                                                                            "parameter_longname": "live.menu[2]",
                                                                            "parameter_mmax": 3,
                                                                            "parameter_modmode": 0,
                                                                            "parameter_shortname": "live.menu",
                                                                            "parameter_type": 2
                                                                        }
                                                                    },
                                                                    "varname": "norm-mode"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-137",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 1451.0, 109.0, 41.0, 22.0 ],
                                                                    "text": "set $1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "annotation": "intensity.mode (default 0) [0 3]",
                                                                    "annotation_name": "intensity.mode (default 0) [0 3]",
                                                                    "fontsize": 13.0,
                                                                    "hint": "intensity.mode (default 0) [0 3]",
                                                                    "id": "obj-139",
                                                                    "maxclass": "live.menu",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 3,
                                                                    "outlettype": [ "", "", "float" ],
                                                                    "parameter_enable": 1,
                                                                    "patching_rect": [ 1311.0, 143.0, 100.0, 19.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 266.0, 82.0, 71.0, 19.0 ],
                                                                    "saved_attribute_attributes": {
                                                                        "valueof": {
                                                                            "parameter_enum": [ "absolute", "positive", "negative", "square" ],
                                                                            "parameter_longname": "live.menu[3]",
                                                                            "parameter_mmax": 3,
                                                                            "parameter_modmode": 0,
                                                                            "parameter_shortname": "live.menu",
                                                                            "parameter_type": 2
                                                                        }
                                                                    },
                                                                    "varname": "mode"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-140",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 1311.0, 109.0, 41.0, 22.0 ],
                                                                    "text": "set $1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "annotation": "@intensity.deltasize",
                                                                    "annotation_name": "@intensity.deltasize",
                                                                    "fontsize": 12.0,
                                                                    "hint": "@intensity.deltasize",
                                                                    "id": "obj-142",
                                                                    "maxclass": "live.numbox",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "float" ],
                                                                    "parameter_enable": 1,
                                                                    "patching_rect": [ 1144.0, 144.0, 50.0, 18.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 266.0, 56.0, 50.0, 18.0 ],
                                                                    "saved_attribute_attributes": {
                                                                        "valueof": {
                                                                            "parameter_linknames": 1,
                                                                            "parameter_longname": "derivativewindow[1]",
                                                                            "parameter_mmax": 2049.0,
                                                                            "parameter_mmin": 3.0,
                                                                            "parameter_modmax": 2049.0,
                                                                            "parameter_modmin": 3.0,
                                                                            "parameter_modmode": 4,
                                                                            "parameter_shortname": "maveragewindow",
                                                                            "parameter_type": 0,
                                                                            "parameter_unitstyle": 0
                                                                        }
                                                                    },
                                                                    "varname": "derivativewindow[1]"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-143",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 1144.0, 110.0, 41.0, 22.0 ],
                                                                    "text": "set $1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-145",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 964.0, 110.0, 41.0, 22.0 ],
                                                                    "text": "set $1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "annotation": "@intensity.movingaveragesize",
                                                                    "annotation_name": "@intensity.movingaveragesize",
                                                                    "fontsize": 12.0,
                                                                    "hint": "@intensity.movingaveragesize",
                                                                    "id": "obj-146",
                                                                    "maxclass": "live.numbox",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "float" ],
                                                                    "parameter_enable": 1,
                                                                    "patching_rect": [ 964.0, 144.0, 50.0, 18.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 266.0, 33.0, 50.0, 18.0 ],
                                                                    "saved_attribute_attributes": {
                                                                        "valueof": {
                                                                            "parameter_linknames": 1,
                                                                            "parameter_longname": "maveragewindow[1]",
                                                                            "parameter_mmax": 2048.0,
                                                                            "parameter_mmin": 1.0,
                                                                            "parameter_modmode": 4,
                                                                            "parameter_shortname": "maveragewindow",
                                                                            "parameter_type": 0,
                                                                            "parameter_unitstyle": 0
                                                                        }
                                                                    },
                                                                    "varname": "maveragewindow[1]"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-129",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 773.0, 109.0, 41.0, 22.0 ],
                                                                    "text": "set $1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "annotation": "@intensity.powerexp",
                                                                    "annotation_name": "@intensity.powerexp",
                                                                    "fontsize": 12.0,
                                                                    "hint": "@intensity.powerexp",
                                                                    "id": "obj-125",
                                                                    "maxclass": "live.numbox",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "float" ],
                                                                    "parameter_enable": 1,
                                                                    "patching_rect": [ 587.0, 143.0, 50.0, 18.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 10.0, 105.30000000000001, 53.0, 18.0 ],
                                                                    "saved_attribute_attributes": {
                                                                        "valueof": {
                                                                            "parameter_initial": [ 1 ],
                                                                            "parameter_linknames": 1,
                                                                            "parameter_longname": "compexp[1]",
                                                                            "parameter_mmax": 10.0,
                                                                            "parameter_mmin": 0.1,
                                                                            "parameter_modmode": 3,
                                                                            "parameter_shortname": "compexp",
                                                                            "parameter_type": 0,
                                                                            "parameter_unitstyle": 1
                                                                        }
                                                                    },
                                                                    "varname": "compexp[1]"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-126",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 587.0, 109.0, 41.0, 22.0 ],
                                                                    "text": "set $1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "annotation": "@intensity.gain",
                                                                    "annotation_name": "@intensity.gain",
                                                                    "fontsize": 12.0,
                                                                    "hint": "@intensity.gain",
                                                                    "id": "obj-86",
                                                                    "maxclass": "live.numbox",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "float" ],
                                                                    "parameter_enable": 1,
                                                                    "patching_rect": [ 468.0, 143.0, 50.0, 18.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 10.0, 81.2, 53.0, 18.0 ],
                                                                    "saved_attribute_attributes": {
                                                                        "valueof": {
                                                                            "parameter_initial": [ 1 ],
                                                                            "parameter_linknames": 1,
                                                                            "parameter_longname": "gain[1]",
                                                                            "parameter_mmax": 40.0,
                                                                            "parameter_modmode": 3,
                                                                            "parameter_shortname": "gain",
                                                                            "parameter_type": 0,
                                                                            "parameter_unitstyle": 1
                                                                        }
                                                                    },
                                                                    "varname": "gain[1]"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-97",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 468.0, 109.0, 41.0, 22.0 ],
                                                                    "text": "set $1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "annotation": "@intensity.cutfrequency",
                                                                    "annotation_name": "@intensity.cutfrequency",
                                                                    "appearance": 2,
                                                                    "fontsize": 12.0,
                                                                    "hint": "@intensity.cutfrequency",
                                                                    "id": "obj-82",
                                                                    "maxclass": "live.numbox",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "float" ],
                                                                    "parameter_enable": 1,
                                                                    "patching_rect": [ 301.0, 144.0, 53.0, 18.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 10.0, 57.1, 53.0, 18.0 ],
                                                                    "prototypename": "freq",
                                                                    "saved_attribute_attributes": {
                                                                        "valueof": {
                                                                            "parameter_exponent": 3.333333,
                                                                            "parameter_initial": [ 10.999999999999995 ],
                                                                            "parameter_initial_enable": 1,
                                                                            "parameter_linknames": 1,
                                                                            "parameter_longname": "fcut[1]",
                                                                            "parameter_mmax": 1000.0,
                                                                            "parameter_mmin": 0.1,
                                                                            "parameter_modmode": 0,
                                                                            "parameter_shortname": "fcut",
                                                                            "parameter_type": 0,
                                                                            "parameter_unitstyle": 3
                                                                        }
                                                                    },
                                                                    "varname": "fcut[1]"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-81",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 301.0, 110.0, 41.0, 22.0 ],
                                                                    "text": "set $1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-74",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 195.0, 110.0, 41.0, 22.0 ],
                                                                    "text": "set $1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "annotation": "@framerate",
                                                                    "annotation_name": "@framerate",
                                                                    "fontsize": 12.0,
                                                                    "hint": "@framerate",
                                                                    "id": "obj-42",
                                                                    "maxclass": "live.numbox",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "float" ],
                                                                    "parameter_enable": 1,
                                                                    "patching_rect": [ 195.0, 144.0, 53.0, 18.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 10.0, 33.0, 53.0, 18.0 ],
                                                                    "saved_attribute_attributes": {
                                                                        "valueof": {
                                                                            "parameter_linknames": 1,
                                                                            "parameter_longname": "framerate[1]",
                                                                            "parameter_mmax": 1000.0,
                                                                            "parameter_modmode": 3,
                                                                            "parameter_shortname": "framerate",
                                                                            "parameter_type": 0,
                                                                            "parameter_unitstyle": 1
                                                                        }
                                                                    },
                                                                    "varname": "framerate[1]"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-178",
                                                                    "index": 3,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 195.0, 49.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-179",
                                                                    "index": 4,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 301.0, 49.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-180",
                                                                    "index": 1,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 97.0, 49.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-184",
                                                                    "index": 5,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 468.0, 49.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-185",
                                                                    "index": 2,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 138.0, 49.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-186",
                                                                    "index": 6,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 587.0, 49.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-187",
                                                                    "index": 7,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 773.0, 49.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-188",
                                                                    "index": 8,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 964.0, 49.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-189",
                                                                    "index": 9,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 1144.0, 49.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-190",
                                                                    "index": 10,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 1311.0, 49.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-191",
                                                                    "index": 11,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 1451.0, 49.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-192",
                                                                    "index": 12,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 1626.0, 49.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-193",
                                                                    "index": 13,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 1742.0, 49.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-194",
                                                                    "index": 14,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 1880.0, 49.0, 30.0, 30.0 ]
                                                                }
                                                            }
                                                        ],
                                                        "lines": [
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-162", 0 ],
                                                                    "source": [ "obj-125", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-125", 0 ],
                                                                    "source": [ "obj-126", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-31", 0 ],
                                                                    "source": [ "obj-129", 0 ]
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
                                                                    "destination": [ "obj-150", 0 ],
                                                                    "source": [ "obj-134", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-171", 0 ],
                                                                    "source": [ "obj-136", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-136", 0 ],
                                                                    "source": [ "obj-137", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-170", 0 ],
                                                                    "source": [ "obj-139", 0 ]
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
                                                                    "destination": [ "obj-139", 0 ],
                                                                    "source": [ "obj-140", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-168", 0 ],
                                                                    "source": [ "obj-142", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-142", 0 ],
                                                                    "source": [ "obj-143", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-146", 0 ],
                                                                    "source": [ "obj-145", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-165", 0 ],
                                                                    "source": [ "obj-146", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-172", 0 ],
                                                                    "source": [ "obj-150", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-173", 0 ],
                                                                    "source": [ "obj-151", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-151", 0 ],
                                                                    "source": [ "obj-152", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-175", 0 ],
                                                                    "source": [ "obj-154", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-154", 0 ],
                                                                    "source": [ "obj-155", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-157", 0 ],
                                                                    "midpoints": [ 204.5, 240.0, 226.5, 240.0 ],
                                                                    "source": [ "obj-159", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-157", 0 ],
                                                                    "midpoints": [ 310.5, 240.0, 226.5, 240.0 ],
                                                                    "source": [ "obj-160", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-157", 0 ],
                                                                    "midpoints": [ 477.5, 240.0, 226.5, 240.0 ],
                                                                    "source": [ "obj-161", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-157", 0 ],
                                                                    "midpoints": [ 596.5, 240.0, 226.5, 240.0 ],
                                                                    "source": [ "obj-162", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-157", 0 ],
                                                                    "midpoints": [ 782.5, 240.0, 226.5, 240.0 ],
                                                                    "source": [ "obj-163", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-157", 0 ],
                                                                    "midpoints": [ 973.5, 240.0, 226.5, 240.0 ],
                                                                    "source": [ "obj-165", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-157", 0 ],
                                                                    "midpoints": [ 1153.5, 261.5, 226.5, 261.5 ],
                                                                    "source": [ "obj-168", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-157", 0 ],
                                                                    "midpoints": [ 1320.5, 261.5, 226.5, 261.5 ],
                                                                    "source": [ "obj-170", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-157", 0 ],
                                                                    "midpoints": [ 1460.5, 261.5, 226.5, 261.5 ],
                                                                    "source": [ "obj-171", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-157", 0 ],
                                                                    "midpoints": [ 1635.5, 261.5, 226.5, 261.5 ],
                                                                    "source": [ "obj-172", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-157", 0 ],
                                                                    "midpoints": [ 1751.5, 261.5, 226.5, 261.5 ],
                                                                    "source": [ "obj-173", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-157", 0 ],
                                                                    "midpoints": [ 1889.5, 261.5, 226.5, 261.5 ],
                                                                    "source": [ "obj-175", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-74", 0 ],
                                                                    "source": [ "obj-178", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-81", 0 ],
                                                                    "source": [ "obj-179", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-82", 0 ],
                                                                    "source": [ "obj-180", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-97", 0 ],
                                                                    "source": [ "obj-184", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-86", 0 ],
                                                                    "source": [ "obj-185", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-126", 0 ],
                                                                    "source": [ "obj-186", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-129", 0 ],
                                                                    "source": [ "obj-187", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-145", 0 ],
                                                                    "source": [ "obj-188", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-143", 0 ],
                                                                    "source": [ "obj-189", 0 ]
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
                                                                    "destination": [ "obj-140", 0 ],
                                                                    "source": [ "obj-190", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-137", 0 ],
                                                                    "source": [ "obj-191", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-134", 0 ],
                                                                    "source": [ "obj-192", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-152", 0 ],
                                                                    "source": [ "obj-193", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-155", 0 ],
                                                                    "source": [ "obj-194", 0 ]
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
                                                                    "destination": [ "obj-163", 0 ],
                                                                    "source": [ "obj-31", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-159", 0 ],
                                                                    "order": 0,
                                                                    "source": [ "obj-42", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-19", 0 ],
                                                                    "order": 1,
                                                                    "source": [ "obj-42", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-42", 0 ],
                                                                    "source": [ "obj-74", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-82", 0 ],
                                                                    "source": [ "obj-81", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-160", 0 ],
                                                                    "source": [ "obj-82", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-161", 0 ],
                                                                    "source": [ "obj-86", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-86", 0 ],
                                                                    "source": [ "obj-97", 0 ]
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
                                                    "patching_rect": [ 208.0, 210.0, 1730.0, 21.0 ],
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
                                                    "id": "obj-156",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "", "" ],
                                                    "patching_rect": [ 1919.0, 120.0, 162.0, 22.0 ],
                                                    "text": "getattr intensity.maxclipvalue"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-153",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "", "" ],
                                                    "patching_rect": [ 1781.0, 120.0, 133.0, 22.0 ],
                                                    "text": "getattr intensity.clipmax"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-135",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "", "" ],
                                                    "patching_rect": [ 1651.0, 120.0, 121.0, 22.0 ],
                                                    "text": "getattr intensity.offset"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-138",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "", "" ],
                                                    "patching_rect": [ 1491.0, 120.0, 150.0, 22.0 ],
                                                    "text": "getattr intensity.normmode"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-141",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "", "" ],
                                                    "patching_rect": [ 1350.0, 120.0, 122.0, 22.0 ],
                                                    "text": "getattr intensity.mode"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-144",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "", "" ],
                                                    "patching_rect": [ 1205.0, 120.0, 140.0, 22.0 ],
                                                    "text": "getattr intensity.deltasize"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-147",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "", "" ],
                                                    "patching_rect": [ 1004.0, 120.0, 196.0, 22.0 ],
                                                    "text": "getattr intensity.movingaveragesize"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-130",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "", "" ],
                                                    "patching_rect": [ 846.0, 120.0, 150.0, 22.0 ],
                                                    "text": "getattr intensity.offsetvalue"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-127",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "", "" ],
                                                    "patching_rect": [ 700.0, 120.0, 144.0, 22.0 ],
                                                    "text": "getattr intensity.powerexp"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-124",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "", "" ],
                                                    "patching_rect": [ 581.0, 120.0, 115.0, 22.0 ],
                                                    "text": "getattr intensity.gain"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-76",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "", "" ],
                                                    "patching_rect": [ 414.0, 120.0, 161.0, 22.0 ],
                                                    "text": "getattr intensity.cutfrequency"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-35",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "", "" ],
                                                    "patching_rect": [ 308.0, 120.0, 97.0, 22.0 ],
                                                    "text": "getattr framerate"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "id": "obj-89",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 652.0, 465.0, 204.0, 24.0 ],
                                                    "text": "window size for derivation (delta)"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "attr": "intensity.deltasize",
                                                    "id": "obj-90",
                                                    "lock": 1,
                                                    "maxclass": "attrui",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 414.0, 466.0, 232.0, 22.0 ],
                                                    "text_width": 174.9999806880951
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "id": "obj-92",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 652.0, 439.0, 154.0, 24.0 ],
                                                    "text": "pre-filtering (optional)"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "attr": "intensity.movingaveragesize",
                                                    "id": "obj-93",
                                                    "lock": 1,
                                                    "maxclass": "attrui",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 414.0, 440.0, 232.0, 22.0 ],
                                                    "text_width": 173.9999806880951
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "id": "obj-94",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 1238.0, 480.0, 176.0, 24.0 ],
                                                    "text": "frame rate of data stream"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "attr": "framerate",
                                                    "id": "obj-98",
                                                    "lock": 1,
                                                    "maxclass": "attrui",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 1060.0, 481.0, 176.0, 22.0 ],
                                                    "text_width": 125.0
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "id": "obj-101",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 653.0, 543.0, 135.0, 24.0 ],
                                                    "text": "Remove offset value"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "attr": "intensity.offset",
                                                    "id": "obj-29",
                                                    "lock": 1,
                                                    "maxclass": "attrui",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 414.0, 544.0, 231.0, 22.0 ],
                                                    "text_width": 156.0
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "id": "obj-102",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 652.0, 517.0, 132.0, 24.0 ],
                                                    "text": "Normalisation mode"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "attr": "intensity.normmode",
                                                    "id": "obj-103",
                                                    "lock": 1,
                                                    "maxclass": "attrui",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 414.0, 518.0, 231.0, 22.0 ],
                                                    "text_width": 156.0
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "id": "obj-25",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 653.0, 596.0, 131.0, 24.0 ],
                                                    "text": "Maximum clip value"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "id": "obj-104",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 653.0, 569.0, 118.0, 24.0 ],
                                                    "text": "Clip at max value"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "id": "obj-105",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 1239.0, 585.0, 102.0, 24.0 ],
                                                    "text": "gate threshold"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "id": "obj-115",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 653.0, 491.0, 322.0, 24.0 ],
                                                    "text": "Input values mode: absolute positive, negative,  square "
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "id": "obj-116",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 1238.0, 506.0, 130.0, 24.0 ],
                                                    "text": "Cut Frequency (Hz)"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "id": "obj-117",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 1238.0, 532.0, 90.0, 24.0 ],
                                                    "text": "Overall gain"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "id": "obj-118",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 1238.0, 558.0, 125.0, 24.0 ],
                                                    "text": "comp/exp <1. / >1."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "attr": "intensity.powerexp",
                                                    "id": "obj-119",
                                                    "lock": 1,
                                                    "maxclass": "attrui",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 1060.0, 559.0, 176.0, 22.0 ],
                                                    "text_width": 125.0
                                                }
                                            },
                                            {
                                                "box": {
                                                    "attr": "intensity.mode",
                                                    "id": "obj-120",
                                                    "lock": 1,
                                                    "maxclass": "attrui",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 414.0, 492.0, 231.0, 22.0 ],
                                                    "text_width": 156.0
                                                }
                                            },
                                            {
                                                "box": {
                                                    "attr": "intensity.cutfrequency",
                                                    "id": "obj-28",
                                                    "lock": 1,
                                                    "maxclass": "attrui",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 1060.0, 507.0, 176.0, 22.0 ],
                                                    "text_width": 125.0
                                                }
                                            },
                                            {
                                                "box": {
                                                    "attr": "intensity.gain",
                                                    "id": "obj-26",
                                                    "lock": 1,
                                                    "maxclass": "attrui",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 1060.0, 533.0, 176.0, 22.0 ],
                                                    "text_width": 125.0
                                                }
                                            },
                                            {
                                                "box": {
                                                    "attr": "intensity.offsetvalue",
                                                    "id": "obj-121",
                                                    "lock": 1,
                                                    "maxclass": "attrui",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 1060.0, 586.0, 176.0, 22.0 ],
                                                    "text_width": 125.0
                                                }
                                            },
                                            {
                                                "box": {
                                                    "attr": "intensity.maxclipvalue",
                                                    "id": "obj-122",
                                                    "lock": 1,
                                                    "maxclass": "attrui",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 414.0, 597.0, 232.0, 22.0 ],
                                                    "text_width": 150.0
                                                }
                                            },
                                            {
                                                "box": {
                                                    "attr": "intensity.clipmax",
                                                    "id": "obj-123",
                                                    "lock": 1,
                                                    "maxclass": "attrui",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 414.0, 570.0, 232.0, 22.0 ],
                                                    "text_width": 150.0
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-34",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "bang" ],
                                                    "patching_rect": [ 31.0, 288.0, 60.19417530298233, 22.0 ],
                                                    "text": "loadbang"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-53",
                                                    "linecount": 10,
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 31.0, 345.0, 158.0, 143.0 ],
                                                    "text": "framerate 100, intensity.mode abs, intensity.normmode L2post, intensity.powerexp 0.5, intensity.cutfrequency 11, intensity.gain 1., intensity.offset 1, intensity.offsetvalue 0.1, intensity.clipmax 1, intensity.maxclipvalue 1."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 11.0,
                                                    "id": "obj-63",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 4,
                                                    "outlettype": [ "float", "float", "float", "float" ],
                                                    "patching_rect": [ 246.0, 797.0, 100.0, 21.0 ],
                                                    "text": "unpack f f f f"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "obj-66",
                                                    "linecount": 9,
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "float", "" ],
                                                    "patching_rect": [ 246.0, 659.0, 223.0, 129.0 ],
                                                    "text": "pipo intensity @framerate 100 @intensity.mode abs @intensity.normmode L2post @intensity.powerexp 0.5 @intensity.cutfrequency 11 @intensity.gain 1. @intensity.offset 1 @intensity.offsetvalue 0.1 @intensity.clipmax 1 @intensity.maxclipvalue 1."
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
                                                    "patching_rect": [ 622.0, 56.0, 89.0, 35.0 ],
                                                    "text": "mubu.scroll configuration"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "mubu.scroll configuration",
                                                    "id": "obj-17",
                                                    "index": 4,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 589.0, 60.0, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "gain [float]",
                                                    "id": "obj-60",
                                                    "index": 3,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 330.0, 60.0, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "cutoff frequency",
                                                    "id": "obj-61",
                                                    "index": 2,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 208.0, 60.0, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "intensity z axis",
                                                    "id": "obj-5",
                                                    "index": 4,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 327.0, 835.0, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "intensity y axis",
                                                    "id": "obj-4",
                                                    "index": 3,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 300.0, 835.0, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "intensity x axis",
                                                    "id": "obj-43",
                                                    "index": 2,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 273.0, 835.0, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "aaccelerometer data [list of 3 floats]",
                                                    "id": "obj-91",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 14.0, 60.0, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 13.0,
                                                    "id": "obj-57",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 3.0, 5.0, 88.0, 21.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 0.0, 1.0, 82.0, 21.0 ],
                                                    "text": "Acc.Intensity"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "autobounds": 0,
                                                    "autoupdate": 120.0,
                                                    "bgcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                                    "bgcolordefault": 0,
                                                    "bounds": [ 0.0, 1.0 ],
                                                    "colormode": "fgcolor",
                                                    "colorpattern": [ "red", "green", "blue", "" ],
                                                    "domainruler": 0,
                                                    "domainruler_size": 15,
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
                                                    "patching_rect": [ 541.0, 875.0, 10.0, 10.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 0.0, 23.0, 290.0, 109.0 ],
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
                                            },
                                            {
                                                "box": {
                                                    "attr": "framerate",
                                                    "id": "obj-3",
                                                    "maxclass": "attrui",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 260.0, 608.0, 150.0, 22.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-1", 0 ],
                                                    "source": [ "obj-10", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-9", 0 ],
                                                    "midpoints": [ 1947.1153846153845, 982.75, 882.5, 982.75 ],
                                                    "source": [ "obj-10", 12 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-9", 0 ],
                                                    "midpoints": [ 1849.7307692307693, 982.75, 882.5, 982.75 ],
                                                    "source": [ "obj-10", 11 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-9", 0 ],
                                                    "midpoints": [ 1752.3461538461538, 982.75, 882.5, 982.75 ],
                                                    "source": [ "obj-10", 10 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-9", 0 ],
                                                    "midpoints": [ 1654.9615384615386, 982.75, 882.5, 982.75 ],
                                                    "source": [ "obj-10", 9 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-9", 0 ],
                                                    "midpoints": [ 1557.576923076923, 982.75, 882.5, 982.75 ],
                                                    "source": [ "obj-10", 8 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-9", 0 ],
                                                    "midpoints": [ 1460.1923076923076, 982.75, 882.5, 982.75 ],
                                                    "source": [ "obj-10", 7 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-9", 0 ],
                                                    "midpoints": [ 1362.8076923076924, 982.75, 882.5, 982.75 ],
                                                    "source": [ "obj-10", 6 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-9", 0 ],
                                                    "midpoints": [ 1265.423076923077, 982.75, 882.5, 982.75 ],
                                                    "source": [ "obj-10", 5 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-9", 0 ],
                                                    "midpoints": [ 1168.0384615384614, 982.75, 882.5, 982.75 ],
                                                    "source": [ "obj-10", 4 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-9", 0 ],
                                                    "midpoints": [ 1070.6538461538462, 982.75, 882.5, 982.75 ],
                                                    "source": [ "obj-10", 3 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-9", 0 ],
                                                    "midpoints": [ 973.2692307692307, 982.75, 882.5, 982.75 ],
                                                    "source": [ "obj-10", 2 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-9", 0 ],
                                                    "midpoints": [ 875.8846153846154, 982.75, 882.5, 982.75 ],
                                                    "source": [ "obj-10", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-66", 0 ],
                                                    "hidden": 1,
                                                    "midpoints": [ 423.5, 631.9230803251266, 255.5, 631.9230803251266 ],
                                                    "source": [ "obj-103", 0 ]
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
                                                    "destination": [ "obj-66", 0 ],
                                                    "hidden": 1,
                                                    "midpoints": [ 1069.5, 631.9615418314934, 255.5, 631.9615418314934 ],
                                                    "source": [ "obj-119", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-6", 0 ],
                                                    "source": [ "obj-12", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-66", 0 ],
                                                    "hidden": 1,
                                                    "midpoints": [ 423.5, 632.3846188187599, 255.5, 632.3846188187599 ],
                                                    "source": [ "obj-120", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-66", 0 ],
                                                    "hidden": 1,
                                                    "midpoints": [ 1069.5, 631.9615418314934, 255.5, 631.9615418314934 ],
                                                    "source": [ "obj-121", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-66", 0 ],
                                                    "hidden": 1,
                                                    "midpoints": [ 423.5, 632.4230803251266, 255.5, 632.4230803251266 ],
                                                    "source": [ "obj-122", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-66", 0 ],
                                                    "hidden": 1,
                                                    "midpoints": [ 423.5, 632.4230803251266, 255.5, 632.4230803251266 ],
                                                    "source": [ "obj-123", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-195", 4 ],
                                                    "source": [ "obj-124", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-66", 0 ],
                                                    "midpoints": [ 638.5, 150.5, 255.5, 150.5 ],
                                                    "source": [ "obj-124", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-195", 5 ],
                                                    "source": [ "obj-127", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-66", 0 ],
                                                    "midpoints": [ 772.0, 150.5, 255.5, 150.5 ],
                                                    "source": [ "obj-127", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-195", 0 ],
                                                    "source": [ "obj-13", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-195", 6 ],
                                                    "source": [ "obj-130", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-66", 0 ],
                                                    "midpoints": [ 921.0, 150.5, 255.5, 150.5 ],
                                                    "source": [ "obj-130", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-195", 11 ],
                                                    "source": [ "obj-135", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-66", 0 ],
                                                    "midpoints": [ 1711.5, 282.5, 255.5, 282.5 ],
                                                    "source": [ "obj-135", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-195", 10 ],
                                                    "source": [ "obj-138", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-66", 0 ],
                                                    "midpoints": [ 1566.0, 282.5, 255.5, 282.5 ],
                                                    "source": [ "obj-138", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-195", 9 ],
                                                    "source": [ "obj-141", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-66", 0 ],
                                                    "midpoints": [ 1411.0, 282.5, 255.5, 282.5 ],
                                                    "source": [ "obj-141", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-195", 8 ],
                                                    "source": [ "obj-144", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-66", 0 ],
                                                    "midpoints": [ 1275.0, 282.5, 255.5, 282.5 ],
                                                    "source": [ "obj-144", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-195", 7 ],
                                                    "source": [ "obj-147", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-66", 0 ],
                                                    "midpoints": [ 1102.0, 282.5, 255.5, 282.5 ],
                                                    "source": [ "obj-147", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-195", 12 ],
                                                    "source": [ "obj-153", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-66", 0 ],
                                                    "midpoints": [ 1847.5, 282.5, 255.5, 282.5 ],
                                                    "source": [ "obj-153", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-195", 13 ],
                                                    "source": [ "obj-156", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-66", 0 ],
                                                    "midpoints": [ 2000.0, 282.5, 255.5, 282.5 ],
                                                    "source": [ "obj-156", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-66", 0 ],
                                                    "source": [ "obj-157", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-113", 0 ],
                                                    "midpoints": [ 598.5, 344.0546875, 545.0, 344.0546875 ],
                                                    "source": [ "obj-17", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-2", 0 ],
                                                    "source": [ "obj-19", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-2", 0 ],
                                                    "source": [ "obj-195", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-113", 0 ],
                                                    "midpoints": [ 1961.5, 420.640625, 545.0, 420.640625 ],
                                                    "source": [ "obj-197", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-195", 14 ],
                                                    "source": [ "obj-197", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-3", 0 ],
                                                    "source": [ "obj-2", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-19", 0 ],
                                                    "source": [ "obj-21", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-66", 0 ],
                                                    "hidden": 1,
                                                    "midpoints": [ 1069.5, 632.4230803251266, 255.5, 632.4230803251266 ],
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
                                                    "destination": [ "obj-66", 0 ],
                                                    "hidden": 1,
                                                    "midpoints": [ 1069.5, 631.9615418314934, 255.5, 631.9615418314934 ],
                                                    "source": [ "obj-28", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-66", 0 ],
                                                    "hidden": 1,
                                                    "midpoints": [ 423.5, 632.8846188187599, 255.5, 632.8846188187599 ],
                                                    "source": [ "obj-29", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-66", 0 ],
                                                    "source": [ "obj-3", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-31", 0 ],
                                                    "source": [ "obj-30", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-10", 0 ],
                                                    "source": [ "obj-31", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-53", 0 ],
                                                    "disabled": 1,
                                                    "source": [ "obj-34", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-195", 2 ],
                                                    "source": [ "obj-35", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-66", 0 ],
                                                    "midpoints": [ 356.5, 150.5, 255.5, 150.5 ],
                                                    "source": [ "obj-35", 1 ]
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
                                                    "destination": [ "obj-13", 0 ],
                                                    "source": [ "obj-40", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-66", 0 ],
                                                    "source": [ "obj-53", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-113", 0 ],
                                                    "source": [ "obj-6", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-195", 1 ],
                                                    "source": [ "obj-60", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-195", 0 ],
                                                    "source": [ "obj-61", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-113", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-63", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-4", 0 ],
                                                    "source": [ "obj-63", 2 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-43", 0 ],
                                                    "source": [ "obj-63", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-5", 0 ],
                                                    "source": [ "obj-63", 3 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-8", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-63", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-63", 0 ],
                                                    "source": [ "obj-66", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-113", 0 ],
                                                    "source": [ "obj-7", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-195", 3 ],
                                                    "source": [ "obj-76", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-66", 0 ],
                                                    "midpoints": [ 494.5, 150.5, 255.5, 150.5 ],
                                                    "source": [ "obj-76", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-66", 0 ],
                                                    "midpoints": [ 423.5, 632.6710515022278, 255.5, 632.6710515022278 ],
                                                    "source": [ "obj-90", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-66", 0 ],
                                                    "source": [ "obj-91", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-66", 0 ],
                                                    "midpoints": [ 423.5, 631.6710515022278, 255.5, 631.6710515022278 ],
                                                    "source": [ "obj-93", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-66", 0 ],
                                                    "midpoints": [ 1069.5, 633.3825933337212, 255.5, 633.3825933337212 ],
                                                    "source": [ "obj-98", 0 ]
                                                }
                                            }
                                        ],
                                        "toolbaradditions": [ "s2n", "Modalys", "Gestural-Sound-Toolkit" ]
                                    },
                                    "patching_rect": [ 148.24999999999994, 432.0, 293.0, 136.0 ],
                                    "varname": "gst.acc.intensity",
                                    "viewvisibility": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-23",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 422.24999999999994, 780.0, 19.0, 19.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-25",
                                    "maxclass": "newobj",
                                    "numinlets": 5,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "int" ],
                                    "patching_rect": [ 11.0, 608.0, 430.0, 23.0 ],
                                    "text": "gst.gate @bounds 0. 1. @bypass 0 @threshold 0.59 @continuous 1",
                                    "varname": "gst.gate.float"
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
                                    "patching_rect": [ 11.249999999999943, 157.0, 434.0000000000001, 259.0 ],
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
                                    "jsarguments": [ "gst.gate" ],
                                    "maxclass": "jsui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 12.5, 10.0, 431.5, 142.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-58", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-1", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-48", 5 ],
                                    "hidden": 1,
                                    "source": [ "obj-13", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-48", 4 ],
                                    "hidden": 1,
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-17", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-25", 1 ],
                                    "source": [ "obj-22", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 0 ],
                                    "source": [ "obj-23", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-23", 0 ],
                                    "source": [ "obj-25", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-25", 4 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-22", 0 ],
                                    "midpoints": [ 20.749999999999943, 422.0, 157.74999999999994, 422.0 ],
                                    "order": 1,
                                    "source": [ "obj-48", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-25", 0 ],
                                    "order": 0,
                                    "source": [ "obj-48", 0 ]
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
                    "patching_rect": [ 261.0, 148.0, 135.0, 22.0 ],
                    "saved_object_attributes": {
                        "filename": "helpstarter.js",
                        "parameter_enable": 0
                    },
                    "text": "js helpstarter.js gst.gate"
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
                        "rect": [ 0.0, 26.0, 503.0, 960.0 ],
                        "default_fontsize": 13.0,
                        "gridsize": [ 5.0, 5.0 ],
                        "showontab": 1,
                        "boxes": [
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "obj-1",
                                    "maxclass": "live.text",
                                    "mode": 0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "parameter_enable": 1,
                                    "parameter_mappable": 0,
                                    "patching_rect": [ 311.0, 31.0, 163.0, 18.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 201.0, 172.0, 124.0, 17.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "val1", "val2" ],
                                            "parameter_invisible": 4,
                                            "parameter_longname": "live.text[26]",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "live.text",
                                            "parameter_type": 2
                                        }
                                    },
                                    "text": "movement analysis.maxpat",
                                    "varname": "live.text[2]"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.0,
                                    "hidden": 1,
                                    "id": "obj-58",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
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
                                        "rect": [ 977.0, 472.0, 290.0, 244.0 ],
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-14",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 86.0, 141.0, 53.0, 22.0 ],
                                                    "text": "pcontrol"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-13",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 86.0, 111.0, 117.0, 22.0 ],
                                                    "text": "prepend loadunique"
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
                                                    "patching_rect": [ 86.0, 70.0, 30.0, 30.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-13", 0 ],
                                                    "source": [ "obj-1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-14", 0 ],
                                                    "source": [ "obj-13", 0 ]
                                                }
                                            }
                                        ],
                                        "toolbaradditions": [ "s2n", "Modalys", "Gestural-Sound-Toolkit" ]
                                    },
                                    "patching_rect": [ 479.0, 32.0, 58.0, 17.0 ],
                                    "text": "p load-helpfile"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.0,
                                    "hidden": 1,
                                    "id": "obj-13",
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
                                    "patching_rect": [ 343.24999999999994, 122.0, 102.0, 26.0 ],
                                    "text": "p load&start readall overview.mubu"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 141.24999999999994, 582.0, 76.0, 21.0 ],
                                    "text": "float control"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 22.249999999999943, 582.0, 34.0, 21.0 ],
                                    "text": "data"
                                }
                            },
                            {
                                "box": {
                                    "bgmode": 0,
                                    "border": 1,
                                    "clickthrough": 0,
                                    "embed": 1,
                                    "enablehscroll": 0,
                                    "enablevscroll": 0,
                                    "id": "obj-6",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "gst.display.maxpat",
                                    "numinlets": 4,
                                    "numoutlets": 1,
                                    "offset": [ 0.0, 0.0 ],
                                    "outlettype": [ "" ],
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
                                        "rect": [ 34.0, 93.0, 127.0, 122.0 ],
                                        "openinpresentation": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-31",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 444.0, 140.0, 66.0, 22.0 ],
                                                    "text": "route done"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-25",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 491.0, 214.0, 111.0, 22.0 ],
                                                    "text": "s #0-mubu-scroll"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-29",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 491.0, 178.0, 104.0, 22.0 ],
                                                    "text": "routepass bounds"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-30",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 391.0, 113.0, 72.0, 22.0 ],
                                                    "text": "patcherargs"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "mubu.scroll configuration",
                                                    "id": "obj-3",
                                                    "index": 4,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 373.0, 43.5, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 11.0,
                                                    "id": "obj-11",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 315.0, 267.0, 50.0, 21.0 ],
                                                    "text": "deferlow"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 11.0,
                                                    "id": "obj-12",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 315.0, 240.0, 161.0, 21.0 ],
                                                    "text": "loadmess resizetowindowrect 4"
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
                                                    "patching_rect": [ 300.0, 215.0, 120.0, 21.0 ],
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
                                                    "patching_rect": [ 141.0, 119.5, 35.0, 22.0 ],
                                                    "text": "open"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-13",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 141.0, 149.5, 51.0, 22.0 ],
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
                                                    "patching_rect": [ 141.0, 98.5, 54.0, 15.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 90.0, 5.0, 33.0, 15.0 ],
                                                    "saved_attribute_attributes": {
                                                        "valueof": {
                                                            "parameter_enum": [ "val1", "val2" ],
                                                            "parameter_initial": [ 0.0 ],
                                                            "parameter_initial_enable": 1,
                                                            "parameter_invisible": 4,
                                                            "parameter_longname": "live.text[10]",
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
                                                    "id": "obj-197",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "", "" ],
                                                    "patching_rect": [ 254.5, 45.0, 85.0, 22.0 ],
                                                    "text": "getattr bounds"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-52",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 270.0, 178.0, 54.0, 22.0 ],
                                                    "text": "deferlow"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-53",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 270.0, 149.0, 109.0, 22.0 ],
                                                    "text": "r #0-mubu-scroll"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "max",
                                                    "id": "obj-26",
                                                    "index": 3,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 222.0, 43.5, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "min",
                                                    "id": "obj-9",
                                                    "index": 2,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 195.0, 43.5, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-8",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
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
                                                        "rect": [ 134.0, 174.0, 214.0, 82.0 ],
                                                        "openinpresentation": 1,
                                                        "boxes": [
                                                            {
                                                                "box": {
                                                                    "id": "obj-1",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 3,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 45.0, 199.0, 103.0, 22.0 ],
                                                                    "text": "pak bounds f f"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-21",
                                                                    "linecount": 2,
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 45.0, 240.0, 94.0, 33.0 ],
                                                                    "text": "s #0-mubu-scroll"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-28",
                                                                    "index": 3,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 386.0, 6.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-202",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 248.0, 104.0, 41.0, 22.0 ],
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
                                                                    "patching_rect": [ 87.0, 104.0, 41.0, 22.0 ],
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
                                                                    "patching_rect": [ 87.0, 78.0, 180.0, 22.0 ],
                                                                    "text": "unpack f f"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-31",
                                                                    "linecount": 2,
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 297.0, 138.0, 102.0, 31.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 62.0, 32.0, 112.0, 19.0 ],
                                                                    "text": "Max value for display"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "annotation": "@bounds",
                                                                    "annotation_name": "@bounds",
                                                                    "fontsize": 12.0,
                                                                    "hint": "@bounds",
                                                                    "id": "obj-34",
                                                                    "maxclass": "live.numbox",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "float" ],
                                                                    "parameter_enable": 1,
                                                                    "patching_rect": [ 248.0, 138.0, 53.0, 18.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 3.0, 28.0, 53.0, 18.0 ],
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
                                                                    "fontsize": 12.0,
                                                                    "id": "obj-37",
                                                                    "maxclass": "live.numbox",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "float" ],
                                                                    "parameter_enable": 1,
                                                                    "patching_rect": [ 87.0, 138.0, 53.0, 18.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 3.0, 53.0, 53.0, 18.0 ],
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
                                                                    "fontname": "Arial",
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-38",
                                                                    "linecount": 2,
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 141.0, 139.0, 100.0, 31.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 62.0, 57.0, 109.0, 19.0 ],
                                                                    "text": "Min value for display"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-3",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 4,
                                                                    "outlettype": [ "", "", "", "" ],
                                                                    "patching_rect": [ 196.5, 205.0, 56.0, 22.0 ],
                                                                    "restore": {
                                                                        "maxMonitor": [ 3.700000047683716 ],
                                                                        "minMonitor": [ -2.0 ]
                                                                    },
                                                                    "text": "autopattr",
                                                                    "varname": "u933006469"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-15",
                                                                    "index": 2,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 176.5, 6.0, 25.0, 25.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-12",
                                                                    "index": 1,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 9.5, 6.0, 25.0, 25.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "bgcolor": [ 1.0, 1.0, 1.0, 0.4 ],
                                                                    "fontname": "Arial",
                                                                    "fontsize": 14.0,
                                                                    "id": "obj-9",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 9.5, 37.0, 120.0, 22.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 3.0, 4.0, 209.0, 22.0 ],
                                                                    "text": "Monitoring"
                                                                }
                                                            }
                                                        ],
                                                        "lines": [
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-21", 0 ],
                                                                    "source": [ "obj-1", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-37", 0 ],
                                                                    "source": [ "obj-12", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-34", 0 ],
                                                                    "source": [ "obj-15", 0 ]
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
                                                                    "destination": [ "obj-37", 0 ],
                                                                    "source": [ "obj-201", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-34", 0 ],
                                                                    "source": [ "obj-202", 0 ]
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
                                                                    "destination": [ "obj-1", 2 ],
                                                                    "source": [ "obj-34", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-1", 1 ],
                                                                    "source": [ "obj-37", 0 ]
                                                                }
                                                            }
                                                        ],
                                                        "toolbaradditions": [ "s2n", "Modalys", "Gestural-Sound-Toolkit" ]
                                                    },
                                                    "patching_rect": [ 194.0, 149.5, 74.0, 21.0 ],
                                                    "text": "p more",
                                                    "varname": "more"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-60",
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
                                                        "rect": [ 831.0, 435.0, 729.0, 350.0 ],
                                                        "boxes": [
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-2",
                                                                    "linecount": 6,
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 10.0, 25.0, 310.0, 74.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_linecount": 6,
                                                                    "presentation_rect": [ 80.0, 101.0, 155.0, 74.0 ],
                                                                    "text": "\ninput: \n     - data values [list]\n\noutput:\n     - unfiltered data [list]"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 14.0,
                                                                    "id": "obj-1",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 10.0, 6.0, 309.0, 22.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 65.0, 86.0, 203.0, 22.0 ],
                                                                    "text": "simple display"
                                                                }
                                                            }
                                                        ],
                                                        "lines": []
                                                    },
                                                    "patching_rect": [ 199.0, 20.5, 44.0, 21.0 ],
                                                    "text": "p help"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 13.0,
                                                    "id": "obj-24",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 108.0, 38.0, 61.0, 21.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 0.0, 1.0, 51.0, 21.0 ],
                                                    "text": "Display"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "autobounds": 0,
                                                    "autoupdate": 120.0,
                                                    "bgcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                                    "bgcolordefault": 1,
                                                    "bounds": [ -2.0, 3.700000047683716 ],
                                                    "colormode": "fgcolor",
                                                    "domainruler": 0,
                                                    "domainruler_size": 15,
                                                    "fgcolor": [ 0.129412, 0.129412, 0.129412, 1.0 ],
                                                    "fgcolordefault": 1,
                                                    "first_cursor_color": [ 1.0, 0.0, 0.0, 1.0 ],
                                                    "first_cursor_size": 3,
                                                    "first_cursor_value": 0.0,
                                                    "first_cursor_visible": 0,
                                                    "id": "obj-101",
                                                    "inversed": 0,
                                                    "layout": "juxtaposed",
                                                    "length": 256,
                                                    "matrix": 0,
                                                    "maxclass": "mubu.scroll",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 270.0, 351.0, 128.0, 10.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 0.0, 23.0, 398.0, 150.0 ],
                                                    "rangeruler": 0,
                                                    "rangeruler_size": 30,
                                                    "sampleperiod": 10.0,
                                                    "second_cursor_color": [ 1.0, 0.0, 0.0, 1.0 ],
                                                    "second_cursor_size": 3,
                                                    "second_cursor_value": 0.0,
                                                    "second_cursor_visible": 0,
                                                    "shape": "lines",
                                                    "windresize": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "filtered data",
                                                    "id": "obj-2",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 76.0, 413.0, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "input [list]",
                                                    "id": "obj-1",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 76.0, 38.0, 25.0, 25.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-101", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-2", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-101", 0 ],
                                                    "source": [ "obj-11", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-11", 0 ],
                                                    "source": [ "obj-12", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-8", 0 ],
                                                    "source": [ "obj-13", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-101", 0 ],
                                                    "source": [ "obj-197", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-8", 2 ],
                                                    "source": [ "obj-197", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-8", 1 ],
                                                    "source": [ "obj-26", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-25", 0 ],
                                                    "source": [ "obj-29", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-101", 0 ],
                                                    "source": [ "obj-3", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-31", 0 ],
                                                    "source": [ "obj-30", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-29", 0 ],
                                                    "source": [ "obj-31", 1 ]
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
                                                    "destination": [ "obj-13", 0 ],
                                                    "source": [ "obj-40", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-101", 0 ],
                                                    "source": [ "obj-5", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-101", 0 ],
                                                    "source": [ "obj-52", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-52", 0 ],
                                                    "source": [ "obj-53", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-8", 0 ],
                                                    "source": [ "obj-9", 0 ]
                                                }
                                            }
                                        ],
                                        "toolbaradditions": [ "s2n", "Modalys", "Gestural-Sound-Toolkit" ]
                                    },
                                    "patching_rect": [ 11.249999999999943, 780.0, 401.0, 177.0 ],
                                    "varname": "gst.display",
                                    "viewvisibility": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 469.24999999999994, 831.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 422.24999999999994, 831.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 10.0,
                                    "id": "obj-17",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "bang" ],
                                    "patching_rect": [ 422.24999999999994, 805.0, 66.0, 20.0 ],
                                    "text": "togedge"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.819608, 0.819608, 0.819608, 0.0 ],
                                    "bgmode": 2,
                                    "border": 1,
                                    "clickthrough": 0,
                                    "embed": 1,
                                    "enablehscroll": 0,
                                    "enablevscroll": 0,
                                    "id": "obj-22",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "gst.acc.intensity.maxpat",
                                    "numinlets": 4,
                                    "numoutlets": 4,
                                    "offset": [ 0.0, 0.0 ],
                                    "outlettype": [ "float", "float", "float", "float" ],
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
                                        "rect": [ 35.0, 102.0, 127.0, 119.0 ],
                                        "openinpresentation": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-31",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 722.0, 916.0, 66.0, 22.0 ],
                                                    "text": "route done"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 769.0, 999.0, 111.0, 22.0 ],
                                                    "text": "s #0-mubu-scroll"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-9",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 873.0, 999.5, 86.0, 21.0 ],
                                                    "text": "s #0-intensity"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-10",
                                                    "maxclass": "newobj",
                                                    "numinlets": 14,
                                                    "numoutlets": 14,
                                                    "outlettype": [ "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
                                                    "patching_rect": [ 769.0, 944.0, 1285.0, 22.0 ],
                                                    "text": "routepass bounds framerate intensity.cutfrequency intensity.gain intensity.powerexp intensity.offsetvalue intensity.movingaveragesize intensity.deltasize intensity.mode intensity.normmode intensity.offset intensity.clipmax intensity.maxclipvalue"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-30",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 669.0, 889.0, 72.0, 22.0 ],
                                                    "text": "patcherargs"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-2",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "int", "int" ],
                                                    "patching_rect": [ 260.0, 570.0, 65.0, 22.0 ],
                                                    "text": "change -1."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-21",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 260.0, 513.0, 63.0, 22.0 ],
                                                    "text": "r gst.clock"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-19",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 260.0, 543.0, 91.0, 22.0 ],
                                                    "text": "route framerate"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "intensity",
                                                    "id": "obj-8",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 246.0, 835.0, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-40",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 241.0, 134.0, 35.0, 22.0 ],
                                                    "text": "open"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-13",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 241.0, 164.0, 51.0, 22.0 ],
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
                                                    "patching_rect": [ 241.0, 113.0, 54.0, 15.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 91.0, 3.989270269870758, 32.918452501297, 15.021459460258484 ],
                                                    "saved_attribute_attributes": {
                                                        "valueof": {
                                                            "parameter_enum": [ "val1", "val2" ],
                                                            "parameter_initial": [ 0.0 ],
                                                            "parameter_initial_enable": 1,
                                                            "parameter_invisible": 4,
                                                            "parameter_longname": "live.text[3]",
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
                                                    "fontsize": 11.0,
                                                    "id": "obj-6",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 756.0, 793.0, 50.0, 21.0 ],
                                                    "text": "deferlow"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 11.0,
                                                    "id": "obj-12",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 756.0, 771.0, 161.0, 21.0 ],
                                                    "text": "loadmess resizetowindowrect 4"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 11.0,
                                                    "id": "obj-7",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 741.0, 748.0, 120.0, 21.0 ],
                                                    "text": "loadmess windresize 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-11",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 727.0, 715.5, 54.0, 22.0 ],
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
                                                    "patching_rect": [ 727.0, 688.5, 109.0, 22.0 ],
                                                    "text": "r #0-mubu-scroll"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-157",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 228.0, 391.0, 91.0, 22.0 ],
                                                    "text": "r #0-intensity"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-197",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "", "" ],
                                                    "patching_rect": [ 1919.0, 167.0, 85.0, 22.0 ],
                                                    "text": "getattr bounds"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 11.0,
                                                    "id": "obj-195",
                                                    "maxclass": "newobj",
                                                    "numinlets": 15,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
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
                                                        "rect": [ 664.0, 102.0, 498.0, 479.0 ],
                                                        "openinpresentation": 1,
                                                        "boxes": [
                                                            {
                                                                "box": {
                                                                    "id": "obj-19",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 145.0, 202.0, 41.0, 22.0 ],
                                                                    "text": "set $1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-16",
                                                                    "index": 1,
                                                                    "maxclass": "outlet",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 145.0, 239.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "annotation": "@intensity.offsetvalue",
                                                                    "annotation_name": "@intensity.offsetvalue",
                                                                    "fontsize": 12.0,
                                                                    "hint": "@intensity.offsetvalue",
                                                                    "id": "obj-31",
                                                                    "maxclass": "live.numbox",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "float" ],
                                                                    "parameter_enable": 1,
                                                                    "patching_rect": [ 773.0, 143.0, 50.0, 18.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 10.0, 129.4, 53.0, 18.0 ],
                                                                    "saved_attribute_attributes": {
                                                                        "valueof": {
                                                                            "parameter_initial": [ 1 ],
                                                                            "parameter_linknames": 1,
                                                                            "parameter_longname": "gatethresh",
                                                                            "parameter_mmax": 1.0,
                                                                            "parameter_modmode": 3,
                                                                            "parameter_shortname": "gatethresh",
                                                                            "parameter_type": 0,
                                                                            "parameter_unitstyle": 1
                                                                        }
                                                                    },
                                                                    "varname": "gatethresh"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontface": 2,
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-5",
                                                                    "linecount": 2,
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 26.0, 544.0, 231.0, 31.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_linecount": 2,
                                                                    "presentation_rect": [ 257.0, 424.0, 226.0, 31.0 ],
                                                                    "text": "Note: uses PiPo from ISMM team at IRCAM Centre Pompidou http://ismm.ircam.fr/pipo/"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-29",
                                                                    "justification": 1,
                                                                    "maxclass": "live.line",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 330.0, 415.0, 5.0, 100.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 246.0, 7.0, 13.0, 448.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-27",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 3,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 2002.0, 207.0, 84.0, 22.0 ],
                                                                    "text": "pak bounds f f"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-24",
                                                                    "linecount": 3,
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 2002.0, 248.0, 80.0, 45.0 ],
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
                                                                    "patching_rect": [ 544.0, 5.0, 56.0, 22.0 ],
                                                                    "restore": {
                                                                        "clipmax": [ 1.0 ],
                                                                        "cliponoff": [ 1.0 ],
                                                                        "compexp": [ 0.5 ],
                                                                        "derivativewindow": [ 3.0 ],
                                                                        "fcut": [ 10.999999999999995 ],
                                                                        "framerate": [ 100.0 ],
                                                                        "gain": [ 2.5748031496062995 ],
                                                                        "gateonoff": [ 1.0 ],
                                                                        "gatethresh": [ 0.1 ],
                                                                        "maveragewindow": [ 1.0 ],
                                                                        "maxMonitor": [ 1.0 ],
                                                                        "minMonitor": [ 0.0 ],
                                                                        "mode": [ 0.0 ],
                                                                        "norm-mode": [ 1.0 ]
                                                                    },
                                                                    "text": "autopattr",
                                                                    "varname": "u933006469"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-28",
                                                                    "index": 15,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 2034.0, 49.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-202",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 2195.0, 110.0, 41.0, 22.0 ],
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
                                                                    "patching_rect": [ 2034.0, 110.0, 41.0, 22.0 ],
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
                                                                    "patching_rect": [ 2034.0, 84.0, 180.0, 22.0 ],
                                                                    "text": "unpack f f"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "bgcolor": [ 1.0, 1.0, 1.0, 0.4 ],
                                                                    "fontsize": 14.0,
                                                                    "id": "obj-26",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 964.0, -4.0, 239.0, 22.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 258.0, 7.0, 224.0, 22.0 ],
                                                                    "text": "advanced"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-25",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 1935.0, 142.5, 86.0, 19.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 62.0, 153.0, 86.0, 19.0 ],
                                                                    "text": "max clip (linear)"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-22",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 1553.0, 143.0, 64.0, 19.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 339.0, 104.0, 64.0, 19.0 ],
                                                                    "text": "norm mode"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-21",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 1413.0, 143.0, 36.0, 19.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 339.0, 82.0, 36.0, 19.0 ],
                                                                    "text": "mode"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-20",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 1196.0, 146.0, 118.0, 19.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 318.0, 55.5, 118.0, 19.0 ],
                                                                    "text": "derivative window size"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-17",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 1016.0, 146.0, 98.0, 19.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 318.0, 32.5, 98.0, 19.0 ],
                                                                    "text": "mean window size"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-15",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 825.0, 142.5, 116.0, 19.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 62.0, 128.9, 116.0, 19.0 ],
                                                                    "text": "gate threshold (linear)"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-12",
                                                                    "linecount": 2,
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 639.0, 146.0, 119.0, 31.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 62.0, 104.80000000000001, 182.0, 19.0 ],
                                                                    "text": "compression (<1.) / expansion (>1.)"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-10",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 520.0, 145.0, 67.0, 19.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 62.0, 80.7, 67.0, 19.0 ],
                                                                    "text": "gain (linear)"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-6",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 353.0, 146.0, 87.0, 19.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 61.5, 56.6, 87.0, 19.0 ],
                                                                    "text": "cutoff frequency"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-2",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 247.0, 146.0, 59.0, 19.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 62.0, 32.5, 59.0, 19.0 ],
                                                                    "text": "frame rate"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "bgcolor": [ 1.0, 1.0, 1.0, 0.4 ],
                                                                    "fontsize": 14.0,
                                                                    "id": "obj-9",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 96.0, -4.0, 239.0, 22.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 7.0, 7.0, 209.0, 22.0 ],
                                                                    "text": "accelerometer \"intensity\""
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-4",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 2244.0, 144.0, 112.0, 19.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 93.0, 212.0, 112.0, 19.0 ],
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
                                                                    "patching_rect": [ 2195.0, 144.0, 53.0, 18.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 13.0, 210.0, 53.0, 18.0 ],
                                                                    "saved_attribute_attributes": {
                                                                        "valueof": {
                                                                            "parameter_linknames": 1,
                                                                            "parameter_longname": "maxMonitor[3]",
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
                                                                    "patching_rect": [ 2034.0, 144.0, 53.0, 18.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 13.0, 232.0, 53.0, 18.0 ],
                                                                    "saved_attribute_attributes": {
                                                                        "valueof": {
                                                                            "parameter_linknames": 1,
                                                                            "parameter_longname": "minMonitor[3]",
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
                                                                    "patching_rect": [ 2088.0, 145.0, 109.0, 19.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 93.0, 233.0, 109.0, 19.0 ],
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
                                                                    "presentation_rect": [ 7.0, 264.0, 210.0, 22.0 ],
                                                                    "text": "Help [accelerometer \"intensity\"]"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontsize": 12.0,
                                                                    "id": "obj-3",
                                                                    "linecount": 12,
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 27.0, 373.0, 284.0, 167.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_linecount": 12,
                                                                    "presentation_rect": [ 7.0, 288.0, 210.0, 167.0 ],
                                                                    "text": "Compute an intensity, based on the raw acceleremeter data\nDerivate and integrate.\n\n@input: \n    -accelerometer [list]\n\n@output: \n    - intensity\n    - intensity X axis\n    - intensity Y axis\n    - intensity Z axis"
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
                                                                    "patching_rect": [ 2032.0, 23.0, 77.0, 22.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 7.0, 183.0, 210.0, 22.0 ],
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
                                                                    "id": "obj-175",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 1880.0, 175.0, 141.0, 22.0 ],
                                                                    "text": "intensity.maxclipvalue $1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-173",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 1742.0, 175.0, 112.0, 22.0 ],
                                                                    "text": "intensity.clipmax $1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-172",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 1626.0, 175.0, 101.0, 22.0 ],
                                                                    "text": "intensity.offset $1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-171",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 1451.0, 175.0, 129.0, 22.0 ],
                                                                    "text": "intensity.normmode $1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-170",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 1311.0, 175.0, 102.0, 22.0 ],
                                                                    "text": "intensity.mode $1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-168",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 1144.0, 175.0, 119.0, 22.0 ],
                                                                    "text": "intensity.deltasize $1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-165",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 964.0, 175.0, 175.0, 22.0 ],
                                                                    "text": "intensity.movingaveragesize $1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-163",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 773.0, 175.0, 129.0, 22.0 ],
                                                                    "text": "intensity.offsetvalue $1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-162",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 587.0, 175.0, 124.0, 22.0 ],
                                                                    "text": "intensity.powerexp $1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-161",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 468.0, 175.0, 94.0, 22.0 ],
                                                                    "text": "intensity.gain $1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-160",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 301.0, 175.0, 140.0, 22.0 ],
                                                                    "text": "intensity.cutfrequency $1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-159",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 195.0, 202.0, 77.0, 22.0 ],
                                                                    "text": "framerate $1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-157",
                                                                    "linecount": 3,
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 217.0, 305.0, 69.0, 49.0 ],
                                                                    "text": "s #0-intensity"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "annotation": "intensity.maxclipvalue",
                                                                    "annotation_name": "intensity.maxclipvalue",
                                                                    "fontsize": 12.0,
                                                                    "hint": "intensity.maxclipvalue",
                                                                    "id": "obj-154",
                                                                    "maxclass": "live.numbox",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "float" ],
                                                                    "parameter_enable": 1,
                                                                    "patching_rect": [ 1880.0, 143.0, 50.0, 18.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 10.0, 153.5, 53.0, 18.0 ],
                                                                    "saved_attribute_attributes": {
                                                                        "valueof": {
                                                                            "parameter_initial": [ 1 ],
                                                                            "parameter_linknames": 1,
                                                                            "parameter_longname": "clipmax",
                                                                            "parameter_mmax": 100.0,
                                                                            "parameter_modmode": 3,
                                                                            "parameter_shortname": "gain",
                                                                            "parameter_type": 0,
                                                                            "parameter_unitstyle": 1
                                                                        }
                                                                    },
                                                                    "varname": "clipmax"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-155",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 1880.0, 109.0, 41.0, 22.0 ],
                                                                    "text": "set $1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "annotation": "intensity.clipmax",
                                                                    "annotation_name": "intensity.clipmax",
                                                                    "hint": "intensity.clipmax",
                                                                    "id": "obj-151",
                                                                    "maxclass": "live.toggle",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "parameter_enable": 1,
                                                                    "patching_rect": [ 1742.0, 142.0, 15.0, 15.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 179.0, 154.0, 15.0, 15.0 ],
                                                                    "saved_attribute_attributes": {
                                                                        "valueof": {
                                                                            "parameter_enum": [ "off", "on" ],
                                                                            "parameter_linknames": 1,
                                                                            "parameter_longname": "cliponoff",
                                                                            "parameter_mmax": 1,
                                                                            "parameter_modmode": 0,
                                                                            "parameter_shortname": "cliponoff",
                                                                            "parameter_type": 2
                                                                        }
                                                                    },
                                                                    "varname": "cliponoff"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-152",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 1742.0, 109.0, 41.0, 22.0 ],
                                                                    "text": "set $1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "annotation": "intensity.offset",
                                                                    "annotation_name": "intensity.offset",
                                                                    "hint": "intensity.offset",
                                                                    "id": "obj-150",
                                                                    "maxclass": "live.toggle",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "parameter_enable": 1,
                                                                    "patching_rect": [ 1627.0, 142.0, 15.0, 15.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 179.0, 130.0, 15.0, 15.0 ],
                                                                    "saved_attribute_attributes": {
                                                                        "valueof": {
                                                                            "parameter_enum": [ "off", "on" ],
                                                                            "parameter_linknames": 1,
                                                                            "parameter_longname": "gateonoff",
                                                                            "parameter_mmax": 1,
                                                                            "parameter_modmode": 0,
                                                                            "parameter_shortname": "gateonoff",
                                                                            "parameter_type": 2
                                                                        }
                                                                    },
                                                                    "varname": "gateonoff"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-134",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 1626.0, 109.0, 41.0, 22.0 ],
                                                                    "text": "set $1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "annotation": "intensity.normmode (default 1) [0 3]",
                                                                    "annotation_name": "intensity.normmode (default 1) [0 3]",
                                                                    "fontsize": 13.0,
                                                                    "hint": "intensity.normmode (default 1) [0 3]",
                                                                    "id": "obj-136",
                                                                    "maxclass": "live.menu",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 3,
                                                                    "outlettype": [ "", "", "float" ],
                                                                    "parameter_enable": 1,
                                                                    "patching_rect": [ 1451.0, 143.0, 100.0, 19.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 266.0, 104.0, 71.0, 19.0 ],
                                                                    "saved_attribute_attributes": {
                                                                        "valueof": {
                                                                            "parameter_enum": [ "Pre", "Post", "meanPre", "meanPost" ],
                                                                            "parameter_longname": "live.menu[1]",
                                                                            "parameter_mmax": 3,
                                                                            "parameter_modmode": 0,
                                                                            "parameter_shortname": "live.menu",
                                                                            "parameter_type": 2
                                                                        }
                                                                    },
                                                                    "varname": "norm-mode"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-137",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 1451.0, 109.0, 41.0, 22.0 ],
                                                                    "text": "set $1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "annotation": "intensity.mode (default 0) [0 3]",
                                                                    "annotation_name": "intensity.mode (default 0) [0 3]",
                                                                    "fontsize": 13.0,
                                                                    "hint": "intensity.mode (default 0) [0 3]",
                                                                    "id": "obj-139",
                                                                    "maxclass": "live.menu",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 3,
                                                                    "outlettype": [ "", "", "float" ],
                                                                    "parameter_enable": 1,
                                                                    "patching_rect": [ 1311.0, 143.0, 100.0, 19.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 266.0, 82.0, 71.0, 19.0 ],
                                                                    "saved_attribute_attributes": {
                                                                        "valueof": {
                                                                            "parameter_enum": [ "absolute", "positive", "negative", "square" ],
                                                                            "parameter_longname": "live.menu",
                                                                            "parameter_mmax": 3,
                                                                            "parameter_modmode": 0,
                                                                            "parameter_shortname": "live.menu",
                                                                            "parameter_type": 2
                                                                        }
                                                                    },
                                                                    "varname": "mode"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-140",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 1311.0, 109.0, 41.0, 22.0 ],
                                                                    "text": "set $1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "annotation": "@intensity.deltasize",
                                                                    "annotation_name": "@intensity.deltasize",
                                                                    "fontsize": 12.0,
                                                                    "hint": "@intensity.deltasize",
                                                                    "id": "obj-142",
                                                                    "maxclass": "live.numbox",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "float" ],
                                                                    "parameter_enable": 1,
                                                                    "patching_rect": [ 1144.0, 144.0, 50.0, 18.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 266.0, 56.0, 50.0, 18.0 ],
                                                                    "saved_attribute_attributes": {
                                                                        "valueof": {
                                                                            "parameter_linknames": 1,
                                                                            "parameter_longname": "derivativewindow",
                                                                            "parameter_mmax": 2049.0,
                                                                            "parameter_mmin": 3.0,
                                                                            "parameter_modmax": 2049.0,
                                                                            "parameter_modmin": 3.0,
                                                                            "parameter_modmode": 4,
                                                                            "parameter_shortname": "maveragewindow",
                                                                            "parameter_type": 0,
                                                                            "parameter_unitstyle": 0
                                                                        }
                                                                    },
                                                                    "varname": "derivativewindow"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-143",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 1144.0, 110.0, 41.0, 22.0 ],
                                                                    "text": "set $1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-145",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 964.0, 110.0, 41.0, 22.0 ],
                                                                    "text": "set $1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "annotation": "@intensity.movingaveragesize",
                                                                    "annotation_name": "@intensity.movingaveragesize",
                                                                    "fontsize": 12.0,
                                                                    "hint": "@intensity.movingaveragesize",
                                                                    "id": "obj-146",
                                                                    "maxclass": "live.numbox",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "float" ],
                                                                    "parameter_enable": 1,
                                                                    "patching_rect": [ 964.0, 144.0, 50.0, 18.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 266.0, 33.0, 50.0, 18.0 ],
                                                                    "saved_attribute_attributes": {
                                                                        "valueof": {
                                                                            "parameter_linknames": 1,
                                                                            "parameter_longname": "maveragewindow",
                                                                            "parameter_mmax": 2048.0,
                                                                            "parameter_mmin": 1.0,
                                                                            "parameter_modmode": 4,
                                                                            "parameter_shortname": "maveragewindow",
                                                                            "parameter_type": 0,
                                                                            "parameter_unitstyle": 0
                                                                        }
                                                                    },
                                                                    "varname": "maveragewindow"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-129",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 773.0, 109.0, 41.0, 22.0 ],
                                                                    "text": "set $1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "annotation": "@intensity.powerexp",
                                                                    "annotation_name": "@intensity.powerexp",
                                                                    "fontsize": 12.0,
                                                                    "hint": "@intensity.powerexp",
                                                                    "id": "obj-125",
                                                                    "maxclass": "live.numbox",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "float" ],
                                                                    "parameter_enable": 1,
                                                                    "patching_rect": [ 587.0, 143.0, 50.0, 18.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 10.0, 105.30000000000001, 53.0, 18.0 ],
                                                                    "saved_attribute_attributes": {
                                                                        "valueof": {
                                                                            "parameter_initial": [ 1 ],
                                                                            "parameter_linknames": 1,
                                                                            "parameter_longname": "compexp",
                                                                            "parameter_mmax": 10.0,
                                                                            "parameter_mmin": 0.1,
                                                                            "parameter_modmode": 3,
                                                                            "parameter_shortname": "compexp",
                                                                            "parameter_type": 0,
                                                                            "parameter_unitstyle": 1
                                                                        }
                                                                    },
                                                                    "varname": "compexp"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-126",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 587.0, 109.0, 41.0, 22.0 ],
                                                                    "text": "set $1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "annotation": "@intensity.gain",
                                                                    "annotation_name": "@intensity.gain",
                                                                    "fontsize": 12.0,
                                                                    "hint": "@intensity.gain",
                                                                    "id": "obj-86",
                                                                    "maxclass": "live.numbox",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "float" ],
                                                                    "parameter_enable": 1,
                                                                    "patching_rect": [ 468.0, 143.0, 50.0, 18.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 10.0, 81.2, 53.0, 18.0 ],
                                                                    "saved_attribute_attributes": {
                                                                        "valueof": {
                                                                            "parameter_initial": [ 1 ],
                                                                            "parameter_linknames": 1,
                                                                            "parameter_longname": "gain",
                                                                            "parameter_mmax": 40.0,
                                                                            "parameter_modmode": 3,
                                                                            "parameter_shortname": "gain",
                                                                            "parameter_type": 0,
                                                                            "parameter_unitstyle": 1
                                                                        }
                                                                    },
                                                                    "varname": "gain"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-97",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 468.0, 109.0, 41.0, 22.0 ],
                                                                    "text": "set $1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "annotation": "@intensity.cutfrequency",
                                                                    "annotation_name": "@intensity.cutfrequency",
                                                                    "appearance": 2,
                                                                    "fontsize": 12.0,
                                                                    "hint": "@intensity.cutfrequency",
                                                                    "id": "obj-82",
                                                                    "maxclass": "live.numbox",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "float" ],
                                                                    "parameter_enable": 1,
                                                                    "patching_rect": [ 301.0, 144.0, 53.0, 18.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 10.0, 57.1, 53.0, 18.0 ],
                                                                    "prototypename": "freq",
                                                                    "saved_attribute_attributes": {
                                                                        "valueof": {
                                                                            "parameter_exponent": 3.333333,
                                                                            "parameter_initial": [ 10.999999999999995 ],
                                                                            "parameter_initial_enable": 1,
                                                                            "parameter_linknames": 1,
                                                                            "parameter_longname": "fcut",
                                                                            "parameter_mmax": 1000.0,
                                                                            "parameter_mmin": 0.1,
                                                                            "parameter_modmode": 0,
                                                                            "parameter_shortname": "fcut",
                                                                            "parameter_type": 0,
                                                                            "parameter_unitstyle": 3
                                                                        }
                                                                    },
                                                                    "varname": "fcut"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-81",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 301.0, 110.0, 41.0, 22.0 ],
                                                                    "text": "set $1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-74",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 195.0, 110.0, 41.0, 22.0 ],
                                                                    "text": "set $1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "annotation": "@framerate",
                                                                    "annotation_name": "@framerate",
                                                                    "fontsize": 12.0,
                                                                    "hint": "@framerate",
                                                                    "id": "obj-42",
                                                                    "maxclass": "live.numbox",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "float" ],
                                                                    "parameter_enable": 1,
                                                                    "patching_rect": [ 195.0, 144.0, 53.0, 18.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 10.0, 33.0, 53.0, 18.0 ],
                                                                    "saved_attribute_attributes": {
                                                                        "valueof": {
                                                                            "parameter_linknames": 1,
                                                                            "parameter_longname": "framerate",
                                                                            "parameter_mmax": 1000.0,
                                                                            "parameter_modmode": 3,
                                                                            "parameter_shortname": "framerate",
                                                                            "parameter_type": 0,
                                                                            "parameter_unitstyle": 1
                                                                        }
                                                                    },
                                                                    "varname": "framerate"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-178",
                                                                    "index": 3,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 195.0, 49.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-179",
                                                                    "index": 4,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 301.0, 49.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-180",
                                                                    "index": 1,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 97.0, 49.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-184",
                                                                    "index": 5,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 468.0, 49.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-185",
                                                                    "index": 2,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 138.0, 49.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-186",
                                                                    "index": 6,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 587.0, 49.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-187",
                                                                    "index": 7,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 773.0, 49.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-188",
                                                                    "index": 8,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 964.0, 49.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-189",
                                                                    "index": 9,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 1144.0, 49.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-190",
                                                                    "index": 10,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 1311.0, 49.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-191",
                                                                    "index": 11,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 1451.0, 49.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-192",
                                                                    "index": 12,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 1626.0, 49.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-193",
                                                                    "index": 13,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 1742.0, 49.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-194",
                                                                    "index": 14,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 1880.0, 49.0, 30.0, 30.0 ]
                                                                }
                                                            }
                                                        ],
                                                        "lines": [
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-162", 0 ],
                                                                    "source": [ "obj-125", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-125", 0 ],
                                                                    "source": [ "obj-126", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-31", 0 ],
                                                                    "source": [ "obj-129", 0 ]
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
                                                                    "destination": [ "obj-150", 0 ],
                                                                    "source": [ "obj-134", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-171", 0 ],
                                                                    "source": [ "obj-136", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-136", 0 ],
                                                                    "source": [ "obj-137", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-170", 0 ],
                                                                    "source": [ "obj-139", 0 ]
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
                                                                    "destination": [ "obj-139", 0 ],
                                                                    "source": [ "obj-140", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-168", 0 ],
                                                                    "source": [ "obj-142", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-142", 0 ],
                                                                    "source": [ "obj-143", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-146", 0 ],
                                                                    "source": [ "obj-145", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-165", 0 ],
                                                                    "source": [ "obj-146", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-172", 0 ],
                                                                    "source": [ "obj-150", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-173", 0 ],
                                                                    "source": [ "obj-151", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-151", 0 ],
                                                                    "source": [ "obj-152", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-175", 0 ],
                                                                    "source": [ "obj-154", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-154", 0 ],
                                                                    "source": [ "obj-155", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-157", 0 ],
                                                                    "midpoints": [ 204.5, 240.0, 226.5, 240.0 ],
                                                                    "source": [ "obj-159", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-157", 0 ],
                                                                    "midpoints": [ 310.5, 240.0, 226.5, 240.0 ],
                                                                    "source": [ "obj-160", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-157", 0 ],
                                                                    "midpoints": [ 477.5, 240.0, 226.5, 240.0 ],
                                                                    "source": [ "obj-161", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-157", 0 ],
                                                                    "midpoints": [ 596.5, 240.0, 226.5, 240.0 ],
                                                                    "source": [ "obj-162", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-157", 0 ],
                                                                    "midpoints": [ 782.5, 240.0, 226.5, 240.0 ],
                                                                    "source": [ "obj-163", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-157", 0 ],
                                                                    "midpoints": [ 973.5, 240.0, 226.5, 240.0 ],
                                                                    "source": [ "obj-165", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-157", 0 ],
                                                                    "midpoints": [ 1153.5, 261.5, 226.5, 261.5 ],
                                                                    "source": [ "obj-168", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-157", 0 ],
                                                                    "midpoints": [ 1320.5, 261.5, 226.5, 261.5 ],
                                                                    "source": [ "obj-170", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-157", 0 ],
                                                                    "midpoints": [ 1460.5, 261.5, 226.5, 261.5 ],
                                                                    "source": [ "obj-171", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-157", 0 ],
                                                                    "midpoints": [ 1635.5, 261.5, 226.5, 261.5 ],
                                                                    "source": [ "obj-172", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-157", 0 ],
                                                                    "midpoints": [ 1751.5, 261.5, 226.5, 261.5 ],
                                                                    "source": [ "obj-173", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-157", 0 ],
                                                                    "midpoints": [ 1889.5, 261.5, 226.5, 261.5 ],
                                                                    "source": [ "obj-175", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-74", 0 ],
                                                                    "source": [ "obj-178", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-81", 0 ],
                                                                    "source": [ "obj-179", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-82", 0 ],
                                                                    "source": [ "obj-180", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-97", 0 ],
                                                                    "source": [ "obj-184", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-86", 0 ],
                                                                    "source": [ "obj-185", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-126", 0 ],
                                                                    "source": [ "obj-186", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-129", 0 ],
                                                                    "source": [ "obj-187", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-145", 0 ],
                                                                    "source": [ "obj-188", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-143", 0 ],
                                                                    "source": [ "obj-189", 0 ]
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
                                                                    "destination": [ "obj-140", 0 ],
                                                                    "source": [ "obj-190", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-137", 0 ],
                                                                    "source": [ "obj-191", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-134", 0 ],
                                                                    "source": [ "obj-192", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-152", 0 ],
                                                                    "source": [ "obj-193", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-155", 0 ],
                                                                    "source": [ "obj-194", 0 ]
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
                                                                    "destination": [ "obj-163", 0 ],
                                                                    "source": [ "obj-31", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-159", 0 ],
                                                                    "order": 0,
                                                                    "source": [ "obj-42", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-19", 0 ],
                                                                    "order": 1,
                                                                    "source": [ "obj-42", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-42", 0 ],
                                                                    "source": [ "obj-74", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-82", 0 ],
                                                                    "source": [ "obj-81", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-160", 0 ],
                                                                    "source": [ "obj-82", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-161", 0 ],
                                                                    "source": [ "obj-86", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-86", 0 ],
                                                                    "source": [ "obj-97", 0 ]
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
                                                    "patching_rect": [ 208.0, 210.0, 1730.0, 21.0 ],
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
                                                    "id": "obj-156",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "", "" ],
                                                    "patching_rect": [ 1919.0, 120.0, 162.0, 22.0 ],
                                                    "text": "getattr intensity.maxclipvalue"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-153",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "", "" ],
                                                    "patching_rect": [ 1781.0, 120.0, 133.0, 22.0 ],
                                                    "text": "getattr intensity.clipmax"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-135",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "", "" ],
                                                    "patching_rect": [ 1651.0, 120.0, 121.0, 22.0 ],
                                                    "text": "getattr intensity.offset"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-138",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "", "" ],
                                                    "patching_rect": [ 1491.0, 120.0, 150.0, 22.0 ],
                                                    "text": "getattr intensity.normmode"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-141",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "", "" ],
                                                    "patching_rect": [ 1350.0, 120.0, 122.0, 22.0 ],
                                                    "text": "getattr intensity.mode"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-144",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "", "" ],
                                                    "patching_rect": [ 1205.0, 120.0, 140.0, 22.0 ],
                                                    "text": "getattr intensity.deltasize"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-147",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "", "" ],
                                                    "patching_rect": [ 1004.0, 120.0, 196.0, 22.0 ],
                                                    "text": "getattr intensity.movingaveragesize"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-130",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "", "" ],
                                                    "patching_rect": [ 846.0, 120.0, 150.0, 22.0 ],
                                                    "text": "getattr intensity.offsetvalue"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-127",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "", "" ],
                                                    "patching_rect": [ 700.0, 120.0, 144.0, 22.0 ],
                                                    "text": "getattr intensity.powerexp"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-124",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "", "" ],
                                                    "patching_rect": [ 581.0, 120.0, 115.0, 22.0 ],
                                                    "text": "getattr intensity.gain"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-76",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "", "" ],
                                                    "patching_rect": [ 414.0, 120.0, 161.0, 22.0 ],
                                                    "text": "getattr intensity.cutfrequency"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-35",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "", "" ],
                                                    "patching_rect": [ 308.0, 120.0, 97.0, 22.0 ],
                                                    "text": "getattr framerate"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "id": "obj-89",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 652.0, 465.0, 204.0, 24.0 ],
                                                    "text": "window size for derivation (delta)"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "attr": "intensity.deltasize",
                                                    "id": "obj-90",
                                                    "lock": 1,
                                                    "maxclass": "attrui",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 414.0, 466.0, 232.0, 22.0 ],
                                                    "text_width": 174.9999806880951
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "id": "obj-92",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 652.0, 439.0, 154.0, 24.0 ],
                                                    "text": "pre-filtering (optional)"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "attr": "intensity.movingaveragesize",
                                                    "id": "obj-93",
                                                    "lock": 1,
                                                    "maxclass": "attrui",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 414.0, 440.0, 232.0, 22.0 ],
                                                    "text_width": 173.9999806880951
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "id": "obj-94",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 1238.0, 480.0, 176.0, 24.0 ],
                                                    "text": "frame rate of data stream"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "attr": "framerate",
                                                    "id": "obj-98",
                                                    "lock": 1,
                                                    "maxclass": "attrui",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 1060.0, 481.0, 176.0, 22.0 ],
                                                    "text_width": 125.0
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "id": "obj-101",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 653.0, 543.0, 135.0, 24.0 ],
                                                    "text": "Remove offset value"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "attr": "intensity.offset",
                                                    "id": "obj-29",
                                                    "lock": 1,
                                                    "maxclass": "attrui",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 414.0, 544.0, 231.0, 22.0 ],
                                                    "text_width": 156.0
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "id": "obj-102",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 652.0, 517.0, 132.0, 24.0 ],
                                                    "text": "Normalisation mode"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "attr": "intensity.normmode",
                                                    "id": "obj-103",
                                                    "lock": 1,
                                                    "maxclass": "attrui",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 414.0, 518.0, 231.0, 22.0 ],
                                                    "text_width": 156.0
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "id": "obj-25",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 653.0, 596.0, 131.0, 24.0 ],
                                                    "text": "Maximum clip value"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "id": "obj-104",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 653.0, 569.0, 118.0, 24.0 ],
                                                    "text": "Clip at max value"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "id": "obj-105",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 1239.0, 585.0, 102.0, 24.0 ],
                                                    "text": "gate threshold"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "id": "obj-115",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 653.0, 491.0, 322.0, 24.0 ],
                                                    "text": "Input values mode: absolute positive, negative,  square "
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "id": "obj-116",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 1238.0, 506.0, 130.0, 24.0 ],
                                                    "text": "Cut Frequency (Hz)"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "id": "obj-117",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 1238.0, 532.0, 90.0, 24.0 ],
                                                    "text": "Overall gain"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "id": "obj-118",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 1238.0, 558.0, 125.0, 24.0 ],
                                                    "text": "comp/exp <1. / >1."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "attr": "intensity.powerexp",
                                                    "id": "obj-119",
                                                    "lock": 1,
                                                    "maxclass": "attrui",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 1060.0, 559.0, 176.0, 22.0 ],
                                                    "text_width": 125.0
                                                }
                                            },
                                            {
                                                "box": {
                                                    "attr": "intensity.mode",
                                                    "id": "obj-120",
                                                    "lock": 1,
                                                    "maxclass": "attrui",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 414.0, 492.0, 231.0, 22.0 ],
                                                    "text_width": 156.0
                                                }
                                            },
                                            {
                                                "box": {
                                                    "attr": "intensity.cutfrequency",
                                                    "id": "obj-28",
                                                    "lock": 1,
                                                    "maxclass": "attrui",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 1060.0, 507.0, 176.0, 22.0 ],
                                                    "text_width": 125.0
                                                }
                                            },
                                            {
                                                "box": {
                                                    "attr": "intensity.gain",
                                                    "id": "obj-26",
                                                    "lock": 1,
                                                    "maxclass": "attrui",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 1060.0, 533.0, 176.0, 22.0 ],
                                                    "text_width": 125.0
                                                }
                                            },
                                            {
                                                "box": {
                                                    "attr": "intensity.offsetvalue",
                                                    "id": "obj-121",
                                                    "lock": 1,
                                                    "maxclass": "attrui",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 1060.0, 586.0, 176.0, 22.0 ],
                                                    "text_width": 125.0
                                                }
                                            },
                                            {
                                                "box": {
                                                    "attr": "intensity.maxclipvalue",
                                                    "id": "obj-122",
                                                    "lock": 1,
                                                    "maxclass": "attrui",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 414.0, 597.0, 232.0, 22.0 ],
                                                    "text_width": 150.0
                                                }
                                            },
                                            {
                                                "box": {
                                                    "attr": "intensity.clipmax",
                                                    "id": "obj-123",
                                                    "lock": 1,
                                                    "maxclass": "attrui",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 414.0, 570.0, 232.0, 22.0 ],
                                                    "text_width": 150.0
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-34",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "bang" ],
                                                    "patching_rect": [ 31.0, 288.0, 60.19417530298233, 22.0 ],
                                                    "text": "loadbang"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-53",
                                                    "linecount": 10,
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 31.0, 345.0, 158.0, 143.0 ],
                                                    "text": "framerate 100, intensity.mode abs, intensity.normmode L2post, intensity.powerexp 0.5, intensity.cutfrequency 11, intensity.gain 1., intensity.offset 1, intensity.offsetvalue 0.1, intensity.clipmax 1, intensity.maxclipvalue 1."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 11.0,
                                                    "id": "obj-63",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 4,
                                                    "outlettype": [ "float", "float", "float", "float" ],
                                                    "patching_rect": [ 246.0, 797.0, 100.0, 21.0 ],
                                                    "text": "unpack f f f f"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "obj-66",
                                                    "linecount": 9,
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "float", "" ],
                                                    "patching_rect": [ 246.0, 659.0, 223.0, 129.0 ],
                                                    "text": "pipo intensity @framerate 100 @intensity.mode abs @intensity.normmode L2post @intensity.powerexp 0.5 @intensity.cutfrequency 11 @intensity.gain 1. @intensity.offset 1 @intensity.offsetvalue 0.1 @intensity.clipmax 1 @intensity.maxclipvalue 1."
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
                                                    "patching_rect": [ 622.0, 56.0, 89.0, 35.0 ],
                                                    "text": "mubu.scroll configuration"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "mubu.scroll configuration",
                                                    "id": "obj-17",
                                                    "index": 4,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 589.0, 60.0, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "gain [float]",
                                                    "id": "obj-60",
                                                    "index": 3,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 330.0, 60.0, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "cutoff frequency",
                                                    "id": "obj-61",
                                                    "index": 2,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 208.0, 60.0, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "intensity z axis",
                                                    "id": "obj-5",
                                                    "index": 4,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 327.0, 835.0, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "intensity y axis",
                                                    "id": "obj-4",
                                                    "index": 3,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 300.0, 835.0, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "intensity x axis",
                                                    "id": "obj-43",
                                                    "index": 2,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 273.0, 835.0, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "aaccelerometer data [list of 3 floats]",
                                                    "id": "obj-91",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 14.0, 60.0, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 13.0,
                                                    "id": "obj-57",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 3.0, 5.0, 88.0, 21.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 0.0, 1.0, 82.0, 21.0 ],
                                                    "text": "Acc.Intensity"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "autobounds": 0,
                                                    "autoupdate": 120.0,
                                                    "bgcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                                    "bgcolordefault": 1,
                                                    "bounds": [ 0.0, 1.0 ],
                                                    "colormode": "fgcolor",
                                                    "colorpattern": [ "red", "green", "blue", "" ],
                                                    "domainruler": 0,
                                                    "domainruler_size": 15,
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
                                                    "patching_rect": [ 541.0, 875.0, 10.0, 10.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 0.0, 23.0, 290.0, 109.0 ],
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
                                            },
                                            {
                                                "box": {
                                                    "attr": "framerate",
                                                    "id": "obj-3",
                                                    "maxclass": "attrui",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 260.0, 608.0, 150.0, 22.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-1", 0 ],
                                                    "source": [ "obj-10", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-9", 0 ],
                                                    "midpoints": [ 1947.1153846153845, 982.75, 882.5, 982.75 ],
                                                    "source": [ "obj-10", 12 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-9", 0 ],
                                                    "midpoints": [ 1849.7307692307693, 982.75, 882.5, 982.75 ],
                                                    "source": [ "obj-10", 11 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-9", 0 ],
                                                    "midpoints": [ 1752.3461538461538, 982.75, 882.5, 982.75 ],
                                                    "source": [ "obj-10", 10 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-9", 0 ],
                                                    "midpoints": [ 1654.9615384615386, 982.75, 882.5, 982.75 ],
                                                    "source": [ "obj-10", 9 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-9", 0 ],
                                                    "midpoints": [ 1557.576923076923, 982.75, 882.5, 982.75 ],
                                                    "source": [ "obj-10", 8 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-9", 0 ],
                                                    "midpoints": [ 1460.1923076923076, 982.75, 882.5, 982.75 ],
                                                    "source": [ "obj-10", 7 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-9", 0 ],
                                                    "midpoints": [ 1362.8076923076924, 982.75, 882.5, 982.75 ],
                                                    "source": [ "obj-10", 6 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-9", 0 ],
                                                    "midpoints": [ 1265.423076923077, 982.75, 882.5, 982.75 ],
                                                    "source": [ "obj-10", 5 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-9", 0 ],
                                                    "midpoints": [ 1168.0384615384614, 982.75, 882.5, 982.75 ],
                                                    "source": [ "obj-10", 4 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-9", 0 ],
                                                    "midpoints": [ 1070.6538461538462, 982.75, 882.5, 982.75 ],
                                                    "source": [ "obj-10", 3 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-9", 0 ],
                                                    "midpoints": [ 973.2692307692307, 982.75, 882.5, 982.75 ],
                                                    "source": [ "obj-10", 2 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-9", 0 ],
                                                    "midpoints": [ 875.8846153846154, 982.75, 882.5, 982.75 ],
                                                    "source": [ "obj-10", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-66", 0 ],
                                                    "hidden": 1,
                                                    "midpoints": [ 423.5, 631.9230803251266, 255.5, 631.9230803251266 ],
                                                    "source": [ "obj-103", 0 ]
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
                                                    "destination": [ "obj-66", 0 ],
                                                    "hidden": 1,
                                                    "midpoints": [ 1069.5, 631.9615418314934, 255.5, 631.9615418314934 ],
                                                    "source": [ "obj-119", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-6", 0 ],
                                                    "source": [ "obj-12", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-66", 0 ],
                                                    "hidden": 1,
                                                    "midpoints": [ 423.5, 632.3846188187599, 255.5, 632.3846188187599 ],
                                                    "source": [ "obj-120", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-66", 0 ],
                                                    "hidden": 1,
                                                    "midpoints": [ 1069.5, 631.9615418314934, 255.5, 631.9615418314934 ],
                                                    "source": [ "obj-121", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-66", 0 ],
                                                    "hidden": 1,
                                                    "midpoints": [ 423.5, 632.4230803251266, 255.5, 632.4230803251266 ],
                                                    "source": [ "obj-122", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-66", 0 ],
                                                    "hidden": 1,
                                                    "midpoints": [ 423.5, 632.4230803251266, 255.5, 632.4230803251266 ],
                                                    "source": [ "obj-123", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-195", 4 ],
                                                    "source": [ "obj-124", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-66", 0 ],
                                                    "midpoints": [ 638.5, 150.5, 255.5, 150.5 ],
                                                    "source": [ "obj-124", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-195", 5 ],
                                                    "source": [ "obj-127", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-66", 0 ],
                                                    "midpoints": [ 772.0, 150.5, 255.5, 150.5 ],
                                                    "source": [ "obj-127", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-195", 0 ],
                                                    "source": [ "obj-13", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-195", 6 ],
                                                    "source": [ "obj-130", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-66", 0 ],
                                                    "midpoints": [ 921.0, 150.5, 255.5, 150.5 ],
                                                    "source": [ "obj-130", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-195", 11 ],
                                                    "source": [ "obj-135", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-66", 0 ],
                                                    "midpoints": [ 1711.5, 282.5, 255.5, 282.5 ],
                                                    "source": [ "obj-135", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-195", 10 ],
                                                    "source": [ "obj-138", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-66", 0 ],
                                                    "midpoints": [ 1566.0, 282.5, 255.5, 282.5 ],
                                                    "source": [ "obj-138", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-195", 9 ],
                                                    "source": [ "obj-141", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-66", 0 ],
                                                    "midpoints": [ 1411.0, 282.5, 255.5, 282.5 ],
                                                    "source": [ "obj-141", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-195", 8 ],
                                                    "source": [ "obj-144", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-66", 0 ],
                                                    "midpoints": [ 1275.0, 282.5, 255.5, 282.5 ],
                                                    "source": [ "obj-144", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-195", 7 ],
                                                    "source": [ "obj-147", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-66", 0 ],
                                                    "midpoints": [ 1102.0, 282.5, 255.5, 282.5 ],
                                                    "source": [ "obj-147", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-195", 12 ],
                                                    "source": [ "obj-153", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-66", 0 ],
                                                    "midpoints": [ 1847.5, 282.5, 255.5, 282.5 ],
                                                    "source": [ "obj-153", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-195", 13 ],
                                                    "source": [ "obj-156", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-66", 0 ],
                                                    "midpoints": [ 2000.0, 282.5, 255.5, 282.5 ],
                                                    "source": [ "obj-156", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-66", 0 ],
                                                    "source": [ "obj-157", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-113", 0 ],
                                                    "midpoints": [ 598.5, 344.0546875, 545.0, 344.0546875 ],
                                                    "source": [ "obj-17", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-2", 0 ],
                                                    "source": [ "obj-19", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-2", 0 ],
                                                    "source": [ "obj-195", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-113", 0 ],
                                                    "midpoints": [ 1961.5, 420.640625, 545.0, 420.640625 ],
                                                    "source": [ "obj-197", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-195", 14 ],
                                                    "source": [ "obj-197", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-3", 0 ],
                                                    "source": [ "obj-2", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-19", 0 ],
                                                    "source": [ "obj-21", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-66", 0 ],
                                                    "hidden": 1,
                                                    "midpoints": [ 1069.5, 632.4230803251266, 255.5, 632.4230803251266 ],
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
                                                    "destination": [ "obj-66", 0 ],
                                                    "hidden": 1,
                                                    "midpoints": [ 1069.5, 631.9615418314934, 255.5, 631.9615418314934 ],
                                                    "source": [ "obj-28", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-66", 0 ],
                                                    "hidden": 1,
                                                    "midpoints": [ 423.5, 632.8846188187599, 255.5, 632.8846188187599 ],
                                                    "source": [ "obj-29", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-66", 0 ],
                                                    "source": [ "obj-3", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-31", 0 ],
                                                    "source": [ "obj-30", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-10", 0 ],
                                                    "source": [ "obj-31", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-53", 0 ],
                                                    "disabled": 1,
                                                    "source": [ "obj-34", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-195", 2 ],
                                                    "source": [ "obj-35", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-66", 0 ],
                                                    "midpoints": [ 356.5, 150.5, 255.5, 150.5 ],
                                                    "source": [ "obj-35", 1 ]
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
                                                    "destination": [ "obj-13", 0 ],
                                                    "source": [ "obj-40", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-66", 0 ],
                                                    "source": [ "obj-53", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-113", 0 ],
                                                    "source": [ "obj-6", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-195", 1 ],
                                                    "source": [ "obj-60", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-195", 0 ],
                                                    "source": [ "obj-61", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-113", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-63", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-4", 0 ],
                                                    "source": [ "obj-63", 2 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-43", 0 ],
                                                    "source": [ "obj-63", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-5", 0 ],
                                                    "source": [ "obj-63", 3 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-8", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-63", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-63", 0 ],
                                                    "source": [ "obj-66", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-113", 0 ],
                                                    "source": [ "obj-7", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-195", 3 ],
                                                    "source": [ "obj-76", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-66", 0 ],
                                                    "midpoints": [ 494.5, 150.5, 255.5, 150.5 ],
                                                    "source": [ "obj-76", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-66", 0 ],
                                                    "midpoints": [ 423.5, 632.6710515022278, 255.5, 632.6710515022278 ],
                                                    "source": [ "obj-90", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-66", 0 ],
                                                    "source": [ "obj-91", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-66", 0 ],
                                                    "midpoints": [ 423.5, 631.6710515022278, 255.5, 631.6710515022278 ],
                                                    "source": [ "obj-93", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-66", 0 ],
                                                    "midpoints": [ 1069.5, 633.3825933337212, 255.5, 633.3825933337212 ],
                                                    "source": [ "obj-98", 0 ]
                                                }
                                            }
                                        ],
                                        "toolbaradditions": [ "s2n", "Modalys", "Gestural-Sound-Toolkit" ]
                                    },
                                    "patching_rect": [ 148.24999999999994, 432.0, 293.0, 136.0 ],
                                    "varname": "gst.acc.intensity",
                                    "viewvisibility": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-23",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 422.24999999999994, 780.0, 19.0, 19.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.819608, 0.819608, 0.819608, 0.0 ],
                                    "bgmode": 2,
                                    "border": 1,
                                    "clickthrough": 0,
                                    "embed": 1,
                                    "enablehscroll": 0,
                                    "enablevscroll": 0,
                                    "id": "obj-25",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "gst.gate.maxpat",
                                    "numinlets": 5,
                                    "numoutlets": 2,
                                    "offset": [ 1.0, -4.0 ],
                                    "outlettype": [ "", "int" ],
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
                                        "rect": [ 34.0, 93.0, 132.0, 129.0 ],
                                        "openinpresentation": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-42",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 84.0, 529.0, 103.0, 22.0 ],
                                                    "text": "switch 2 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-35",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 1196.5, 108.0, 80.0, 21.0 ],
                                                    "text": "s #0-bypass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "bypass",
                                                    "id": "obj-41",
                                                    "index": 4,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 822.0, 39.0, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-39",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 822.0, 68.0, 80.0, 21.0 ],
                                                    "text": "s #0-bypass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-37",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 1297.5, 153.0, 93.0, 21.0 ],
                                                    "text": "s #0-gate-level"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-20",
                                                    "maxclass": "newobj",
                                                    "numinlets": 5,
                                                    "numoutlets": 5,
                                                    "outlettype": [ "", "", "", "", "" ],
                                                    "patching_rect": [ 1146.0, 67.5, 221.0, 22.0 ],
                                                    "text": "route done bypass continuous threshold"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-29",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 1348.0, 124.0, 111.0, 22.0 ],
                                                    "text": "s #0-mubu-scroll"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-30",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 1247.0, 177.0, 98.0, 21.0 ],
                                                    "text": "s #0-continuous"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-32",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 1348.0, 95.0, 104.0, 22.0 ],
                                                    "text": "routepass bounds"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-33",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 1093.0, 40.5, 72.0, 22.0 ],
                                                    "text": "patcherargs"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-31",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 339.5, 84.5, 50.0, 22.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-17",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 84.0, 235.0, 29.5, 22.0 ],
                                                    "text": "+ 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-38",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 85.0, 176.0, 41.0, 22.0 ],
                                                    "text": "set $1"
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
                                                    "patching_rect": [ 85.0, 206.0, 15.0, 15.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 37.0, 5.0, 15.0, 15.0 ],
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
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-36",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 59.0, 147.0, 78.0, 21.0 ],
                                                    "text": "r #0-bypass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-28",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 307.0, 26.0, 97.0, 21.0 ],
                                                    "text": "r #0-continuous"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-26",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 307.0, 82.0, 29.5, 22.0 ],
                                                    "text": "+ 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-27",
                                                    "maxclass": "live.text",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "parameter_enable": 1,
                                                    "patching_rect": [ 307.0, 58.0, 44.0, 15.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 54.0, 5.0, 36.0, 15.0 ],
                                                    "saved_attribute_attributes": {
                                                        "valueof": {
                                                            "parameter_enum": [ "val1", "val2" ],
                                                            "parameter_initial": [ 1 ],
                                                            "parameter_linknames": 1,
                                                            "parameter_longname": "conti",
                                                            "parameter_mmax": 1,
                                                            "parameter_modmode": 0,
                                                            "parameter_shortname": "conti",
                                                            "parameter_type": 2
                                                        }
                                                    },
                                                    "text": "stop&go",
                                                    "texton": "conti.",
                                                    "varname": "conti"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "obj-24",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 187.0, 366.0, 224.0, 22.0 ],
                                                    "text": "gate 2 2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "obj-23",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 280.0, 338.0, 71.0, 22.0 ],
                                                    "text": "gate 2 2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 227.0, 437.0, 184.0, 22.0 ],
                                                    "text": "vexpr $f1*$f2 @scalarmode 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-40",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 591.0, 65.0, 35.0, 22.0 ],
                                                    "text": "open"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-4",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 591.0, 95.0, 51.0, 22.0 ],
                                                    "text": "pcontrol"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-6",
                                                    "maxclass": "live.text",
                                                    "mode": 0,
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "parameter_enable": 1,
                                                    "parameter_mappable": 0,
                                                    "patching_rect": [ 591.0, 44.0, 54.0, 15.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 91.0, 5.0, 32.918452501297, 15.021459460258484 ],
                                                    "saved_attribute_attributes": {
                                                        "valueof": {
                                                            "parameter_enum": [ "val1", "val2" ],
                                                            "parameter_initial": [ 0.0 ],
                                                            "parameter_initial_enable": 1,
                                                            "parameter_invisible": 4,
                                                            "parameter_longname": "live.text[18]",
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
                                                    "fontsize": 11.0,
                                                    "id": "obj-9",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 1060.0, 301.0, 50.0, 21.0 ],
                                                    "text": "deferlow"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 11.0,
                                                    "id": "obj-12",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 1060.0, 279.0, 161.0, 21.0 ],
                                                    "text": "loadmess resizetowindowrect 4"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 11.0,
                                                    "id": "obj-15",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 1045.0, 256.0, 120.0, 21.0 ],
                                                    "text": "loadmess windresize 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "trhreshold [float]",
                                                    "id": "obj-3",
                                                    "index": 3,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 493.0, 39.0, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-2",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "", "" ],
                                                    "patching_rect": [ 668.0, 95.0, 141.0, 22.0 ],
                                                    "text": "getattr first_cursor_value"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-197",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "", "" ],
                                                    "patching_rect": [ 822.0, 95.0, 85.0, 22.0 ],
                                                    "text": "getattr bounds"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-52",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 965.0, 256.0, 54.0, 22.0 ],
                                                    "text": "deferlow"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-53",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 965.0, 227.0, 109.0, 22.0 ],
                                                    "text": "r #0-mubu-scroll"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "fontsize": 11.0,
                                                    "id": "obj-49",
                                                    "linecount": 2,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 960.5, 35.0, 89.0, 35.0 ],
                                                    "text": "mubu.scroll configuration"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "mubu.scroll configuration",
                                                    "id": "obj-50",
                                                    "index": 5,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 916.5, 39.0, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-25",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 916.0, 471.0, 92.0, 22.0 ],
                                                    "text": "route firstcursor"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-19",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 512.0, 259.0, 109.0, 22.0 ],
                                                    "text": "prepend firstcursor"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "gate control [float]",
                                                    "id": "obj-22",
                                                    "index": 2,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
                                                    "patching_rect": [ 228.0, 39.0, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-21",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 228.0, 128.5, 109.0, 21.0 ],
                                                    "text": "s #0-float-value"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 11.0,
                                                    "format": 6,
                                                    "id": "obj-5",
                                                    "maxclass": "flonum",
                                                    "minimum": 0.0,
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 493.0, 229.0, 46.0, 21.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 81.0, 27.0, 39.0, 21.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-14",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 542.0, 176.5, 107.0, 21.0 ],
                                                    "text": "r #0-gate-level"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-8",
                                                    "maxclass": "newobj",
                                                    "numinlets": 5,
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
                                                        "rect": [ 988.0, 110.0, 234.0, 381.0 ],
                                                        "openinpresentation": 1,
                                                        "boxes": [
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-20",
                                                                    "linecount": 2,
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 902.5, 153.5, 79.0, 33.0 ],
                                                                    "text": "s #0-bypass"
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
                                                                    "patching_rect": [ 921.5, 106.5, 26.0, 19.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 138.0, 10.0, 27.0, 19.0 ],
                                                                    "text": "byp"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-10",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 902.0, 72.5, 41.0, 22.0 ],
                                                                    "text": "set $1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "annotation": "@bypass",
                                                                    "annotation_name": "@bypass",
                                                                    "hint": "@bypass",
                                                                    "id": "obj-16",
                                                                    "maxclass": "live.toggle",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "parameter_enable": 1,
                                                                    "patching_rect": [ 902.5, 108.5, 15.0, 15.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 120.0, 12.5, 15.0, 15.0 ],
                                                                    "saved_attribute_attributes": {
                                                                        "valueof": {
                                                                            "parameter_enum": [ "off", "on" ],
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
                                                                    "index": 5,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 902.0, 11.5, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-7",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 273.5, 106.0, 133.0, 19.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 66.0, 57.0, 163.0, 19.0 ],
                                                                    "text": "output zeros when closed"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-6",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 405.0, 139.0, 98.0, 21.0 ],
                                                                    "text": "s #0-continuous"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-4",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 405.0, 48.0, 41.0, 22.0 ],
                                                                    "text": "set $1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-1",
                                                                    "index": 3,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 405.0, 9.5, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "annotation": "@continuous",
                                                                    "annotation_name": "@continuous",
                                                                    "fontsize": 12.0,
                                                                    "hint": "@continuous",
                                                                    "id": "obj-27",
                                                                    "maxclass": "live.text",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "" ],
                                                                    "parameter_enable": 1,
                                                                    "patching_rect": [ 405.0, 108.0, 44.0, 15.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 7.0, 59.0, 53.0, 17.0 ],
                                                                    "saved_attribute_attributes": {
                                                                        "valueof": {
                                                                            "parameter_enum": [ "val1", "val2" ],
                                                                            "parameter_initial": [ 1 ],
                                                                            "parameter_initial_enable": 1,
                                                                            "parameter_linknames": 1,
                                                                            "parameter_longname": "continuous",
                                                                            "parameter_mmax": 1,
                                                                            "parameter_modmode": 0,
                                                                            "parameter_shortname": "continuous",
                                                                            "parameter_type": 2
                                                                        }
                                                                    },
                                                                    "text": "stop&go",
                                                                    "texton": "conti.",
                                                                    "varname": "continuous"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-13",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 4,
                                                                    "outlettype": [ "", "", "", "" ],
                                                                    "patching_rect": [ 492.0, 244.0, 56.0, 22.0 ],
                                                                    "restore": {
                                                                        "bypass": [ 0.0 ],
                                                                        "continuous": [ 1.0 ],
                                                                        "maxMonitor": [ 1.0 ],
                                                                        "minMonitor": [ 0.0 ],
                                                                        "threshold": [ 0.5882352941176471 ]
                                                                    },
                                                                    "text": "autopattr",
                                                                    "varname": "u933006469"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-5",
                                                                    "index": 1,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 186.0, 11.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-41",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 325.0, 46.5, 41.0, 22.0 ],
                                                                    "text": "set $1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-39",
                                                                    "index": 2,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 325.0, 9.5, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-19",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 3,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 492.0, 167.5, 84.0, 22.0 ],
                                                                    "text": "pak bounds f f"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-21",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 492.0, 208.5, 146.0, 21.0 ],
                                                                    "text": "s #0-mubu-scroll"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-28",
                                                                    "index": 4,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 525.0, 11.5, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-202",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 686.0, 72.5, 41.0, 22.0 ],
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
                                                                    "patching_rect": [ 525.0, 72.5, 41.0, 22.0 ],
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
                                                                    "patching_rect": [ 525.0, 46.5, 180.0, 22.0 ],
                                                                    "text": "unpack f f"
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
                                                                    "patching_rect": [ 735.0, 106.5, 112.0, 19.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 66.0, 184.0, 112.0, 19.0 ],
                                                                    "text": "Max value for display"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "annotation": "@bounds",
                                                                    "annotation_name": "@bounds",
                                                                    "fontsize": 12.0,
                                                                    "hint": "@bounds",
                                                                    "id": "obj-34",
                                                                    "maxclass": "live.numbox",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "float" ],
                                                                    "parameter_enable": 1,
                                                                    "patching_rect": [ 686.0, 106.5, 53.0, 18.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 7.0, 180.0, 53.0, 18.0 ],
                                                                    "saved_attribute_attributes": {
                                                                        "valueof": {
                                                                            "parameter_linknames": 1,
                                                                            "parameter_longname": "maxMonitor[2]",
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
                                                                    "id": "obj-37",
                                                                    "maxclass": "live.numbox",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "float" ],
                                                                    "parameter_enable": 1,
                                                                    "patching_rect": [ 525.0, 106.5, 53.0, 18.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 7.0, 205.0, 53.0, 18.0 ],
                                                                    "saved_attribute_attributes": {
                                                                        "valueof": {
                                                                            "parameter_linknames": 1,
                                                                            "parameter_longname": "minMonitor[2]",
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
                                                                    "fontname": "Arial",
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-38",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 579.0, 107.5, 109.0, 19.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 66.0, 209.0, 109.0, 19.0 ],
                                                                    "text": "Min value for display"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-24",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 208.0, 47.0, 76.0, 19.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 66.0, 112.0, 76.0, 19.0 ],
                                                                    "text": "Green = open"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "bgcolor": [ 1.0, 1.0, 1.0, 0.4 ],
                                                                    "fontname": "Arial",
                                                                    "fontsize": 14.0,
                                                                    "id": "obj-23",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 221.0, 16.0, 80.0, 22.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 5.0, 90.0, 224.0, 22.0 ],
                                                                    "text": "Gate status"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 12.0,
                                                                    "id": "obj-18",
                                                                    "linecount": 9,
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 26.5, 279.0, 573.0, 127.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_linecount": 11,
                                                                    "presentation_rect": [ 6.0, 255.0, 226.0, 154.0 ],
                                                                    "text": "Open the gate if the level the left input is greater than a certain level (threshold) and close the gate if lower\n\ninput: \n     - data values [list]\n     - float to control the gate\n\noutput:\n     - [1]: values [list] if open\n     - [2]: 0/1 close or open [int]"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "bgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                                                    "checkedcolor": [ 0.0, 1.0, 0.372549019607843, 1.0 ],
                                                                    "id": "obj-17",
                                                                    "ignoreclick": 1,
                                                                    "maxclass": "toggle",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "int" ],
                                                                    "parameter_enable": 0,
                                                                    "parameter_mappable": 0,
                                                                    "patching_rect": [ 186.0, 47.0, 24.0, 24.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 7.0, 112.0, 20.0, 20.0 ],
                                                                    "size": 100.0,
                                                                    "thickness": 100.0,
                                                                    "uncheckedcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "bgcolor": [ 1.0, 1.0, 1.0, 0.4 ],
                                                                    "fontname": "Arial",
                                                                    "fontsize": 14.0,
                                                                    "id": "obj-15",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 26.5, 252.0, 121.0, 22.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 6.0, 235.0, 224.0, 22.0 ],
                                                                    "text": "Help [Gate - float]"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-8",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 78.0, 182.0, 163.0, 19.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 66.0, 34.0, 163.0, 19.0 ],
                                                                    "text": "Level (below the gate is closed)"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-9",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 27.0, 217.0, 128.0, 21.0 ],
                                                                    "text": "s #0-gate-level"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "annotation": "@threshold",
                                                                    "annotation_name": "@threshold",
                                                                    "fontsize": 12.0,
                                                                    "hint": "@threshold",
                                                                    "id": "obj-14",
                                                                    "maxclass": "live.numbox",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "float" ],
                                                                    "parameter_enable": 1,
                                                                    "patching_rect": [ 26.5, 182.0, 53.0, 18.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 7.0, 32.0, 53.0, 18.0 ],
                                                                    "saved_attribute_attributes": {
                                                                        "valueof": {
                                                                            "parameter_linknames": 1,
                                                                            "parameter_longname": "threshold",
                                                                            "parameter_mmax": 100.0,
                                                                            "parameter_modmode": 3,
                                                                            "parameter_shortname": "threshold",
                                                                            "parameter_type": 0,
                                                                            "parameter_unitstyle": 1
                                                                        }
                                                                    },
                                                                    "varname": "threshold"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "bgcolor": [ 1.0, 1.0, 1.0, 0.4 ],
                                                                    "fontname": "Arial",
                                                                    "fontsize": 14.0,
                                                                    "id": "obj-3",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 26.0, 156.0, 71.0, 22.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 5.0, 9.0, 224.0, 22.0 ],
                                                                    "text": "Threshold"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-12",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 89.5, 70.0, 73.0, 19.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 66.0, 158.0, 73.0, 19.0 ],
                                                                    "text": "Control value"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "bgcolor": [ 1.0, 1.0, 1.0, 0.4 ],
                                                                    "fontname": "Arial",
                                                                    "fontsize": 14.0,
                                                                    "id": "obj-11",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 26.5, 18.0, 75.0, 22.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 5.0, 133.0, 224.0, 22.0 ],
                                                                    "text": "Monitoring"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-2",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 27.0, 44.0, 129.0, 21.0 ],
                                                                    "text": "r #0-float-value"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "bgcolor": [ 0.501961, 0.501961, 0.501961, 1.0 ],
                                                                    "fontname": "Arial",
                                                                    "fontsize": 12.0,
                                                                    "format": 6,
                                                                    "id": "obj-112",
                                                                    "maxclass": "flonum",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "bang" ],
                                                                    "parameter_enable": 0,
                                                                    "parameter_mappable": 0,
                                                                    "patching_rect": [ 26.5, 70.0, 69.0, 22.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 7.0, 156.0, 51.0, 22.0 ],
                                                                    "saved_attribute_attributes": {
                                                                        "bgcolor": {
                                                                            "expression": "themecolor.theme_accentcolor"
                                                                        }
                                                                    },
                                                                    "triangle": 0
                                                                }
                                                            }
                                                        ],
                                                        "lines": [
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-4", 0 ],
                                                                    "source": [ "obj-1", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-16", 0 ],
                                                                    "source": [ "obj-10", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-9", 0 ],
                                                                    "source": [ "obj-14", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-20", 0 ],
                                                                    "source": [ "obj-16", 0 ]
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
                                                                    "destination": [ "obj-112", 0 ],
                                                                    "source": [ "obj-2", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-37", 0 ],
                                                                    "source": [ "obj-201", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-34", 0 ],
                                                                    "source": [ "obj-202", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-6", 0 ],
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
                                                                    "destination": [ "obj-19", 2 ],
                                                                    "source": [ "obj-34", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-19", 1 ],
                                                                    "source": [ "obj-37", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-41", 0 ],
                                                                    "source": [ "obj-39", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-27", 0 ],
                                                                    "source": [ "obj-4", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-10", 0 ],
                                                                    "source": [ "obj-40", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-14", 0 ],
                                                                    "source": [ "obj-41", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-17", 0 ],
                                                                    "source": [ "obj-5", 0 ]
                                                                }
                                                            }
                                                        ],
                                                        "toolbaradditions": [ "s2n", "Modalys", "Gestural-Sound-Toolkit" ]
                                                    },
                                                    "patching_rect": [ 591.0, 136.0, 173.0, 21.0 ],
                                                    "text": "p more",
                                                    "varname": "more"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                                    "checkedcolor": [ 0.0, 1.0, 0.372549019607843, 1.0 ],
                                                    "id": "obj-13",
                                                    "ignoreclick": 1,
                                                    "maxclass": "toggle",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "parameter_enable": 0,
                                                    "parameter_mappable": 0,
                                                    "patching_rect": [ 453.0, 506.0, 24.0, 24.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 1.0, 25.0, 12.0, 12.0 ],
                                                    "size": 100.0,
                                                    "thickness": 100.0,
                                                    "uncheckedcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 13.0,
                                                    "id": "obj-7",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 6.0, 6.0, 113.0, 21.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 0.0, 2.0, 37.0, 21.0 ],
                                                    "text": "Gate"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-70",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
                                                    "patching_rect": [ 392.0, 407.0, 60.0, 22.0 ],
                                                    "text": "slide 1 3"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "Integer 0/1 if gate closed/open",
                                                    "id": "obj-65",
                                                    "index": 2,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 453.0, 574.0, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "obj-63",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "int", "int" ],
                                                    "patching_rect": [ 453.0, 407.0, 61.0, 22.0 ],
                                                    "text": "change 0."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "obj-62",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "int", "int" ],
                                                    "patching_rect": [ 392.0, 338.0, 80.0, 22.0 ],
                                                    "text": "t i i"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "obj-61",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 187.0, 476.0, 112.0, 22.0 ],
                                                    "text": "gate"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "obj-59",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 392.0, 311.0, 120.0, 22.0 ],
                                                    "text": ">= 0.01"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-60",
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
                                                        "rect": [ 134.0, 174.0, 342.0, 193.0 ],
                                                        "boxes": [
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-2",
                                                                    "linecount": 10,
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 10.0, 25.0, 310.0, 129.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_linecount": 13,
                                                                    "presentation_rect": [ 80.0, 101.0, 157.0, 166.0 ],
                                                                    "text": "Open the gate if the energy from the accelerometers is greater than a certain level (threshold) and close the gate when this energy is lower than the threshold.\n\ninput: \n     - data values [list]\n\noutput:\n     - [1]: values [list] if open\n     - [2]: 0/1 close or open [int]"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 14.0,
                                                                    "id": "obj-1",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 10.0, 6.0, 309.0, 22.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 65.0, 86.0, 203.0, 22.0 ],
                                                                    "text": "Gate based on energy"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-59",
                                                                    "linecount": 4,
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 507.0, 190.0, 146.0, 56.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_linecount": 5,
                                                                    "presentation_rect": [ 20.0, 53.0, 128.0, 68.0 ],
                                                                    "text": "output: \n   - left: values [list] if open\n   - right: 0/1 close or open [int]"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-58",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 507.0, 173.0, 153.0, 19.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 20.0, 41.0, 153.0, 19.0 ],
                                                                    "text": "input: data values [list]"
                                                                }
                                                            }
                                                        ],
                                                        "lines": [],
                                                        "toolbaradditions": [ "s2n", "Modalys" ]
                                                    },
                                                    "patching_rect": [ 668.0, 41.0, 44.0, 21.0 ],
                                                    "text": "p help"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "gated list",
                                                    "id": "obj-11",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 84.0, 574.0, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "input [list]",
                                                    "id": "obj-10",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 168.0, 39.0, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "autobounds": 0,
                                                    "autoupdate": 120.0,
                                                    "bgcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                                    "bgcolordefault": 1,
                                                    "bounds": [ 0.0, 1.0 ],
                                                    "colormode": "fgcolor",
                                                    "domainruler": 0,
                                                    "domainruler_size": 10,
                                                    "fgcolor": [ 0.129412, 0.129412, 0.129412, 1.0 ],
                                                    "fgcolordefault": 1,
                                                    "first_cursor_color": [ 1.0, 0.0, 0.0, 1.0 ],
                                                    "first_cursor_size": 3,
                                                    "first_cursor_value": 0.5882352941176471,
                                                    "first_cursor_visible": 1,
                                                    "id": "obj-101",
                                                    "inversed": 0,
                                                    "layout": "juxtaposed",
                                                    "length": 256,
                                                    "matrix": 0,
                                                    "maxclass": "mubu.scroll",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 922.0, 366.0, 10.0, 10.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 0.0, 23.0, 427.0, 121.0 ],
                                                    "rangeruler": 0,
                                                    "rangeruler_size": 30,
                                                    "sampleperiod": 10.0,
                                                    "second_cursor_color": [ 1.0, 0.0, 0.0, 1.0 ],
                                                    "second_cursor_size": 3,
                                                    "second_cursor_value": 0.0,
                                                    "second_cursor_visible": 0,
                                                    "shape": "lines",
                                                    "windresize": 1
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-42", 1 ],
                                                    "source": [ "obj-1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-23", 1 ],
                                                    "order": 0,
                                                    "source": [ "obj-10", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-42", 2 ],
                                                    "order": 1,
                                                    "source": [ "obj-10", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-25", 0 ],
                                                    "source": [ "obj-101", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-9", 0 ],
                                                    "source": [ "obj-12", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-65", 0 ],
                                                    "source": [ "obj-13", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-5", 0 ],
                                                    "source": [ "obj-14", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-101", 0 ],
                                                    "source": [ "obj-15", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-42", 0 ],
                                                    "source": [ "obj-17", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-101", 0 ],
                                                    "midpoints": [ 521.5, 290.0, 926.0, 290.0 ],
                                                    "source": [ "obj-19", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-101", 0 ],
                                                    "source": [ "obj-197", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-8", 3 ],
                                                    "source": [ "obj-197", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-101", 0 ],
                                                    "source": [ "obj-2", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-8", 1 ],
                                                    "source": [ "obj-2", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-30", 0 ],
                                                    "source": [ "obj-20", 2 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-32", 0 ],
                                                    "source": [ "obj-20", 4 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-35", 0 ],
                                                    "source": [ "obj-20", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-37", 0 ],
                                                    "source": [ "obj-20", 3 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-101", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-22", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-21", 0 ],
                                                    "order": 2,
                                                    "source": [ "obj-22", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-59", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-22", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-1", 0 ],
                                                    "source": [ "obj-23", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-61", 1 ],
                                                    "source": [ "obj-23", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-61", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-24", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-63", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-24", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-70", 0 ],
                                                    "source": [ "obj-24", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-5", 0 ],
                                                    "midpoints": [ 925.5, 515.17578125, 637.5, 515.17578125, 637.5, 223.0, 502.5, 223.0 ],
                                                    "source": [ "obj-25", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-23", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-26", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-24", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-26", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-26", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-27", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-8", 2 ],
                                                    "order": 0,
                                                    "source": [ "obj-27", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-27", 0 ],
                                                    "source": [ "obj-28", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-5", 0 ],
                                                    "source": [ "obj-3", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-29", 0 ],
                                                    "source": [ "obj-32", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-20", 0 ],
                                                    "source": [ "obj-33", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-17", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-34", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-8", 4 ],
                                                    "order": 0,
                                                    "source": [ "obj-34", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-17", 0 ],
                                                    "midpoints": [ 68.5, 227.0703125, 93.5, 227.0703125 ],
                                                    "order": 1,
                                                    "source": [ "obj-36", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-38", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-36", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-34", 0 ],
                                                    "source": [ "obj-38", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-8", 0 ],
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
                                                    "destination": [ "obj-39", 0 ],
                                                    "source": [ "obj-41", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-11", 0 ],
                                                    "source": [ "obj-42", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-19", 0 ],
                                                    "midpoints": [ 502.5, 256.0, 521.5, 256.0 ],
                                                    "order": 0,
                                                    "source": [ "obj-5", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-59", 1 ],
                                                    "order": 1,
                                                    "source": [ "obj-5", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-101", 0 ],
                                                    "source": [ "obj-50", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-101", 0 ],
                                                    "source": [ "obj-52", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-52", 0 ],
                                                    "source": [ "obj-53", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-62", 0 ],
                                                    "source": [ "obj-59", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-40", 0 ],
                                                    "source": [ "obj-6", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-42", 1 ],
                                                    "source": [ "obj-61", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-24", 1 ],
                                                    "source": [ "obj-62", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-63", 0 ],
                                                    "source": [ "obj-62", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-13", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-63", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-8", 0 ],
                                                    "midpoints": [ 462.5, 437.46484375, 563.83984375, 437.46484375, 563.83984375, 126.0, 600.5, 126.0 ],
                                                    "order": 0,
                                                    "source": [ "obj-63", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-1", 1 ],
                                                    "order": 1,
                                                    "source": [ "obj-70", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-63", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-70", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-101", 0 ],
                                                    "source": [ "obj-9", 0 ]
                                                }
                                            }
                                        ],
                                        "toolbaradditions": [ "s2n", "Modalys", "Gestural-Sound-Toolkit" ]
                                    },
                                    "patching_rect": [ 11.249999999999943, 608.0, 430.0, 148.0 ],
                                    "varname": "gst.gate.float",
                                    "viewvisibility": 1
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
                                    "patching_rect": [ 11.249999999999943, 157.0, 434.0000000000001, 259.0 ],
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
                                    "jsarguments": [ "gst.gate" ],
                                    "maxclass": "jsui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 12.5, 10.0, 431.5, 142.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-58", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-1", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-48", 5 ],
                                    "hidden": 1,
                                    "source": [ "obj-13", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-48", 4 ],
                                    "hidden": 1,
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-17", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-25", 1 ],
                                    "source": [ "obj-22", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 0 ],
                                    "source": [ "obj-23", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-23", 0 ],
                                    "source": [ "obj-25", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-22", 0 ],
                                    "midpoints": [ 20.749999999999943, 422.0, 157.74999999999994, 422.0 ],
                                    "order": 1,
                                    "source": [ "obj-48", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-25", 0 ],
                                    "order": 0,
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
                    "jsarguments": [ "gst.gate" ],
                    "maxclass": "jsui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 10.0, 10.0, 170.3599853515625, 57.599853515625 ]
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
                        "rect": [ 0.0, 26.0, 503.0, 960.0 ],
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
            "obj-2::obj-1": [ "live.text[26]", "live.text", 0 ],
            "obj-2::obj-22::obj-195::obj-125": [ "compexp", "compexp", 0 ],
            "obj-2::obj-22::obj-195::obj-13": [ "minMonitor[3]", "minMonitor", 0 ],
            "obj-2::obj-22::obj-195::obj-136": [ "live.menu[1]", "live.menu", 0 ],
            "obj-2::obj-22::obj-195::obj-139": [ "live.menu", "live.menu", 0 ],
            "obj-2::obj-22::obj-195::obj-14": [ "maxMonitor[3]", "maxMonitor", 0 ],
            "obj-2::obj-22::obj-195::obj-142": [ "derivativewindow", "maveragewindow", 0 ],
            "obj-2::obj-22::obj-195::obj-146": [ "maveragewindow", "maveragewindow", 0 ],
            "obj-2::obj-22::obj-195::obj-150": [ "gateonoff", "gateonoff", 0 ],
            "obj-2::obj-22::obj-195::obj-151": [ "cliponoff", "cliponoff", 0 ],
            "obj-2::obj-22::obj-195::obj-154": [ "clipmax", "gain", 0 ],
            "obj-2::obj-22::obj-195::obj-31": [ "gatethresh", "gatethresh", 0 ],
            "obj-2::obj-22::obj-195::obj-42": [ "framerate", "framerate", 0 ],
            "obj-2::obj-22::obj-195::obj-82": [ "fcut", "fcut", 0 ],
            "obj-2::obj-22::obj-195::obj-86": [ "gain", "gain", 0 ],
            "obj-2::obj-22::obj-37": [ "live.text[3]", "live.text", 0 ],
            "obj-2::obj-25::obj-27": [ "conti", "conti", 0 ],
            "obj-2::obj-25::obj-34": [ "live.toggle", "bypass", 0 ],
            "obj-2::obj-25::obj-6": [ "live.text[18]", "live.text", 0 ],
            "obj-2::obj-25::obj-8::obj-14": [ "threshold", "threshold", 0 ],
            "obj-2::obj-25::obj-8::obj-16": [ "bypass", "bypass", 0 ],
            "obj-2::obj-25::obj-8::obj-27": [ "continuous", "continuous", 0 ],
            "obj-2::obj-25::obj-8::obj-34": [ "maxMonitor[2]", "maxMonitor", 0 ],
            "obj-2::obj-25::obj-8::obj-37": [ "minMonitor[2]", "minMonitor", 0 ],
            "obj-2::obj-48::obj-15": [ "live.text[12]", "live.text", 0 ],
            "obj-2::obj-48::obj-16": [ "loop", "loop", 0 ],
            "obj-2::obj-48::obj-18": [ "live.text[16]", "live.text", 0 ],
            "obj-2::obj-48::obj-4": [ "live.text[11]", "live.text", 0 ],
            "obj-2::obj-48::obj-40": [ "live.toggle[2]", "live.toggle", 0 ],
            "obj-2::obj-48::obj-50": [ "live.numbox", "live.numbox", 0 ],
            "obj-2::obj-48::obj-57": [ "autoscale", "autoscale", 0 ],
            "obj-2::obj-48::obj-6": [ "live.text[13]", "live.text", 0 ],
            "obj-2::obj-48::obj-71": [ "live.toggle[1]", "live.toggle", 0 ],
            "obj-2::obj-48::obj-80": [ "live.text[9]", "live.text", 0 ],
            "obj-2::obj-48::obj-85::obj-25": [ "maxduration", "maxduration", 0 ],
            "obj-2::obj-6::obj-37": [ "live.text[10]", "live.text", 0 ],
            "obj-2::obj-6::obj-8::obj-34": [ "maxMonitor", "maxMonitor", 0 ],
            "obj-2::obj-6::obj-8::obj-37": [ "minMonitor", "minMonitor", 0 ],
            "obj-6::obj-1": [ "live.text[27]", "live.text", 0 ],
            "obj-6::obj-22::obj-195::obj-125": [ "compexp[1]", "compexp", 0 ],
            "obj-6::obj-22::obj-195::obj-13": [ "minMonitor[5]", "minMonitor", 0 ],
            "obj-6::obj-22::obj-195::obj-136": [ "live.menu[2]", "live.menu", 0 ],
            "obj-6::obj-22::obj-195::obj-139": [ "live.menu[3]", "live.menu", 0 ],
            "obj-6::obj-22::obj-195::obj-14": [ "maxMonitor[5]", "maxMonitor", 0 ],
            "obj-6::obj-22::obj-195::obj-142": [ "derivativewindow[1]", "maveragewindow", 0 ],
            "obj-6::obj-22::obj-195::obj-146": [ "maveragewindow[1]", "maveragewindow", 0 ],
            "obj-6::obj-22::obj-195::obj-150": [ "gateonoff[1]", "gateonoff", 0 ],
            "obj-6::obj-22::obj-195::obj-151": [ "cliponoff[1]", "cliponoff", 0 ],
            "obj-6::obj-22::obj-195::obj-154": [ "clipmax[1]", "gain", 0 ],
            "obj-6::obj-22::obj-195::obj-31": [ "gatethresh[1]", "gatethresh", 0 ],
            "obj-6::obj-22::obj-195::obj-42": [ "framerate[1]", "framerate", 0 ],
            "obj-6::obj-22::obj-195::obj-82": [ "fcut[1]", "fcut", 0 ],
            "obj-6::obj-22::obj-195::obj-86": [ "gain[1]", "gain", 0 ],
            "obj-6::obj-22::obj-37": [ "live.text[19]", "live.text", 0 ],
            "obj-6::obj-25::obj-27": [ "conti[1]", "conti", 0 ],
            "obj-6::obj-25::obj-34": [ "live.toggle[6]", "bypass", 0 ],
            "obj-6::obj-25::obj-6": [ "live.text[25]", "live.text", 0 ],
            "obj-6::obj-25::obj-8::obj-14": [ "threshold[1]", "threshold", 0 ],
            "obj-6::obj-25::obj-8::obj-16": [ "bypass[1]", "bypass", 0 ],
            "obj-6::obj-25::obj-8::obj-27": [ "continuous[1]", "continuous", 0 ],
            "obj-6::obj-25::obj-8::obj-34": [ "maxMonitor[6]", "maxMonitor", 0 ],
            "obj-6::obj-25::obj-8::obj-37": [ "minMonitor[6]", "minMonitor", 0 ],
            "obj-6::obj-48::obj-15": [ "live.text[22]", "live.text", 0 ],
            "obj-6::obj-48::obj-16": [ "loop[1]", "loop", 0 ],
            "obj-6::obj-48::obj-18": [ "live.text[23]", "live.text", 0 ],
            "obj-6::obj-48::obj-4": [ "live.text[24]", "live.text", 0 ],
            "obj-6::obj-48::obj-40": [ "live.toggle[4]", "live.toggle", 0 ],
            "obj-6::obj-48::obj-50": [ "live.numbox[1]", "live.numbox", 0 ],
            "obj-6::obj-48::obj-57": [ "autoscale[1]", "autoscale", 0 ],
            "obj-6::obj-48::obj-6": [ "live.text[20]", "live.text", 0 ],
            "obj-6::obj-48::obj-71": [ "live.toggle[5]", "live.toggle", 0 ],
            "obj-6::obj-48::obj-80": [ "live.text[21]", "live.text", 0 ],
            "obj-6::obj-48::obj-85::obj-25": [ "maxduration[1]", "maxduration", 0 ],
            "obj-6::obj-6::obj-37": [ "live.text[14]", "live.text", 0 ],
            "obj-6::obj-6::obj-8::obj-34": [ "maxMonitor[4]", "maxMonitor", 0 ],
            "obj-6::obj-6::obj-8::obj-37": [ "minMonitor[4]", "minMonitor", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "parameter_overrides": {
                "obj-2::obj-22::obj-195::obj-13": {
                    "parameter_longname": "minMonitor[3]"
                },
                "obj-2::obj-22::obj-195::obj-14": {
                    "parameter_longname": "maxMonitor[3]"
                },
                "obj-2::obj-25::obj-8::obj-34": {
                    "parameter_longname": "maxMonitor[2]"
                },
                "obj-2::obj-25::obj-8::obj-37": {
                    "parameter_longname": "minMonitor[2]"
                },
                "obj-2::obj-48::obj-18": {
                    "parameter_longname": "live.text[16]"
                },
                "obj-2::obj-6::obj-37": {
                    "parameter_longname": "live.text[10]"
                },
                "obj-6::obj-25::obj-27": {
                    "parameter_longname": "conti[1]"
                },
                "obj-6::obj-25::obj-34": {
                    "parameter_longname": "live.toggle[6]"
                },
                "obj-6::obj-25::obj-6": {
                    "parameter_longname": "live.text[25]"
                },
                "obj-6::obj-25::obj-8::obj-14": {
                    "parameter_longname": "threshold[1]"
                },
                "obj-6::obj-25::obj-8::obj-16": {
                    "parameter_longname": "bypass[1]"
                },
                "obj-6::obj-25::obj-8::obj-27": {
                    "parameter_longname": "continuous[1]"
                },
                "obj-6::obj-25::obj-8::obj-34": {
                    "parameter_longname": "maxMonitor[6]"
                },
                "obj-6::obj-25::obj-8::obj-37": {
                    "parameter_longname": "minMonitor[6]"
                },
                "obj-6::obj-48::obj-15": {
                    "parameter_longname": "live.text[22]"
                },
                "obj-6::obj-48::obj-16": {
                    "parameter_longname": "loop[1]"
                },
                "obj-6::obj-48::obj-18": {
                    "parameter_longname": "live.text[23]"
                },
                "obj-6::obj-48::obj-4": {
                    "parameter_longname": "live.text[24]"
                },
                "obj-6::obj-48::obj-40": {
                    "parameter_longname": "live.toggle[4]"
                },
                "obj-6::obj-48::obj-50": {
                    "parameter_longname": "live.numbox[1]"
                },
                "obj-6::obj-48::obj-57": {
                    "parameter_longname": "autoscale[1]"
                },
                "obj-6::obj-48::obj-6": {
                    "parameter_longname": "live.text[20]"
                },
                "obj-6::obj-48::obj-71": {
                    "parameter_longname": "live.toggle[5]"
                },
                "obj-6::obj-48::obj-80": {
                    "parameter_longname": "live.text[21]"
                },
                "obj-6::obj-48::obj-85::obj-25": {
                    "parameter_longname": "maxduration[1]"
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0,
        "toolbaradditions": [ "s2n", "Modalys", "Gestural-Sound-Toolkit" ]
    }
}