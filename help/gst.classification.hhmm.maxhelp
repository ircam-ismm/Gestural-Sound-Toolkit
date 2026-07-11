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
        "rect": [ 51.0, 102.0, 520.0, 995.0 ],
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
                        "rect": [ 0.0, 26.0, 520.0, 969.0 ],
                        "default_fontsize": 13.0,
                        "gridsize": [ 5.0, 5.0 ],
                        "showontab": 1,
                        "boxes": [
                            {
                                "box": {
                                    "bgcolor": [ 0.2, 0.2, 0.2, 0.0 ],
                                    "candicane2": [ 0.745098, 0.596078, 1.0, 1.0 ],
                                    "candicane3": [ 0.250980392156863, 0.203921568627451, 0.937254901960784, 1.0 ],
                                    "candycane": 3,
                                    "id": "obj-11",
                                    "ignoreclick": 1,
                                    "maxclass": "multislider",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 9.0, 586.0, 405.0, 145.0 ],
                                    "saved_attribute_attributes": {
                                        "candicane2": {
                                            "expression": "themecolor.live_scale_awareness"
                                        },
                                        "candicane3": {
                                            "expression": "themecolor.live_midi_assignment"
                                        },
                                        "slidercolor": {
                                            "expression": "themecolor.live_active_automation"
                                        }
                                    },
                                    "setminmax": [ 0.0, 1.0 ],
                                    "setstyle": 1,
                                    "shadowalpha": 0.9900000000000002,
                                    "shadoworientation": 3,
                                    "shadowproportion": 1.0,
                                    "signed": 1,
                                    "size": 5,
                                    "slidercolor": [ 1.0, 0.345098039215686, 0.298039215686275, 1.0 ],
                                    "spacing": 5,
                                    "thickness": 16
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.0,
                                    "id": "obj-7",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 66.0, 764.0, 39.0, 17.0 ],
                                    "text": "deferlow"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 9.0,
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 66.0, 742.0, 60.0, 19.0 ],
                                    "text": "loadmess 10"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 52.0, 551.0, 355.0, 23.0 ],
                                    "text": "0.000002 0.997842 0.001713 0.000009 0.000434"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.0,
                                    "hidden": 1,
                                    "id": "obj-15",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 512.0, 509.0, 39.0, 17.0 ],
                                    "text": "deferlow"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.0,
                                    "hidden": 1,
                                    "id": "obj-16",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 553.0, 486.0, 121.0, 17.0 ],
                                    "text": "loadmess resizetowindowrect 4"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 9.0,
                                    "hidden": 1,
                                    "id": "obj-21",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 512.0, 462.0, 162.0, 19.0 ],
                                    "text": "loadmess readall gmm-overview.mubu"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "newobj",
                                    "numinlets": 9,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 9.0, 506.0, 495.0, 23.0 ],
                                    "text": "gst.classification.hhmm @enable 1 @auto+ 1 @regularization 0.2 @total 6",
                                    "varname": "gst.classification.hhmm"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-31",
                                    "linecount": 2,
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 9.0, 429.0, 495.0, 38.0 ],
                                    "text": "gst.orientation @framerate 100 @bounds -1.1 1.1 @input.units V3 @output.units RIoT2 @orientation.gyroweight 15",
                                    "varname": "gst.orientation"
                                }
                            },
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
                                    "patching_rect": [ 10.0, 140.0, 211.0, 18.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 231.0, 202.0, 124.0, 17.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "val1", "val2" ],
                                            "parameter_invisible": 4,
                                            "parameter_longname": "live.text[14]",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "live.text",
                                            "parameter_type": 2
                                        }
                                    },
                                    "text": "interactive machine learning.maxpat",
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
                                    "patching_rect": [ 231.0, 141.0, 58.0, 17.0 ],
                                    "text": "p load-helpfile"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 9.0,
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 9.0, 763.0, 55.0, 19.0 ],
                                    "text": "loadmess 1"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-12",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 428.0, 586.0, 50.0, 23.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 9.0,
                                    "id": "obj-10",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 158.0, 763.0, 67.0, 19.0 ],
                                    "text": "loadmess 0.25"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "local": 1,
                                    "maxclass": "mc.ezdac~",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 323.0, 821.0, 45.0, 45.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-49",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 9.0, 940.0, 80.0, 23.0 ],
                                    "text": "mc.dac~ 1 2"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 9.0,
                                    "id": "obj-14",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 231.0, 763.0, 120.0, 19.0 ],
                                    "text": "loadmess C74:/media/msp"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.823529, 0.823529, 0.823529, 0.0 ],
                                    "bgmode": 2,
                                    "border": 1,
                                    "clickthrough": 0,
                                    "enablehscroll": 0,
                                    "enablevscroll": 0,
                                    "id": "obj-1",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "gst.synth.scrub.samples.maxpat",
                                    "numinlets": 5,
                                    "numoutlets": 2,
                                    "offset": [ 0.0, 0.0 ],
                                    "outlettype": [ "multichannelsignal", "multichannelsignal" ],
                                    "patching_rect": [ 9.0, 788.0, 246.0, 146.0 ],
                                    "varname": "synth.scratch.samples",
                                    "viewvisibility": 1
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.0,
                                    "hidden": 1,
                                    "id": "obj-3",
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
                                        "rect": [ 134.0, 174.0, 258.0, 348.0 ],
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
                                    "patching_rect": [ 402.0, 128.0, 102.0, 26.0 ],
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
                                    "id": "obj-34",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "gst.recorddata.maxpat",
                                    "numinlets": 6,
                                    "numoutlets": 3,
                                    "offset": [ -2.0, -4.0 ],
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 9.0, 166.0, 495.0, 233.0 ],
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
                                    "jsarguments": [ "gst.classification.hhmm" ],
                                    "maxclass": "jsui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 10.0, 10.0, 498.0, 128.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-49", 0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 3 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 4 ],
                                    "source": [ "obj-14", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 8 ],
                                    "hidden": 1,
                                    "source": [ "obj-15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-34", 5 ],
                                    "hidden": 1,
                                    "source": [ "obj-3", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-34", 4 ],
                                    "hidden": 1,
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "source": [ "obj-31", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-31", 1 ],
                                    "source": [ "obj-34", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-31", 0 ],
                                    "source": [ "obj-34", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 1 ],
                                    "source": [ "obj-7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-58", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-8", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 2 ],
                                    "midpoints": [ 494.5, 744.1796875, 132.0, 744.1796875 ],
                                    "order": 1,
                                    "source": [ "obj-9", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "order": 1,
                                    "source": [ "obj-9", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "order": 0,
                                    "source": [ "obj-9", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 1 ],
                                    "order": 0,
                                    "source": [ "obj-9", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "s2n", "Modalys", "Gestural-Sound-Toolkit" ]
                    },
                    "patching_rect": [ 10.0, 112.0, 46.0, 22.0 ],
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
                    "patching_rect": [ 261.0, 148.0, 216.0, 22.0 ],
                    "saved_object_attributes": {
                        "filename": "helpstarter.js",
                        "parameter_enable": 0
                    },
                    "text": "js helpstarter.js gst.classification.hhmm"
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
                        "rect": [ 51.0, 128.0, 520.0, 969.0 ],
                        "default_fontsize": 13.0,
                        "gridsize": [ 5.0, 5.0 ],
                        "showontab": 1,
                        "boxes": [
                            {
                                "box": {
                                    "fontsize": 8.0,
                                    "id": "obj-7",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 66.0, 764.0, 39.0, 17.0 ],
                                    "text": "deferlow"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 9.0,
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 66.0, 742.0, 60.0, 19.0 ],
                                    "text": "loadmess 10"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 9.0, 708.0, 355.0, 23.0 ],
                                    "text": "0.000002 0.997829 0.001723 0.000009 0.000437"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.0,
                                    "hidden": 1,
                                    "id": "obj-15",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 512.0, 509.0, 39.0, 17.0 ],
                                    "text": "deferlow"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.0,
                                    "hidden": 1,
                                    "id": "obj-16",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 553.0, 486.0, 121.0, 17.0 ],
                                    "text": "loadmess resizetowindowrect 4"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 9.0,
                                    "hidden": 1,
                                    "id": "obj-21",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 512.0, 462.0, 162.0, 19.0 ],
                                    "text": "loadmess readall gmm-overview.mubu"
                                }
                            },
                            {
                                "box": {
                                    "bgmode": 0,
                                    "border": 1,
                                    "clickthrough": 0,
                                    "enablehscroll": 0,
                                    "enablevscroll": 0,
                                    "id": "obj-9",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "gst.classification.hhmm.maxpat",
                                    "numinlets": 9,
                                    "numoutlets": 3,
                                    "offset": [ 0.0, -3.0 ],
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 9.0, 463.0, 495.0, 228.0 ],
                                    "varname": "gst.classification.hhmm",
                                    "viewvisibility": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-31",
                                    "linecount": 2,
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 9.0, 413.0, 495.0, 38.0 ],
                                    "text": "gst.orientation @framerate 100 @bounds -1.1 1.1 @input.units V3 @output.units RIoT2 @orientation.gyroweight 15",
                                    "varname": "gst.orientation"
                                }
                            },
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
                                    "patching_rect": [ 10.0, 140.0, 211.0, 18.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 231.0, 202.0, 124.0, 17.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "val1", "val2" ],
                                            "parameter_invisible": 4,
                                            "parameter_longname": "live.text[32]",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "live.text",
                                            "parameter_type": 2
                                        }
                                    },
                                    "text": "interactive machine learning.maxpat",
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
                                    "patching_rect": [ 231.0, 141.0, 58.0, 17.0 ],
                                    "text": "p load-helpfile"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 9.0,
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 9.0, 763.0, 55.0, 19.0 ],
                                    "text": "loadmess 1"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-12",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 431.0, 708.0, 50.0, 23.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 9.0,
                                    "id": "obj-10",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 158.0, 763.0, 67.0, 19.0 ],
                                    "text": "loadmess 0.25"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "local": 1,
                                    "maxclass": "mc.ezdac~",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 323.0, 821.0, 45.0, 45.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-49",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 9.0, 940.0, 80.0, 23.0 ],
                                    "text": "mc.dac~ 1 2"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 9.0,
                                    "id": "obj-14",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 231.0, 763.0, 120.0, 19.0 ],
                                    "text": "loadmess C74:/media/msp"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.823529, 0.823529, 0.823529, 0.0 ],
                                    "bgmode": 2,
                                    "border": 1,
                                    "clickthrough": 0,
                                    "enablehscroll": 0,
                                    "enablevscroll": 0,
                                    "id": "obj-1",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "gst.synth.scrub.samples.maxpat",
                                    "numinlets": 5,
                                    "numoutlets": 2,
                                    "offset": [ 0.0, 0.0 ],
                                    "outlettype": [ "multichannelsignal", "multichannelsignal" ],
                                    "patching_rect": [ 9.0, 788.0, 246.0, 146.0 ],
                                    "varname": "synth.scratch.samples",
                                    "viewvisibility": 1
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.0,
                                    "hidden": 1,
                                    "id": "obj-3",
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
                                        "rect": [ 134.0, 174.0, 258.0, 348.0 ],
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
                                    "patching_rect": [ 402.0, 128.0, 102.0, 26.0 ],
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
                                    "id": "obj-34",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "gst.recorddata.maxpat",
                                    "numinlets": 6,
                                    "numoutlets": 3,
                                    "offset": [ -2.0, -4.0 ],
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 9.0, 166.0, 495.0, 233.0 ],
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
                                    "jsarguments": [ "gst.classification.hhmm" ],
                                    "maxclass": "jsui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 10.0, 10.0, 498.0, 128.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-49", 0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 3 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 4 ],
                                    "source": [ "obj-14", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 8 ],
                                    "hidden": 1,
                                    "source": [ "obj-15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-34", 5 ],
                                    "hidden": 1,
                                    "source": [ "obj-3", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-34", 4 ],
                                    "hidden": 1,
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "source": [ "obj-31", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-31", 1 ],
                                    "source": [ "obj-34", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-31", 0 ],
                                    "source": [ "obj-34", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 1 ],
                                    "source": [ "obj-7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-58", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-8", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 2 ],
                                    "midpoints": [ 494.5, 744.1796875, 132.0, 744.1796875 ],
                                    "order": 1,
                                    "source": [ "obj-9", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "order": 0,
                                    "source": [ "obj-9", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 1 ],
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
                    "jsarguments": [ "gst.classification.hhmm" ],
                    "maxclass": "jsui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 10.0, 10.0, 492.583984375, 57.599853515625 ]
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
                        "rect": [ 0.0, 26.0, 520.0, 969.0 ],
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
            "obj-2::obj-1::obj-14": [ "position", "position", 0 ],
            "obj-2::obj-1::obj-2": [ "ogain", "ogain", 0 ],
            "obj-2::obj-1::obj-88": [ "start", "start", 0 ],
            "obj-2::obj-31::obj-11": [ "live.text[3]", "live.text", 0 ],
            "obj-2::obj-31::obj-5::obj-17": [ "out-sens-type", "out-sens-type", 0 ],
            "obj-2::obj-31::obj-5::obj-179": [ "in-sens-type", "in-sens-type", 0 ],
            "obj-2::obj-31::obj-5::obj-34": [ "maxMonitor", "maxMonitor", 0 ],
            "obj-2::obj-31::obj-5::obj-37": [ "minMonitor", "minMonitor", 0 ],
            "obj-2::obj-31::obj-5::obj-42": [ "frame-rate", "framerate", 0 ],
            "obj-2::obj-31::obj-5::obj-48": [ "gyroweight", "maveragewindow", 0 ],
            "obj-2::obj-34::obj-15": [ "live.text[12]", "live.text", 0 ],
            "obj-2::obj-34::obj-16": [ "loop", "loop", 0 ],
            "obj-2::obj-34::obj-18": [ "live.text[10]", "live.text", 0 ],
            "obj-2::obj-34::obj-4": [ "live.text[11]", "live.text", 0 ],
            "obj-2::obj-34::obj-40": [ "live.toggle[2]", "live.toggle", 0 ],
            "obj-2::obj-34::obj-50": [ "live.numbox", "live.numbox", 0 ],
            "obj-2::obj-34::obj-57": [ "autoscale", "autoscale", 0 ],
            "obj-2::obj-34::obj-6": [ "live.text[13]", "live.text", 0 ],
            "obj-2::obj-34::obj-71": [ "live.toggle[1]", "live.toggle", 0 ],
            "obj-2::obj-34::obj-80": [ "live.text[9]", "live.text", 0 ],
            "obj-2::obj-34::obj-85::obj-25": [ "maxduration", "maxduration", 0 ],
            "obj-2::obj-8": [ "live.text[32]", "live.text", 0 ],
            "obj-2::obj-9::obj-11": [ "total", "total", 0 ],
            "obj-2::obj-9::obj-29": [ "regularization", "regularization", 0 ],
            "obj-2::obj-9::obj-39": [ "label", "label", 0 ],
            "obj-2::obj-9::obj-59": [ "live.text[33]", "live.text", 0 ],
            "obj-2::obj-9::obj-64": [ "live.text[6]", "live.text", 0 ],
            "obj-2::obj-9::obj-66": [ "live.text[8]", "live.text", 0 ],
            "obj-2::obj-9::obj-7": [ "auto+", "auto+", 0 ],
            "obj-2::obj-9::obj-70": [ "live.text[7]", "live.text", 0 ],
            "obj-2::obj-9::obj-73": [ "live.toggle", "live.toggle", 0 ],
            "obj-2::obj-9::obj-90": [ "enable", "enable", 0 ],
            "obj-3::obj-1::obj-14": [ "position[1]", "position", 0 ],
            "obj-3::obj-1::obj-2": [ "ogain[1]", "ogain", 0 ],
            "obj-3::obj-1::obj-88": [ "start[1]", "start", 0 ],
            "obj-3::obj-31::obj-11": [ "live.text[20]", "live.text", 0 ],
            "obj-3::obj-31::obj-5::obj-17": [ "out-sens-type[1]", "out-sens-type", 0 ],
            "obj-3::obj-31::obj-5::obj-179": [ "in-sens-type[1]", "in-sens-type", 0 ],
            "obj-3::obj-31::obj-5::obj-34": [ "maxMonitor[1]", "maxMonitor", 0 ],
            "obj-3::obj-31::obj-5::obj-37": [ "minMonitor[1]", "minMonitor", 0 ],
            "obj-3::obj-31::obj-5::obj-42": [ "frame-rate[1]", "framerate", 0 ],
            "obj-3::obj-31::obj-5::obj-48": [ "gyroweight[1]", "maveragewindow", 0 ],
            "obj-3::obj-34::obj-15": [ "live.text[18]", "live.text", 0 ],
            "obj-3::obj-34::obj-16": [ "loop[1]", "loop", 0 ],
            "obj-3::obj-34::obj-18": [ "live.text[19]", "live.text", 0 ],
            "obj-3::obj-34::obj-4": [ "live.text[15]", "live.text", 0 ],
            "obj-3::obj-34::obj-40": [ "live.toggle[4]", "live.toggle", 0 ],
            "obj-3::obj-34::obj-50": [ "live.numbox[1]", "live.numbox", 0 ],
            "obj-3::obj-34::obj-57": [ "autoscale[1]", "autoscale", 0 ],
            "obj-3::obj-34::obj-6": [ "live.text[17]", "live.text", 0 ],
            "obj-3::obj-34::obj-71": [ "live.toggle[3]", "live.toggle", 0 ],
            "obj-3::obj-34::obj-80": [ "live.text[16]", "live.text", 0 ],
            "obj-3::obj-34::obj-85::obj-25": [ "maxduration[1]", "maxduration", 0 ],
            "obj-3::obj-8": [ "live.text[14]", "live.text", 0 ],
            "obj-3::obj-9::obj-11": [ "total[1]", "total", 0 ],
            "obj-3::obj-9::obj-29": [ "regularization[1]", "regularization", 0 ],
            "obj-3::obj-9::obj-39": [ "label[1]", "label", 0 ],
            "obj-3::obj-9::obj-59": [ "live.text[23]", "live.text", 0 ],
            "obj-3::obj-9::obj-64": [ "live.text[34]", "live.text", 0 ],
            "obj-3::obj-9::obj-66": [ "live.text[22]", "live.text", 0 ],
            "obj-3::obj-9::obj-7": [ "auto+[1]", "auto+", 0 ],
            "obj-3::obj-9::obj-70": [ "live.text[21]", "live.text", 0 ],
            "obj-3::obj-9::obj-73": [ "live.toggle[5]", "live.toggle", 0 ],
            "obj-3::obj-9::obj-90": [ "enable[1]", "enable", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "parameter_overrides": {
                "obj-2::obj-9::obj-59": {
                    "parameter_longname": "live.text[33]"
                },
                "obj-3::obj-1::obj-14": {
                    "parameter_longname": "position[1]"
                },
                "obj-3::obj-1::obj-2": {
                    "parameter_longname": "ogain[1]"
                },
                "obj-3::obj-1::obj-88": {
                    "parameter_longname": "start[1]"
                },
                "obj-3::obj-31::obj-11": {
                    "parameter_longname": "live.text[20]"
                },
                "obj-3::obj-31::obj-5::obj-17": {
                    "parameter_longname": "out-sens-type[1]"
                },
                "obj-3::obj-31::obj-5::obj-179": {
                    "parameter_longname": "in-sens-type[1]"
                },
                "obj-3::obj-31::obj-5::obj-34": {
                    "parameter_longname": "maxMonitor[1]"
                },
                "obj-3::obj-31::obj-5::obj-37": {
                    "parameter_longname": "minMonitor[1]"
                },
                "obj-3::obj-31::obj-5::obj-42": {
                    "parameter_longname": "frame-rate[1]"
                },
                "obj-3::obj-31::obj-5::obj-48": {
                    "parameter_longname": "gyroweight[1]"
                },
                "obj-3::obj-34::obj-15": {
                    "parameter_longname": "live.text[18]"
                },
                "obj-3::obj-34::obj-16": {
                    "parameter_longname": "loop[1]"
                },
                "obj-3::obj-34::obj-18": {
                    "parameter_longname": "live.text[19]"
                },
                "obj-3::obj-34::obj-4": {
                    "parameter_longname": "live.text[15]"
                },
                "obj-3::obj-34::obj-40": {
                    "parameter_longname": "live.toggle[4]"
                },
                "obj-3::obj-34::obj-50": {
                    "parameter_longname": "live.numbox[1]"
                },
                "obj-3::obj-34::obj-57": {
                    "parameter_longname": "autoscale[1]"
                },
                "obj-3::obj-34::obj-6": {
                    "parameter_longname": "live.text[17]"
                },
                "obj-3::obj-34::obj-71": {
                    "parameter_longname": "live.toggle[3]"
                },
                "obj-3::obj-34::obj-80": {
                    "parameter_longname": "live.text[16]"
                },
                "obj-3::obj-34::obj-85::obj-25": {
                    "parameter_longname": "maxduration[1]"
                },
                "obj-3::obj-9::obj-11": {
                    "parameter_longname": "total[1]"
                },
                "obj-3::obj-9::obj-29": {
                    "parameter_longname": "regularization[1]"
                },
                "obj-3::obj-9::obj-39": {
                    "parameter_longname": "label[1]"
                },
                "obj-3::obj-9::obj-59": {
                    "parameter_longname": "live.text[23]"
                },
                "obj-3::obj-9::obj-64": {
                    "parameter_longname": "live.text[34]"
                },
                "obj-3::obj-9::obj-66": {
                    "parameter_longname": "live.text[22]"
                },
                "obj-3::obj-9::obj-7": {
                    "parameter_longname": "auto+[1]"
                },
                "obj-3::obj-9::obj-70": {
                    "parameter_longname": "live.text[21]"
                },
                "obj-3::obj-9::obj-73": {
                    "parameter_longname": "live.toggle[5]"
                },
                "obj-3::obj-9::obj-90": {
                    "parameter_longname": "enable[1]"
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0,
        "toolbaradditions": [ "s2n", "Modalys", "Gestural-Sound-Toolkit" ]
    }
}