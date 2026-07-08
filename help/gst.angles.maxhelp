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
        "rect": [ 40.0, 102.0, 505.0, 904.0 ],
        "showrootpatcherontab": 0,
        "showontab": 0,
        "boxes": [
            {
                "box": {
                    "id": "obj-3",
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
                        "rect": [ 40.0, 128.0, 505.0, 878.0 ],
                        "default_fontsize": 13.0,
                        "gridsize": [ 5.0, 5.0 ],
                        "showontab": 1,
                        "boxes": [
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "obj-8",
                                    "maxclass": "live.text",
                                    "mode": 0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "parameter_enable": 1,
                                    "parameter_mappable": 0,
                                    "patching_rect": [ 285.0, 29.0, 163.0, 18.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 201.0, 172.0, 124.0, 17.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "val1", "val2" ],
                                            "parameter_invisible": 4,
                                            "parameter_longname": "live.text[20]",
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
                                    "patching_rect": [ 453.0, 30.0, 58.0, 17.0 ],
                                    "text": "p load-helpfile"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 194.0, 627.0, 29.5, 23.0 ],
                                    "text": "0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 357.0, 627.0, 106.0, 23.0 ],
                                    "text": "bounds -180 180"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-6",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 384.0, 665.0, 93.0, 25.0 ],
                                    "text": "double click"
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
                                    "patching_rect": [ 363.0, 87.0, 102.0, 26.0 ],
                                    "text": "p load&start readall overview.mubu"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-19",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 357.0, 707.0, 50.0, 23.0 ]
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-18",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 248.33333333333337, 707.0, 50.0, 23.0 ]
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-15",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 139.66666666666669, 707.0, 50.0, 23.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-63",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "float", "float", "float" ],
                                    "patching_rect": [ 31.0, 666.0, 345.0, 23.0 ],
                                    "text": "gst.angles @framerate 100 @bounds -180. 180. @order 0",
                                    "varname": "gst.angles"
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
                                    "patching_rect": [ 31.0, 126.0, 434.0, 233.0 ],
                                    "varname": "gst.recorddata",
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
                                    "id": "obj-31",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "gst.orientation.maxpat",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "offset": [ 0.0, 0.0 ],
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 31.0, 370.0, 434.0, 233.0 ],
                                    "varname": "gst.orientation",
                                    "viewvisibility": 1
                                }
                            },
                            {
                                "box": {
                                    "border": 0,
                                    "filename": "helpdetails.js",
                                    "id": "obj-2",
                                    "ignoreclick": 1,
                                    "jsarguments": [ "gst.angles" ],
                                    "maxclass": "jsui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 10.0, 10.0, 455.0, 103.0 ]
                                }
                            }
                        ],
                        "lines": [
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
                                    "destination": [ "obj-63", 2 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-63", 0 ],
                                    "source": [ "obj-31", 0 ]
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
                                    "destination": [ "obj-63", 1 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "source": [ "obj-63", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "source": [ "obj-63", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
                                    "source": [ "obj-63", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-58", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-8", 1 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "s2n", "Modalys", "Gestural-Sound-Toolkit" ]
                    },
                    "patching_rect": [ 10.0, 113.0, 50.0, 22.0 ],
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
                    "patching_rect": [ 261.0, 148.0, 147.0, 22.0 ],
                    "saved_object_attributes": {
                        "filename": "helpstarter.js",
                        "parameter_enable": 0
                    },
                    "text": "js helpstarter.js gst.angles"
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
                        "rect": [ 0.0, 26.0, 505.0, 878.0 ],
                        "default_fontsize": 13.0,
                        "gridsize": [ 5.0, 5.0 ],
                        "showontab": 1,
                        "boxes": [
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "obj-8",
                                    "maxclass": "live.text",
                                    "mode": 0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "parameter_enable": 1,
                                    "parameter_mappable": 0,
                                    "patching_rect": [ 285.0, 29.0, 163.0, 18.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 201.0, 172.0, 124.0, 17.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "val1", "val2" ],
                                            "parameter_invisible": 4,
                                            "parameter_longname": "live.text[23]",
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
                                    "patching_rect": [ 453.0, 30.0, 58.0, 17.0 ],
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
                                    "patching_rect": [ 363.0, 87.0, 102.0, 26.0 ],
                                    "text": "p load&start readall overview.mubu"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-19",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 446.0, 850.0, 50.0, 23.0 ]
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-18",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 307.0, 850.0, 50.0, 23.0 ]
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-15",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 169.0, 850.0, 50.0, 23.0 ]
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
                                    "id": "obj-63",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "gst.angles.maxpat",
                                    "numinlets": 3,
                                    "numoutlets": 4,
                                    "offset": [ 0.0, 0.0 ],
                                    "outlettype": [ "", "float", "float", "float" ],
                                    "patching_rect": [ 31.0, 611.0, 434.0, 233.0 ],
                                    "varname": "gst.angles",
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
                                    "patching_rect": [ 31.0, 129.0, 434.0, 233.0 ],
                                    "varname": "gst.recorddata",
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
                                    "id": "obj-31",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "gst.orientation.maxpat",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "offset": [ 0.0, 0.0 ],
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 31.0, 370.0, 434.0, 233.0 ],
                                    "varname": "gst.orientation",
                                    "viewvisibility": 1
                                }
                            },
                            {
                                "box": {
                                    "border": 0,
                                    "filename": "helpdetails.js",
                                    "id": "obj-2",
                                    "ignoreclick": 1,
                                    "jsarguments": [ "gst.angles" ],
                                    "maxclass": "jsui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 10.0, 10.0, 455.0, 103.0 ]
                                }
                            }
                        ],
                        "lines": [
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
                                    "destination": [ "obj-63", 0 ],
                                    "source": [ "obj-31", 0 ]
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
                                    "destination": [ "obj-15", 0 ],
                                    "source": [ "obj-63", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "source": [ "obj-63", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
                                    "source": [ "obj-63", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-58", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-8", 1 ]
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
                    "jsarguments": [ "gst.angles" ],
                    "maxclass": "jsui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 10.0, 10.0, 212.2639923095703, 57.599853515625 ]
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
                        "rect": [ 0.0, 26.0, 505.0, 878.0 ],
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
            "obj-2::obj-31::obj-11": [ "live.text[3]", "live.text", 0 ],
            "obj-2::obj-31::obj-5::obj-17": [ "out-sens-type", "out-sens-type", 0 ],
            "obj-2::obj-31::obj-5::obj-179": [ "in-sens-type", "in-sens-type", 0 ],
            "obj-2::obj-31::obj-5::obj-34": [ "maxMonitor", "maxMonitor", 0 ],
            "obj-2::obj-31::obj-5::obj-37": [ "minMonitor", "minMonitor", 0 ],
            "obj-2::obj-31::obj-5::obj-42": [ "frame-rate", "framerate", 0 ],
            "obj-2::obj-31::obj-5::obj-48": [ "gyroweight", "maveragewindow", 0 ],
            "obj-2::obj-48::obj-15": [ "live.text[12]", "live.text", 0 ],
            "obj-2::obj-48::obj-16": [ "loop", "loop", 0 ],
            "obj-2::obj-48::obj-18": [ "live.text[10]", "live.text", 0 ],
            "obj-2::obj-48::obj-4": [ "live.text[11]", "live.text", 0 ],
            "obj-2::obj-48::obj-40": [ "live.toggle[2]", "live.toggle", 0 ],
            "obj-2::obj-48::obj-50": [ "live.numbox", "live.numbox", 0 ],
            "obj-2::obj-48::obj-57": [ "autoscale", "autoscale", 0 ],
            "obj-2::obj-48::obj-6": [ "live.text[13]", "live.text", 0 ],
            "obj-2::obj-48::obj-71": [ "live.toggle[1]", "live.toggle", 0 ],
            "obj-2::obj-48::obj-80": [ "live.text[9]", "live.text", 0 ],
            "obj-2::obj-48::obj-85::obj-25": [ "maxduration", "maxduration", 0 ],
            "obj-2::obj-63::obj-5::obj-34": [ "maxMonitor[1]", "maxMonitor", 0 ],
            "obj-2::obj-63::obj-5::obj-37": [ "minMonitor[1]", "minMonitor", 0 ],
            "obj-2::obj-63::obj-5::obj-48": [ "order", "order", 0 ],
            "obj-2::obj-63::obj-7": [ "live.text[14]", "live.text", 0 ],
            "obj-2::obj-8": [ "live.text[23]", "live.text", 0 ],
            "obj-3::obj-31::obj-11": [ "live.text[1]", "live.text", 0 ],
            "obj-3::obj-31::obj-5::obj-17": [ "out-sens-type[1]", "out-sens-type", 0 ],
            "obj-3::obj-31::obj-5::obj-179": [ "in-sens-type[1]", "in-sens-type", 0 ],
            "obj-3::obj-31::obj-5::obj-34": [ "maxMonitor[2]", "maxMonitor", 0 ],
            "obj-3::obj-31::obj-5::obj-37": [ "minMonitor[2]", "minMonitor", 0 ],
            "obj-3::obj-31::obj-5::obj-42": [ "frame-rate[1]", "framerate", 0 ],
            "obj-3::obj-31::obj-5::obj-48": [ "gyroweight[1]", "maveragewindow", 0 ],
            "obj-3::obj-48::obj-15": [ "live.text[17]", "live.text", 0 ],
            "obj-3::obj-48::obj-16": [ "loop[1]", "loop", 0 ],
            "obj-3::obj-48::obj-18": [ "live.text[16]", "live.text", 0 ],
            "obj-3::obj-48::obj-4": [ "live.text[18]", "live.text", 0 ],
            "obj-3::obj-48::obj-40": [ "live.toggle[4]", "live.toggle", 0 ],
            "obj-3::obj-48::obj-50": [ "live.numbox[1]", "live.numbox", 0 ],
            "obj-3::obj-48::obj-57": [ "autoscale[1]", "autoscale", 0 ],
            "obj-3::obj-48::obj-6": [ "live.text[2]", "live.text", 0 ],
            "obj-3::obj-48::obj-71": [ "live.toggle[3]", "live.toggle", 0 ],
            "obj-3::obj-48::obj-80": [ "live.text[15]", "live.text", 0 ],
            "obj-3::obj-48::obj-85::obj-25": [ "maxduration[1]", "maxduration", 0 ],
            "obj-3::obj-63::obj-5::obj-34": [ "maxMonitor[3]", "maxMonitor", 0 ],
            "obj-3::obj-63::obj-5::obj-37": [ "minMonitor[3]", "minMonitor", 0 ],
            "obj-3::obj-63::obj-5::obj-48": [ "order[1]", "order", 0 ],
            "obj-3::obj-63::obj-7": [ "live.text[19]", "live.text", 0 ],
            "obj-3::obj-8": [ "live.text[20]", "live.text", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "parameter_overrides": {
                "obj-2::obj-63::obj-5::obj-34": {
                    "parameter_longname": "maxMonitor[1]"
                },
                "obj-2::obj-63::obj-5::obj-37": {
                    "parameter_longname": "minMonitor[1]"
                },
                "obj-2::obj-63::obj-7": {
                    "parameter_longname": "live.text[14]"
                },
                "obj-3::obj-31::obj-11": {
                    "parameter_longname": "live.text[1]"
                },
                "obj-3::obj-31::obj-5::obj-17": {
                    "parameter_longname": "out-sens-type[1]"
                },
                "obj-3::obj-31::obj-5::obj-179": {
                    "parameter_longname": "in-sens-type[1]"
                },
                "obj-3::obj-31::obj-5::obj-34": {
                    "parameter_longname": "maxMonitor[2]"
                },
                "obj-3::obj-31::obj-5::obj-37": {
                    "parameter_longname": "minMonitor[2]"
                },
                "obj-3::obj-31::obj-5::obj-42": {
                    "parameter_longname": "frame-rate[1]"
                },
                "obj-3::obj-31::obj-5::obj-48": {
                    "parameter_longname": "gyroweight[1]"
                },
                "obj-3::obj-48::obj-15": {
                    "parameter_longname": "live.text[17]"
                },
                "obj-3::obj-48::obj-16": {
                    "parameter_longname": "loop[1]"
                },
                "obj-3::obj-48::obj-18": {
                    "parameter_longname": "live.text[16]"
                },
                "obj-3::obj-48::obj-4": {
                    "parameter_longname": "live.text[18]"
                },
                "obj-3::obj-48::obj-40": {
                    "parameter_longname": "live.toggle[4]"
                },
                "obj-3::obj-48::obj-50": {
                    "parameter_longname": "live.numbox[1]"
                },
                "obj-3::obj-48::obj-57": {
                    "parameter_longname": "autoscale[1]"
                },
                "obj-3::obj-48::obj-6": {
                    "parameter_longname": "live.text[2]"
                },
                "obj-3::obj-48::obj-71": {
                    "parameter_longname": "live.toggle[3]"
                },
                "obj-3::obj-48::obj-80": {
                    "parameter_longname": "live.text[15]"
                },
                "obj-3::obj-48::obj-85::obj-25": {
                    "parameter_longname": "maxduration[1]"
                },
                "obj-3::obj-63::obj-5::obj-34": {
                    "parameter_longname": "maxMonitor[3]"
                },
                "obj-3::obj-63::obj-5::obj-37": {
                    "parameter_longname": "minMonitor[3]"
                },
                "obj-3::obj-63::obj-5::obj-48": {
                    "parameter_longname": "order[1]"
                },
                "obj-3::obj-63::obj-7": {
                    "parameter_longname": "live.text[19]"
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0,
        "toolbaradditions": [ "s2n", "Modalys", "Gestural-Sound-Toolkit" ]
    }
}