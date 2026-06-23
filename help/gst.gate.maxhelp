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
        "rect": [ 34.0, 93.0, 523.0, 1082.0 ],
        "boxes": [
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
                    "patching_rect": [ 362.0, 233.0, 102.0, 26.0 ],
                    "text": "p load&start readall overview.mubu"
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 160.0, 693.0, 71.0, 20.0 ],
                    "text": "float control"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 41.0, 693.0, 32.0, 20.0 ],
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
                                        "rect": [ 230.0, 93.0, 214.0, 82.0 ],
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
                                    "patching_rect": [ 270.0, 351.0, 127.0, 10.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 0.0, 23.0, 397.0, 150.0 ],
                                    "rangeruler": 1,
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
                    "patching_rect": [ 29.999999999999886, 891.0, 401.0, 177.0 ],
                    "varname": "gst.display",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 14.0,
                    "id": "obj-4",
                    "linecount": 9,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 34.0, 108.0, 342.0, 147.0 ],
                    "presentation": 1,
                    "presentation_linecount": 10,
                    "presentation_rect": [ 6.0, 215.0, 256.0, 163.0 ],
                    "text": "Open the gate if the level the left input is greater than a certain level (threshold) and close the gate if lower\ninput: \n     - data values [list]\n     - float to control the gate\n\noutput:\n     - [1]: values [list] if open\n     - [2]: 0/1 close or open [int]"
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
                    "patching_rect": [ 488.0, 942.0, 24.0, 24.0 ]
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
                    "patching_rect": [ 441.0, 942.0, 24.0, 24.0 ]
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
                    "patching_rect": [ 441.0, 916.0, 66.0, 20.0 ],
                    "text": "togedge"
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
                    "id": "obj-22",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.acc.intensity.maxpat",
                    "numinlets": 4,
                    "numoutlets": 4,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "float", "float", "float", "float" ],
                    "patching_rect": [ 167.0, 543.0, 293.0, 136.0 ],
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
                    "patching_rect": [ 441.0, 891.0, 19.0, 19.0 ]
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
                    "id": "obj-25",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.gate.maxpat",
                    "numinlets": 5,
                    "numoutlets": 2,
                    "offset": [ 1.0, -4.0 ],
                    "outlettype": [ "", "int" ],
                    "patching_rect": [ 30.0, 719.0, 430.0, 148.0 ],
                    "varname": "gst.gate.float",
                    "viewvisibility": 1
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
                    "patching_rect": [ 99.0, 53.0, 132.0, 42.0 ],
                    "text": "gst.gate"
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
                    "patching_rect": [ 29.999999999999886, 268.0, 434.0000000000001, 259.0 ],
                    "varname": "gst.recorddata",
                    "viewvisibility": 1
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
                    "midpoints": [ 39.499999999999886, 533.0, 176.5, 533.0 ],
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
        "parameters": {
            "obj-22::obj-195::obj-125": [ "compexp", "compexp", 0 ],
            "obj-22::obj-195::obj-13": [ "minMonitor[1]", "minMonitor", 0 ],
            "obj-22::obj-195::obj-136": [ "live.menu[1]", "live.menu", 0 ],
            "obj-22::obj-195::obj-139": [ "live.menu", "live.menu", 0 ],
            "obj-22::obj-195::obj-14": [ "maxMonitor[1]", "maxMonitor", 0 ],
            "obj-22::obj-195::obj-142": [ "derivativewindow", "maveragewindow", 0 ],
            "obj-22::obj-195::obj-146": [ "maveragewindow", "maveragewindow", 0 ],
            "obj-22::obj-195::obj-150": [ "gateonoff", "gateonoff", 0 ],
            "obj-22::obj-195::obj-151": [ "cliponoff", "cliponoff", 0 ],
            "obj-22::obj-195::obj-154": [ "clipmax", "gain", 0 ],
            "obj-22::obj-195::obj-31": [ "gatethresh", "gatethresh", 0 ],
            "obj-22::obj-195::obj-42": [ "framerate", "framerate", 0 ],
            "obj-22::obj-195::obj-82": [ "fcut", "fcut", 0 ],
            "obj-22::obj-195::obj-86": [ "gain", "gain", 0 ],
            "obj-22::obj-37": [ "live.text[8]", "live.text", 0 ],
            "obj-25::obj-27": [ "continuous[1]", "conti", 0 ],
            "obj-25::obj-34": [ "live.toggle[2]", "bypass", 0 ],
            "obj-25::obj-6": [ "live.text[3]", "live.text", 0 ],
            "obj-25::obj-8::obj-14": [ "threshold", "threshold", 0 ],
            "obj-25::obj-8::obj-16": [ "bypass", "bypass", 0 ],
            "obj-25::obj-8::obj-27": [ "continuous", "continuous", 0 ],
            "obj-25::obj-8::obj-34": [ "maxMonitor", "maxMonitor", 0 ],
            "obj-25::obj-8::obj-37": [ "minMonitor", "minMonitor", 0 ],
            "obj-48::obj-15": [ "live.text[4]", "live.text", 0 ],
            "obj-48::obj-16": [ "loop", "loop", 0 ],
            "obj-48::obj-18": [ "live.text[7]", "live.text", 0 ],
            "obj-48::obj-4": [ "live.text[5]", "live.text", 0 ],
            "obj-48::obj-40": [ "live.toggle", "live.toggle", 0 ],
            "obj-48::obj-50": [ "live.numbox", "live.numbox", 0 ],
            "obj-48::obj-57": [ "autoscale", "autoscale", 0 ],
            "obj-48::obj-6": [ "live.text[6]", "live.text", 0 ],
            "obj-48::obj-71": [ "live.toggle[1]", "live.toggle", 0 ],
            "obj-48::obj-80": [ "live.text[9]", "live.text", 0 ],
            "obj-48::obj-85::obj-25": [ "maxduration", "maxduration", 0 ],
            "obj-6::obj-37": [ "live.text[10]", "live.text", 0 ],
            "obj-6::obj-8::obj-34": [ "maxMonitor[2]", "maxMonitor", 0 ],
            "obj-6::obj-8::obj-37": [ "minMonitor[2]", "minMonitor", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "parameter_overrides": {
                "obj-22::obj-195::obj-13": {
                    "parameter_longname": "minMonitor[1]"
                },
                "obj-22::obj-195::obj-14": {
                    "parameter_longname": "maxMonitor[1]"
                },
                "obj-22::obj-37": {
                    "parameter_longname": "live.text[8]"
                },
                "obj-25::obj-27": {
                    "parameter_longname": "continuous[1]"
                },
                "obj-25::obj-34": {
                    "parameter_longname": "live.toggle[2]"
                },
                "obj-25::obj-6": {
                    "parameter_longname": "live.text[3]"
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
                "obj-48::obj-6": {
                    "parameter_longname": "live.text[6]"
                },
                "obj-6::obj-37": {
                    "parameter_longname": "live.text[10]"
                },
                "obj-6::obj-8::obj-34": {
                    "parameter_longname": "maxMonitor[2]"
                },
                "obj-6::obj-8::obj-37": {
                    "parameter_longname": "minMonitor[2]"
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0,
        "toolbaradditions": [ "s2n", "Modalys", "Gestural-Sound-Toolkit" ]
    }
}