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
        "rect": [ 34.0, 102.0, 489.0, 767.0 ],
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
                        "rect": [ 34.0, 128.0, 489.0, 741.0 ],
                        "default_fontsize": 13.0,
                        "gridsize": [ 5.0, 5.0 ],
                        "showontab": 1,
                        "boxes": [
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "obj-10",
                                    "maxclass": "live.text",
                                    "mode": 0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "parameter_enable": 1,
                                    "parameter_mappable": 0,
                                    "patching_rect": [ 10.0, 145.0, 163.0, 18.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 201.0, 172.0, 124.0, 17.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "val1", "val2" ],
                                            "parameter_invisible": 4,
                                            "parameter_longname": "live.text[2]",
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
                                    "patching_rect": [ 178.0, 146.0, 58.0, 17.0 ],
                                    "text": "p load-helpfile"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-20",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 162.0, 501.0, 51.0, 21.0 ],
                                    "text": "Fc (Hz)"
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
                                    "patching_rect": [ 110.0, 499.0, 50.0, 23.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-17",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 349.0, 438.0, 84.0, 23.0 ],
                                    "text": "bounds -1. 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 281.0, 479.0, 74.0, 21.0 ],
                                    "text": "bypass 0/1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 253.5, 476.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-6",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 372.0, 542.0, 93.0, 25.0 ],
                                    "text": "double click"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "multislider",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 30.0, 588.0, 207.0, 140.0 ],
                                    "setstyle": 3
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "linecount": 2,
                                    "maxclass": "newobj",
                                    "numinlets": 5,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 30.0, 535.0, 338.0, 38.0 ],
                                    "text": "gst.lowpass @biquad.frequency 1 @biquad.Q 0.7 @biquad.gain 1.5 @framerate 100 @bounds -1. 1.",
                                    "varname": "gst.lowpass"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 30.0, 198.0, 89.0, 23.0 ],
                                    "text": "loadmess 500"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-32",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 303.0, 257.0, 106.0, 25.0 ],
                                    "text": "add noisiness"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-30",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 82.0, 224.0, 143.0, 25.0 ],
                                    "text": "set period (samples)"
                                }
                            },
                            {
                                "box": {
                                    "floatoutput": 1,
                                    "id": "obj-15",
                                    "maxclass": "slider",
                                    "mult": 0.1,
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 180.0, 260.0, 120.0, 19.0 ],
                                    "size": 1.0
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-13",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 180.0, 285.0, 50.0, 23.0 ]
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-8",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 30.0, 225.0, 50.0, 23.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "multislider",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 30.0, 349.0, 207.0, 140.0 ],
                                    "setstyle": 3
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
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
                                        "rect": [ 303.0, 246.0, 587.0, 392.0 ],
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-18",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 185.0, 39.0, 22.0 ],
                                                    "text": "- 0.5"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-14",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 285.0, 16.0, 94.0, 20.0 ],
                                                    "text": "amount of noise"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-11",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 84.0, 16.0, 98.0, 20.0 ],
                                                    "text": "period (samples)"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-13",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 111.0, 281.0, 249.0, 20.0 ],
                                                    "text": "make sure the values stay in the [-1, 1] range"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-12",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 285.0, 131.0, 153.0, 20.0 ],
                                                    "text": "control the amount of noise"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-9",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 259.5, 14.0, 28.0, 22.0 ],
                                                    "text": "in 2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-8",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 205.0, 130.0, 73.5, 22.0 ],
                                                    "text": "*"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-6",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 280.0, 52.0, 22.0 ],
                                                    "text": "fold -1 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-5",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 219.0, 174.0, 22.0 ],
                                                    "text": "+"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-2",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 205.0, 83.0, 37.0, 22.0 ],
                                                    "text": "noise"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 14.0, 28.0, 22.0 ],
                                                    "text": "in 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-3",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 83.0, 40.0, 22.0 ],
                                                    "text": "train"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-4",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 50.0, 340.0, 35.0, 22.0 ],
                                                    "text": "out 1"
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-3", 0 ],
                                                    "source": [ "obj-1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-5", 0 ],
                                                    "source": [ "obj-18", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-8", 0 ],
                                                    "source": [ "obj-2", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-18", 0 ],
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
                                                    "destination": [ "obj-4", 0 ],
                                                    "source": [ "obj-6", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-5", 1 ],
                                                    "source": [ "obj-8", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-8", 1 ],
                                                    "source": [ "obj-9", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 30.0, 315.0, 169.0, 23.0 ],
                                    "text": "gen @interval 10 @active 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 10.0, 173.0, 477.0, 21.0 ],
                                    "text": "Eliminates rapid variations in the signal. Consequently, it smoothes the transitions"
                                }
                            },
                            {
                                "box": {
                                    "border": 0,
                                    "filename": "helpdetails.js",
                                    "id": "obj-2",
                                    "ignoreclick": 1,
                                    "jsarguments": [ "gst.lowpass" ],
                                    "maxclass": "jsui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 10.0, 10.0, 349.0, 125.0 ]
                                }
                            },
                            {
                                "box": {
                                    "attr": "active",
                                    "id": "obj-21",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 58.0, 275.0, 82.0, 23.0 ],
                                    "text_width": 55.0
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-58", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-10", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 3 ],
                                    "source": [ "obj-11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 1 ],
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "source": [ "obj-15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 4 ],
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 1 ],
                                    "source": [ "obj-19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "order": 1,
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "order": 0,
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "source": [ "obj-7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-8", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "s2n", "Modalys", "Gestural-Sound-Toolkit" ]
                    },
                    "patching_rect": [ 10.0, 110.0, 46.0, 22.0 ],
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
                    "patching_rect": [ 261.0, 148.0, 155.0, 22.0 ],
                    "saved_object_attributes": {
                        "filename": "helpstarter.js",
                        "parameter_enable": 0
                    },
                    "text": "js helpstarter.js gst.lowpass"
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
                        "rect": [ 0.0, 26.0, 489.0, 741.0 ],
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
                                    "patching_rect": [ 10.0, 155.0, 163.0, 18.0 ],
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
                                    "patching_rect": [ 178.0, 156.0, 58.0, 17.0 ],
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
                                    "patching_rect": [ 360.0, 155.0, 102.0, 26.0 ],
                                    "text": "p load&start readall overview.mubu"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial Italic",
                                    "fontsize": 14.0,
                                    "id": "obj-10",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 201.0, 461.0, 261.0, 22.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 29.0, 231.0, 264.0, 22.0 ],
                                    "text": "embeded <bpatcher> saves parameters."
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
                                    "patching_rect": [ 28.0, 187.0, 434.0, 259.0 ],
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
                                    "embed": 1,
                                    "enablehscroll": 0,
                                    "enablevscroll": 0,
                                    "id": "obj-31",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "gst.lowpass.maxpat",
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
                                        "rect": [ 34.0, 102.0, 137.0, 121.0 ],
                                        "openinpresentation": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-7",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 95.0, 377.0, 29.0, 22.0 ],
                                                    "text": "thru"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-17",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 34.0, 256.0, 29.5, 22.0 ],
                                                    "text": "+ 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-12",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 34.0, 295.0, 80.0, 22.0 ],
                                                    "text": "gate 2 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-20",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 35.0, 197.0, 41.0, 22.0 ],
                                                    "text": "set $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "annotation": "bypass",
                                                    "annotation_name": "bypass",
                                                    "hint": "bypass",
                                                    "id": "obj-34",
                                                    "maxclass": "live.toggle",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "parameter_enable": 1,
                                                    "patching_rect": [ 35.0, 227.0, 15.0, 15.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 65.0, 4.0, 15.0, 15.0 ],
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
                                                    "patching_rect": [ 9.0, 168.0, 78.0, 21.0 ],
                                                    "text": "r #0-bypass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-2",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "int", "int" ],
                                                    "patching_rect": [ 116.0, 164.0, 65.0, 22.0 ],
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
                                                    "patching_rect": [ 116.0, 107.0, 63.0, 22.0 ],
                                                    "text": "r gst.clock"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-6",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 116.0, 137.0, 91.0, 22.0 ],
                                                    "text": "route framerate"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "filtered data",
                                                    "id": "obj-4",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 95.0, 559.0, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 11.0,
                                                    "id": "obj-3",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 440.0, 468.0, 50.0, 21.0 ],
                                                    "text": "deferlow"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 11.0,
                                                    "id": "obj-18",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 440.0, 446.0, 161.0, 21.0 ],
                                                    "text": "loadmess resizetowindowrect 4"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 11.0,
                                                    "id": "obj-19",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 425.0, 423.0, 120.0, 21.0 ],
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
                                                    "patching_rect": [ 482.0, 117.5, 35.0, 22.0 ],
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
                                                    "patching_rect": [ 482.0, 147.5, 51.0, 22.0 ],
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
                                                    "patching_rect": [ 482.0, 96.5, 54.0, 15.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 91.0, 3.989270269870758, 32.918452501297, 15.021459460258484 ],
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
                                                    "text": "More",
                                                    "texton": "Norm. Acc.",
                                                    "varname": "live.text[3]"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-11",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 316.0, 449.0, 54.0, 22.0 ],
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
                                                    "patching_rect": [ 316.0, 420.0, 109.0, 22.0 ],
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
                                                    "patching_rect": [ 271.0, 290.0, 83.0, 22.0 ],
                                                    "text": "r #0-biquad"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-197",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "", "" ],
                                                    "patching_rect": [ 1166.0, 91.0, 85.0, 22.0 ],
                                                    "text": "getattr bounds"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 11.0,
                                                    "id": "obj-195",
                                                    "maxclass": "newobj",
                                                    "numinlets": 8,
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
                                                        "rect": [ 327.0, 102.0, 454.0, 327.0 ],
                                                        "openinpresentation": 1,
                                                        "boxes": [
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-20",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 1148.0, 170.0, 80.0, 21.0 ],
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
                                                                    "patching_rect": [ 1182.0, 129.0, 92.0, 19.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 152.0, 7.5, 27.0, 19.0 ],
                                                                    "text": "byp"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-17",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 1148.0, 92.0, 41.0, 22.0 ],
                                                                    "text": "set $1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-18",
                                                                    "maxclass": "live.toggle",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "parameter_enable": 1,
                                                                    "patching_rect": [ 1148.0, 126.0, 15.0, 15.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 134.0, 10.5, 15.0, 15.0 ],
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
                                                                    "index": 8,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 1148.0, 31.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-16",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 368.0, 234.0, 41.0, 22.0 ],
                                                                    "text": "set $1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-15",
                                                                    "index": 1,
                                                                    "maxclass": "outlet",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 368.0, 258.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-8",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 807.0, 35.0, 91.0, 22.0 ],
                                                                    "text": "loadmess -1. 1."
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-23",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 4,
                                                                    "outlettype": [ "", "", "", "" ],
                                                                    "patching_rect": [ 312.0, 287.0, 56.0, 22.0 ],
                                                                    "restore": {
                                                                        "bypass": [ 0.0 ],
                                                                        "comp-exp": [ 0.5 ],
                                                                        "cut-frequency": [ 10.999999999999995 ],
                                                                        "frame-rate": [ 100.0 ],
                                                                        "gain": [ 1.0 ],
                                                                        "maxMonitor": [ 3.4000000953674316 ],
                                                                        "minMonitor": [ -1.399999976158142 ]
                                                                    },
                                                                    "text": "autopattr",
                                                                    "varname": "u933006469"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-29",
                                                                    "justification": 1,
                                                                    "linecolor": [ 0.156862745098039, 0.156862745098039, 0.156862745098039, 1.0 ],
                                                                    "maxclass": "live.line",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 326.0, 341.0, 5.0, 100.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 213.0, 7.0, 13.0, 312.0 ],
                                                                    "saved_attribute_attributes": {
                                                                        "linecolor": {
                                                                            "expression": "themecolor.live_meter_bg"
                                                                        }
                                                                    }
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-27",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 3,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 734.0, 189.0, 103.0, 22.0 ],
                                                                    "text": "pak bounds f f"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-24",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 734.0, 230.0, 102.0, 21.0 ],
                                                                    "text": "s #0-mubu-scroll"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-28",
                                                                    "index": 7,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 766.0, 31.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-202",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 927.0, 92.0, 41.0, 22.0 ],
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
                                                                    "patching_rect": [ 766.0, 92.0, 41.0, 22.0 ],
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
                                                                    "patching_rect": [ 766.0, 66.0, 180.0, 22.0 ],
                                                                    "text": "unpack f f"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "bgcolor": [ 1.0, 1.0, 1.0, 0.4 ],
                                                                    "fontname": "Arial",
                                                                    "fontsize": 14.0,
                                                                    "id": "obj-26",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 427.0, 5.0, 239.0, 22.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 227.0, 7.0, 223.0, 22.0 ],
                                                                    "text": "more"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-12",
                                                                    "linecount": 2,
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 598.0, 128.0, 65.0, 31.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 282.0, 59.0, 82.0, 19.0 ],
                                                                    "text": "Q quality factor"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-10",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 479.0, 127.0, 67.0, 19.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 282.0, 35.0, 67.0, 19.0 ],
                                                                    "text": "gain (linear)"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-6",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 151.0, 128.0, 110.0, 19.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 64.0, 35.0, 110.0, 19.0 ],
                                                                    "text": "cutoff frequency (Hz)"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-2",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 321.0, 128.0, 100.0, 19.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 64.0, 59.0, 100.0, 19.0 ],
                                                                    "text": "Frame rate (Hz)"
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
                                                                    "patching_rect": [ 5.0, 5.0, 239.0, 22.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 4.0, 7.0, 207.0, 22.0 ],
                                                                    "text": "Lowpass Filtering"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-4",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 976.0, 126.0, 112.0, 19.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 64.0, 118.0, 112.0, 19.0 ],
                                                                    "text": "Max value for display"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontsize": 12.0,
                                                                    "id": "obj-14",
                                                                    "maxclass": "live.numbox",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "float" ],
                                                                    "parameter_enable": 1,
                                                                    "patching_rect": [ 927.0, 126.0, 53.0, 18.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 11.0, 116.0, 53.0, 18.0 ],
                                                                    "saved_attribute_attributes": {
                                                                        "valueof": {
                                                                            "parameter_linknames": 1,
                                                                            "parameter_longname": "maxMonitor",
                                                                            "parameter_mmax": 180.0,
                                                                            "parameter_mmin": -180.0,
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
                                                                    "id": "obj-13",
                                                                    "maxclass": "live.numbox",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "float" ],
                                                                    "parameter_enable": 1,
                                                                    "patching_rect": [ 766.0, 126.0, 53.0, 18.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 11.0, 141.0, 53.0, 18.0 ],
                                                                    "saved_attribute_attributes": {
                                                                        "valueof": {
                                                                            "parameter_linknames": 1,
                                                                            "parameter_longname": "minMonitor",
                                                                            "parameter_mmax": 180.0,
                                                                            "parameter_mmin": -180.0,
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
                                                                    "id": "obj-1",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 820.0, 127.0, 109.0, 19.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 64.0, 143.0, 109.0, 19.0 ],
                                                                    "text": "Min value for display"
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
                                                                    "patching_rect": [ 764.0, 5.0, 77.0, 22.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 5.0, 88.0, 206.0, 22.0 ],
                                                                    "text": "Monitoring"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-162",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 546.0, 157.0, 74.0, 22.0 ],
                                                                    "text": "biquad.Q $1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-161",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 427.0, 157.0, 87.0, 22.0 ],
                                                                    "text": "biquad.gain $1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-160",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 99.0, 157.0, 117.0, 22.0 ],
                                                                    "text": "biquad.frequency $1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-159",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 269.0, 157.0, 77.0, 22.0 ],
                                                                    "text": "framerate $1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-157",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 176.0, 287.0, 85.0, 22.0 ],
                                                                    "text": "s #0-biquad"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontsize": 12.0,
                                                                    "id": "obj-125",
                                                                    "maxclass": "live.numbox",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "float" ],
                                                                    "parameter_enable": 1,
                                                                    "patching_rect": [ 546.0, 125.0, 50.0, 18.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 227.0, 57.0, 53.0, 18.0 ],
                                                                    "saved_attribute_attributes": {
                                                                        "valueof": {
                                                                            "parameter_initial": [ 1 ],
                                                                            "parameter_linknames": 1,
                                                                            "parameter_longname": "comp-exp",
                                                                            "parameter_mmax": 10.0,
                                                                            "parameter_mmin": 0.001,
                                                                            "parameter_modmode": 3,
                                                                            "parameter_shortname": "Q",
                                                                            "parameter_type": 0,
                                                                            "parameter_unitstyle": 1
                                                                        }
                                                                    },
                                                                    "varname": "comp-exp"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-126",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 546.0, 91.0, 41.0, 22.0 ],
                                                                    "text": "set $1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontsize": 12.0,
                                                                    "id": "obj-86",
                                                                    "maxclass": "live.numbox",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "float" ],
                                                                    "parameter_enable": 1,
                                                                    "patching_rect": [ 427.0, 125.0, 50.0, 18.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 227.0, 33.0, 53.0, 18.0 ],
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
                                                                    "patching_rect": [ 427.0, 91.0, 41.0, 22.0 ],
                                                                    "text": "set $1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "annotation": "",
                                                                    "appearance": 2,
                                                                    "fontsize": 12.0,
                                                                    "id": "obj-82",
                                                                    "maxclass": "live.numbox",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "float" ],
                                                                    "parameter_enable": 1,
                                                                    "patching_rect": [ 99.0, 126.0, 53.0, 18.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 8.0, 33.0, 53.0, 18.0 ],
                                                                    "prototypename": "freq",
                                                                    "saved_attribute_attributes": {
                                                                        "valueof": {
                                                                            "parameter_exponent": 3.333333,
                                                                            "parameter_initial": [ 10.999999999999995 ],
                                                                            "parameter_initial_enable": 1,
                                                                            "parameter_linknames": 1,
                                                                            "parameter_longname": "cut-frequency",
                                                                            "parameter_mmax": 1000.0,
                                                                            "parameter_mmin": 0.1,
                                                                            "parameter_modmode": 0,
                                                                            "parameter_shortname": "fcut",
                                                                            "parameter_type": 0,
                                                                            "parameter_unitstyle": 3
                                                                        }
                                                                    },
                                                                    "varname": "cut-frequency"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-81",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 99.0, 93.0, 41.0, 22.0 ],
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
                                                                    "patching_rect": [ 269.0, 92.0, 41.0, 22.0 ],
                                                                    "text": "set $1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontsize": 12.0,
                                                                    "id": "obj-42",
                                                                    "maxclass": "live.numbox",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "float" ],
                                                                    "parameter_enable": 1,
                                                                    "patching_rect": [ 269.0, 126.0, 53.0, 18.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 8.0, 57.0, 53.0, 18.0 ],
                                                                    "saved_attribute_attributes": {
                                                                        "valueof": {
                                                                            "parameter_linknames": 1,
                                                                            "parameter_longname": "frame-rate",
                                                                            "parameter_mmax": 1000.0,
                                                                            "parameter_modmode": 3,
                                                                            "parameter_shortname": "framerate",
                                                                            "parameter_type": 0,
                                                                            "parameter_unitstyle": 1
                                                                        }
                                                                    },
                                                                    "varname": "frame-rate"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-178",
                                                                    "index": 4,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 269.0, 31.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-179",
                                                                    "index": 3,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 99.0, 31.0, 30.0, 30.0 ]
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
                                                                    "patching_rect": [ 6.0, 31.0, 30.0, 30.0 ]
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
                                                                    "patching_rect": [ 427.0, 31.0, 30.0, 30.0 ]
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
                                                                    "patching_rect": [ 47.0, 31.0, 30.0, 30.0 ]
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
                                                                    "patching_rect": [ 546.0, 31.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontface": 2,
                                                                    "fontname": "Arial",
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-3",
                                                                    "linecount": 2,
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 1.0, 475.0, 231.0, 31.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_linecount": 2,
                                                                    "presentation_rect": [ 227.0, 288.0, 226.0, 31.0 ],
                                                                    "text": "Note: uses PiPo from ISMM team at IRCAM Centre Pompidou http://ismm.ircam.fr/pipo/"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 12.0,
                                                                    "id": "obj-5",
                                                                    "linecount": 10,
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 3.0, 355.0, 338.0, 141.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_linecount": 10,
                                                                    "presentation_rect": [ 5.0, 190.0, 206.0, 141.0 ],
                                                                    "text": "Lowpass filtering of incoming data\n\ninput: \n - data values [list]\n - cutoff frequency (cut out \n   frequencies higher  than this value)\n - sampling rate\n\noutput:\n - [1]: filtered data [list]"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "bgcolor": [ 1.0, 1.0, 1.0, 0.4 ],
                                                                    "fontname": "Arial",
                                                                    "fontsize": 14.0,
                                                                    "id": "obj-7",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 3.0, 328.0, 120.0, 22.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 5.0, 170.0, 206.0, 22.0 ],
                                                                    "text": "Help [Lowpass]"
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
                                                                    "destination": [ "obj-157", 0 ],
                                                                    "midpoints": [ 278.5, 222.0, 185.5, 222.0 ],
                                                                    "source": [ "obj-159", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-15", 0 ],
                                                                    "source": [ "obj-16", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-157", 0 ],
                                                                    "midpoints": [ 108.5, 222.0, 185.5, 222.0 ],
                                                                    "source": [ "obj-160", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-157", 0 ],
                                                                    "midpoints": [ 436.5, 222.0, 185.5, 222.0 ],
                                                                    "source": [ "obj-161", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-157", 0 ],
                                                                    "midpoints": [ 555.5, 222.0, 185.5, 222.0 ],
                                                                    "source": [ "obj-162", 0 ]
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
                                                                    "destination": [ "obj-20", 0 ],
                                                                    "source": [ "obj-18", 0 ]
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
                                                                    "destination": [ "obj-42", 0 ],
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
                                                                    "destination": [ "obj-17", 0 ],
                                                                    "source": [ "obj-40", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-159", 0 ],
                                                                    "order": 1,
                                                                    "source": [ "obj-42", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-16", 0 ],
                                                                    "order": 0,
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
                                                                    "destination": [ "obj-198", 0 ],
                                                                    "disabled": 1,
                                                                    "source": [ "obj-8", 0 ]
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
                                                    "patching_rect": [ 535.0, 148.0, 635.0, 21.0 ],
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
                                                    "id": "obj-127",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "", "" ],
                                                    "patching_rect": [ 1042.0, 91.0, 95.0, 22.0 ],
                                                    "text": "getattr biquad.Q"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-124",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "", "" ],
                                                    "patching_rect": [ 923.0, 91.0, 108.0, 22.0 ],
                                                    "text": "getattr biquad.gain"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-76",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "", "" ],
                                                    "patching_rect": [ 675.0, 91.0, 138.0, 22.0 ],
                                                    "text": "getattr biquad.frequency"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-35",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "", "" ],
                                                    "patching_rect": [ 819.0, 91.0, 97.0, 22.0 ],
                                                    "text": "getattr framerate"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "id": "obj-14",
                                                    "linecount": 2,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 688.0, 32.0, 94.0, 37.0 ],
                                                    "text": "mubu.scroll configuration"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "mubu.scroll configuration",
                                                    "id": "obj-5",
                                                    "index": 4,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 658.0, 38.0, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "Sampling Rate (Hz)",
                                                    "id": "obj-26",
                                                    "index": 3,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 590.0, 38.0, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "attr": "framerate",
                                                    "id": "obj-38",
                                                    "maxclass": "attrui",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 116.0, 239.0, 211.0, 22.0 ],
                                                    "text_width": 121.0
                                                }
                                            },
                                            {
                                                "box": {
                                                    "attr": "biquad.Q",
                                                    "id": "obj-22",
                                                    "maxclass": "attrui",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 249.0, 193.0, 211.0, 22.0 ],
                                                    "text_width": 121.0
                                                }
                                            },
                                            {
                                                "box": {
                                                    "attr": "biquad.frequency",
                                                    "id": "obj-16",
                                                    "maxclass": "attrui",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 249.0, 140.0, 211.0, 22.0 ],
                                                    "text_width": 121.0
                                                }
                                            },
                                            {
                                                "box": {
                                                    "attr": "biquad.gain",
                                                    "id": "obj-15",
                                                    "maxclass": "attrui",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 249.0, 84.0, 211.0, 22.0 ],
                                                    "text_width": 121.0
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-10",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "float", "" ],
                                                    "patching_rect": [ 213.0, 340.0, 543.0, 22.0 ],
                                                    "text": "pipo biquad @framerate 100 @biquad.filtermode lowpass @biquad.frequency 10 @biquad.Q 0.5"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "Cutoff Frequency (Hz)",
                                                    "id": "obj-9",
                                                    "index": 2,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 535.0, 38.0, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-8",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
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
                                                        "rect": [ 494.0, 184.0, 708.0, 631.0 ],
                                                        "openinpresentation": 1,
                                                        "boxes": [
                                                            {
                                                                "box": {
                                                                    "fontface": 2,
                                                                    "fontname": "Arial",
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-16",
                                                                    "linecount": 2,
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ -3.0, 302.0, 231.0, 27.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_linecount": 3,
                                                                    "presentation_rect": [ 5.0, 282.0, 207.0, 27.0 ],
                                                                    "text": "Note: uses PiPo from ISMM team at IRCAM Centre Pompidou http://ismm.ircam.fr/pipo/"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-11",
                                                                    "linecount": 2,
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 224.5, 73.0, 97.0, 18.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 63.0, 48.0, 148.0, 18.0 ],
                                                                    "text": "Sampling rate (Hz)"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-17",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 177.0, 112.0, 119.0, 20.0 ],
                                                                    "text": "s #0-samplingrate"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-20",
                                                                    "linecount": 2,
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 190.5, 41.0, 76.0, 20.0 ],
                                                                    "text": "loadmess 100."
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 11.0,
                                                                    "format": 6,
                                                                    "id": "obj-21",
                                                                    "maxclass": "flonum",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "bang" ],
                                                                    "parameter_enable": 0,
                                                                    "patching_rect": [ 176.5, 73.0, 46.0, 19.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 5.0, 48.0, 45.0, 19.0 ]
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
                                                                    "patching_rect": [ 345.0, 6.0, 120.0, 20.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 5.0, 75.0, 209.0, 20.0 ],
                                                                    "text": "Monitoring"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-4",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 394.0, 134.0, 148.0, 18.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 63.0, 99.0, 148.0, 18.0 ],
                                                                    "text": "Max value for display"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-5",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 345.0, 164.0, 115.0, 20.0 ],
                                                                    "text": "s #0-upper-value"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-7",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 345.0, 80.0, 113.0, 20.0 ],
                                                                    "text": "s #0-lower-value"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 12.0,
                                                                    "id": "obj-19",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 345.0, 32.0, 93.0, 22.0 ],
                                                                    "text": "loadmess -1."
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 12.0,
                                                                    "id": "obj-18",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 345.0, 106.0, 89.0, 22.0 ],
                                                                    "text": "loadmess 1."
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 11.0,
                                                                    "format": 6,
                                                                    "id": "obj-14",
                                                                    "maxclass": "flonum",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "bang" ],
                                                                    "parameter_enable": 0,
                                                                    "patching_rect": [ 345.0, 134.0, 45.0, 20.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 5.0, 97.0, 45.0, 20.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 11.0,
                                                                    "format": 6,
                                                                    "id": "obj-13",
                                                                    "maxclass": "flonum",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "bang" ],
                                                                    "parameter_enable": 0,
                                                                    "patching_rect": [ 345.0, 59.0, 45.0, 20.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 5.0, 119.0, 45.0, 20.0 ]
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
                                                                    "patching_rect": [ 394.0, 59.0, 148.0, 18.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 63.0, 120.0, 148.0, 18.0 ],
                                                                    "text": "Min value for display"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-3",
                                                                    "linecount": 10,
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ -0.5, 182.0, 310.0, 118.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_linecount": 10,
                                                                    "presentation_rect": [ 5.0, 162.0, 206.0, 118.0 ],
                                                                    "text": "Lowpass filtering of incoming data\n\ninput: \n     - data values [list]\n     - cutoff frequency (cut out \n       frequencies higher  than this value)\n     - sampling rate\n\noutput:\n     - [1]: filtered data [list]"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "bgcolor": [ 1.0, 1.0, 1.0, 0.4 ],
                                                                    "fontname": "Arial",
                                                                    "fontsize": 14.0,
                                                                    "id": "obj-2",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ -0.5, 155.0, 120.0, 20.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 5.0, 142.0, 209.0, 20.0 ],
                                                                    "text": "Help [Lowpass]"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-10",
                                                                    "linecount": 2,
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 57.5, 73.0, 110.0, 18.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 63.0, 27.0, 148.0, 18.0 ],
                                                                    "text": "Cut-Off frequency (Hz)"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "bgcolor": [ 1.0, 1.0, 1.0, 0.4 ],
                                                                    "fontname": "Arial",
                                                                    "fontsize": 14.0,
                                                                    "id": "obj-6",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 36.5, 6.0, 120.0, 20.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 5.0, 5.0, 209.0, 20.0 ],
                                                                    "text": "Lowpass Filtering"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-1",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 10.0, 112.0, 129.0, 20.0 ],
                                                                    "text": "s #0-lowpass-thresh"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 11.0,
                                                                    "id": "obj-51",
                                                                    "linecount": 2,
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 24.5, 41.0, 70.0, 20.0 ],
                                                                    "text": "loadmess 10."
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 11.0,
                                                                    "format": 6,
                                                                    "id": "obj-48",
                                                                    "maxclass": "flonum",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "bang" ],
                                                                    "parameter_enable": 0,
                                                                    "patching_rect": [ 9.5, 73.0, 46.0, 19.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 5.0, 27.0, 45.0, 19.0 ]
                                                                }
                                                            }
                                                        ],
                                                        "lines": [
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-48", 0 ],
                                                                    "source": [ "obj-12", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-7", 0 ],
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
                                                                    "destination": [ "obj-21", 0 ],
                                                                    "source": [ "obj-15", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-14", 0 ],
                                                                    "source": [ "obj-18", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-13", 0 ],
                                                                    "source": [ "obj-19", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-21", 0 ],
                                                                    "source": [ "obj-20", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-17", 0 ],
                                                                    "source": [ "obj-21", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-1", 0 ],
                                                                    "source": [ "obj-48", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-48", 0 ],
                                                                    "source": [ "obj-51", 0 ]
                                                                }
                                                            }
                                                        ],
                                                        "toolbaradditions": [ "s2n" ]
                                                    },
                                                    "patching_rect": [ 1199.0, 149.0, 74.0, 21.0 ],
                                                    "text": "p more"
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
                                                        "rect": [ 722.0, 79.0, 342.0, 193.0 ],
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
                                                                    "patching_rect": [ 10.0, 25.0, 310.0, 118.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_linecount": 12,
                                                                    "presentation_rect": [ 80.0, 101.0, 155.0, 141.0 ],
                                                                    "text": "Lowpass filtering of incoming data\n\ninput: \n     - data values [list]\n     - cutoff frequency (cut out \n       frequencies higher  than this value)\n     - sampling rate\n\noutput:\n     - [1]: filtered data [list]"
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
                                                                    "text": "Lowpass filtering"
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
                                                                    "patching_rect": [ 507.0, 190.0, 146.0, 40.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_linecount": 5,
                                                                    "presentation_rect": [ 20.0, 53.0, 128.0, 51.0 ],
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
                                                                    "patching_rect": [ 507.0, 173.0, 153.0, 18.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 20.0, 41.0, 153.0, 18.0 ],
                                                                    "text": "input: data values [list]"
                                                                }
                                                            }
                                                        ],
                                                        "lines": []
                                                    },
                                                    "patching_rect": [ 338.0, 41.0, 44.0, 21.0 ],
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
                                                    "patching_rect": [ 49.0, 14.0, 63.0, 21.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 0.0, 1.0, 63.0, 21.0 ],
                                                    "text": "Lowpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "autobounds": 0,
                                                    "autoupdate": 120.0,
                                                    "bgcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                                    "bgcolordefault": 1,
                                                    "bounds": [ -1.399999976158142, 3.4000000953674316 ],
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
                                                    "patching_rect": [ 316.0, 548.0, 119.0, 10.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 0.0, 23.0, 435.0, 197.0 ],
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
                                                    "comment": "input [List]",
                                                    "id": "obj-1",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 95.0, 54.0, 25.0, 25.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-12", 1 ],
                                                    "source": [ "obj-1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-7", 0 ],
                                                    "source": [ "obj-10", 0 ]
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
                                                    "destination": [ "obj-10", 0 ],
                                                    "source": [ "obj-12", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-7", 0 ],
                                                    "source": [ "obj-12", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-10", 0 ],
                                                    "source": [ "obj-124", 1 ]
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
                                                    "destination": [ "obj-10", 0 ],
                                                    "source": [ "obj-127", 1 ]
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
                                                    "destination": [ "obj-195", 0 ],
                                                    "source": [ "obj-13", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-10", 0 ],
                                                    "source": [ "obj-15", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-10", 0 ],
                                                    "source": [ "obj-157", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-10", 0 ],
                                                    "source": [ "obj-16", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-12", 0 ],
                                                    "source": [ "obj-17", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-3", 0 ],
                                                    "source": [ "obj-18", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-101", 0 ],
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
                                                    "destination": [ "obj-101", 0 ],
                                                    "source": [ "obj-197", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-195", 6 ],
                                                    "source": [ "obj-197", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-38", 0 ],
                                                    "source": [ "obj-2", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-34", 0 ],
                                                    "source": [ "obj-20", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-6", 0 ],
                                                    "source": [ "obj-21", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-10", 0 ],
                                                    "source": [ "obj-22", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-195", 1 ],
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
                                                    "destination": [ "obj-101", 0 ],
                                                    "source": [ "obj-3", 0 ]
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
                                                    "destination": [ "obj-195", 7 ],
                                                    "order": 0,
                                                    "source": [ "obj-34", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-10", 0 ],
                                                    "source": [ "obj-35", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-195", 3 ],
                                                    "source": [ "obj-35", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-17", 0 ],
                                                    "midpoints": [ 18.5, 248.0703125, 43.5, 248.0703125 ],
                                                    "order": 1,
                                                    "source": [ "obj-36", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-20", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-36", 0 ]
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
                                                    "destination": [ "obj-10", 0 ],
                                                    "source": [ "obj-38", 0 ]
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
                                                    "midpoints": [ 667.5, 542.39453125, 325.5, 542.39453125 ],
                                                    "source": [ "obj-5", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-2", 0 ],
                                                    "source": [ "obj-6", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-101", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-7", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-4", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-7", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-10", 0 ],
                                                    "source": [ "obj-76", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-195", 2 ],
                                                    "source": [ "obj-76", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-195", 0 ],
                                                    "source": [ "obj-9", 0 ]
                                                }
                                            }
                                        ],
                                        "toolbaradditions": [ "s2n", "Modalys", "Gestural-Sound-Toolkit" ]
                                    },
                                    "patching_rect": [ 28.0, 485.0, 439.0, 224.0 ],
                                    "varname": "gst.lowpass",
                                    "viewvisibility": 1
                                }
                            },
                            {
                                "box": {
                                    "border": 0,
                                    "filename": "helpdetails.js",
                                    "id": "obj-2",
                                    "ignoreclick": 1,
                                    "jsarguments": [ "gst.lowpass" ],
                                    "maxclass": "jsui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 10.0, 10.0, 452.0, 141.0 ]
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
                                    "destination": [ "obj-31", 0 ],
                                    "midpoints": [ 37.5, 475.5, 37.5, 475.5 ],
                                    "source": [ "obj-48", 0 ]
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
                    "jsarguments": [ "gst.lowpass" ],
                    "maxclass": "jsui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 10.0, 10.0, 246.6800079345703, 57.599853515625 ]
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
                        "rect": [ 0.0, 26.0, 489.0, 741.0 ],
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
            "obj-2::obj-31::obj-195::obj-125": [ "comp-exp", "Q", 0 ],
            "obj-2::obj-31::obj-195::obj-13": [ "minMonitor", "minMonitor", 0 ],
            "obj-2::obj-31::obj-195::obj-14": [ "maxMonitor", "maxMonitor", 0 ],
            "obj-2::obj-31::obj-195::obj-18": [ "bypass", "bypass", 0 ],
            "obj-2::obj-31::obj-195::obj-42": [ "frame-rate", "framerate", 0 ],
            "obj-2::obj-31::obj-195::obj-82": [ "cut-frequency", "fcut", 0 ],
            "obj-2::obj-31::obj-195::obj-86": [ "gain", "gain", 0 ],
            "obj-2::obj-31::obj-34": [ "live.toggle", "bypass", 0 ],
            "obj-2::obj-31::obj-37": [ "live.text[28]", "live.text", 0 ],
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
            "obj-2::obj-8": [ "live.text[23]", "live.text", 0 ],
            "obj-6::obj-10": [ "live.text[2]", "live.text", 0 ],
            "obj-6::obj-7::obj-195::obj-125": [ "comp-exp[1]", "Q", 0 ],
            "obj-6::obj-7::obj-195::obj-13": [ "minMonitor[1]", "minMonitor", 0 ],
            "obj-6::obj-7::obj-195::obj-14": [ "maxMonitor[1]", "maxMonitor", 0 ],
            "obj-6::obj-7::obj-195::obj-18": [ "bypass[1]", "bypass", 0 ],
            "obj-6::obj-7::obj-195::obj-42": [ "frame-rate[1]", "framerate", 0 ],
            "obj-6::obj-7::obj-195::obj-82": [ "cut-frequency[1]", "fcut", 0 ],
            "obj-6::obj-7::obj-195::obj-86": [ "gain[1]", "gain", 0 ],
            "obj-6::obj-7::obj-34": [ "live.toggle[3]", "bypass", 0 ],
            "obj-6::obj-7::obj-37": [ "live.text[1]", "live.text", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "parameter_overrides": {
                "obj-6::obj-7::obj-195::obj-125": {
                    "parameter_longname": "comp-exp[1]"
                },
                "obj-6::obj-7::obj-195::obj-13": {
                    "parameter_longname": "minMonitor[1]"
                },
                "obj-6::obj-7::obj-195::obj-14": {
                    "parameter_longname": "maxMonitor[1]"
                },
                "obj-6::obj-7::obj-195::obj-18": {
                    "parameter_longname": "bypass[1]"
                },
                "obj-6::obj-7::obj-195::obj-42": {
                    "parameter_longname": "frame-rate[1]"
                },
                "obj-6::obj-7::obj-195::obj-82": {
                    "parameter_longname": "cut-frequency[1]"
                },
                "obj-6::obj-7::obj-195::obj-86": {
                    "parameter_longname": "gain[1]"
                },
                "obj-6::obj-7::obj-34": {
                    "parameter_longname": "live.toggle[3]"
                },
                "obj-6::obj-7::obj-37": {
                    "parameter_longname": "live.text[1]"
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0,
        "toolbaradditions": [ "s2n", "Modalys", "Gestural-Sound-Toolkit" ]
    }
}