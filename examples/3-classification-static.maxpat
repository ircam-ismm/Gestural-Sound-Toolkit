{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 5,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 34.0, 100.0, 1705.0, 918.0 ],
        "boxes": [
            {
                "box": {
                    "bgmode": 0,
                    "border": 1,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-27",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.synth.scratch.samples.maxpat",
                    "numinlets": 5,
                    "numoutlets": 2,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal", "multichannelsignal" ],
                    "patching_rect": [ 1270.5, 721.0, 245.0, 114.0 ],
                    "varname": "_gst.synth.scratch.samples[3]",
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
                    "id": "obj-25",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.synth.scratch.samples.maxpat",
                    "numinlets": 5,
                    "numoutlets": 2,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal", "multichannelsignal" ],
                    "patching_rect": [ 1020.0, 721.0, 245.0, 114.0 ],
                    "varname": "_gst.synth.scratch.samples[2]",
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
                    "id": "obj-23",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.synth.scratch.samples.maxpat",
                    "numinlets": 5,
                    "numoutlets": 2,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal", "multichannelsignal" ],
                    "patching_rect": [ 769.5, 721.0, 245.0, 114.0 ],
                    "varname": "_gst.synth.scratch.samples[1]",
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
                    "name": "gst.synth.scratch.samples.maxpat",
                    "numinlets": 5,
                    "numoutlets": 2,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal", "multichannelsignal" ],
                    "patching_rect": [ 267.0, 716.3202362060547, 245.0, 114.0 ],
                    "varname": "_gst.synth.scratch.samples",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-30",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 271.0, 286.0, 100.0, 20.0 ],
                    "text": "scale -1. 1. 0. 1."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.6, 0.678431, 0.756863, 0.0 ],
                    "bgmode": 2,
                    "border": 1,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-10",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.riot-comote.maxpat",
                    "numinlets": 4,
                    "numoutlets": 5,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "", "", "", "", "" ],
                    "patching_rect": [ 271.0, 4.0, 339.0, 144.0 ],
                    "varname": "in.comote",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "local": 1,
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 639.0, 777.0, 45.0, 45.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 267.0, 856.0, 74.0, 22.0 ],
                    "text": "mc.dac~ 1 2"
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 493.0, 666.0, 151.0, 22.0 ],
                    "text": "loadmess C74:/media/msp"
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 560.0, 515.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1327.0, 671.0, 70.0, 22.0 ],
                    "text": "loadmess 8"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1076.5, 671.0, 70.0, 22.0 ],
                    "text": "loadmess 5"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 826.0, 671.0, 70.0, 22.0 ],
                    "text": "loadmess 2"
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "live.slider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "orientation": 1,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 477.42857142857144, 263.0, 102.0, 41.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_exponent": 2.0,
                            "parameter_longname": "regularization[1]",
                            "parameter_mmax": 1.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "regularization",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "regularization"
                }
            },
            {
                "box": {
                    "id": "obj-24",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1496.5, 671.0, 151.0, 22.0 ],
                    "text": "loadmess C74:/media/msp"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "fontsize": 18.0,
                    "id": "obj-4",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 104.0, 194.0, 142.0, 71.0 ],
                    "text": "space bar to start/stop recording"
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
                    "patching_rect": [ 66.0, 250.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 66.0, 217.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patching_rect": [ 66.0, 157.0, 100.0, 22.0 ],
                    "text": "sel 32"
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 66.0, 126.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 4,
                    "outlettype": [ "int", "int", "int", "int" ],
                    "patching_rect": [ 66.0, 92.0, 100.0, 22.0 ],
                    "text": "key"
                }
            },
            {
                "box": {
                    "fontsize": 24.0,
                    "id": "obj-29",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 267.0, 615.0, 535.0, 33.0 ],
                    "text": "1 - selecting soundfile using the likeliest gestures"
                }
            },
            {
                "box": {
                    "id": "obj-28",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 323.5, 666.0, 50.0, 22.0 ]
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
                    "name": "gst.orientation.maxpat",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 271.0, 163.0, 133.73121643066406, 116.319091796875 ],
                    "varname": "gst.orientation",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "fontsize": 24.0,
                    "id": "obj-5",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 951.0, 615.0, 514.0, 33.0 ],
                    "text": "2- mapping likelihood values to the volume"
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-8",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "float", "float", "float" ],
                    "patching_rect": [ 271.0, 525.0, 74.0, 20.0 ],
                    "text": "unpack 0. 0. 0."
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 1,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-14",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.classification.gmm.maxpat",
                    "numinlets": 9,
                    "numoutlets": 2,
                    "offset": [ 0.0, -4.0 ],
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 271.0, 314.0, 308.0, 194.0 ],
                    "varname": "gst.classification.gmm",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-26",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1020.0, 862.0, 74.0, 22.0 ],
                    "text": "mc.dac~ 1 2"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-23", 1 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 1 ],
                    "source": [ "obj-10", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 0 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "source": [ "obj-14", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 0 ],
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-22", 4 ],
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 5 ],
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 1 ],
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-28", 0 ],
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 4 ],
                    "midpoints": [ 1506.0, 712.0, 1005.0, 712.0 ],
                    "order": 2,
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 4 ],
                    "midpoints": [ 1506.0, 712.0, 1255.5, 712.0 ],
                    "order": 0,
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-27", 4 ],
                    "order": 1,
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-22", 1 ],
                    "source": [ "obj-28", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "source": [ "obj-30", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-30", 0 ],
                    "source": [ "obj-31", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 1 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-27", 1 ],
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 3 ],
                    "midpoints": [ 280.5, 580.82421875, 948.5, 580.82421875 ],
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "source": [ "obj-9", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-10::obj-108": [ "12998-clock-type", "clock type", 0 ],
            "obj-10::obj-16": [ "12998-port", "port", 0 ],
            "obj-10::obj-179": [ "12998-sens-type", "sensor type", 0 ],
            "obj-10::obj-18::obj-105": [ "live.text[15]", "live.text", 0 ],
            "obj-10::obj-18::obj-110": [ "live.text[14]", "live.text", 0 ],
            "obj-10::obj-18::obj-121": [ "live.numbox[4]", "Amount", 0 ],
            "obj-10::obj-18::obj-20": [ "12998-port[1]", "port", 0 ],
            "obj-10::obj-18::obj-223": [ "live.numbox[3]", "live.numbox", 0 ],
            "obj-10::obj-18::obj-59": [ "live.numbox[5]", "live.numbox", 0 ],
            "obj-10::obj-18::obj-7": [ "live.numbox[2]", "live.numbox", 0 ],
            "obj-10::obj-18::obj-75": [ "live.numbox[6]", "live.numbox", 0 ],
            "obj-10::obj-18::obj-83": [ "live.toggle[4]", "live.toggle", 0 ],
            "obj-10::obj-25": [ "live.text[18]", "live.text", 0 ],
            "obj-10::obj-31": [ "live.button[3]", "live.button", 0 ],
            "obj-10::obj-47": [ "live.text[10]", "enable", 0 ],
            "obj-10::obj-50": [ "12998-frameperiod", "frame period", 0 ],
            "obj-10::obj-56": [ "live.text[1]", "live.text", 0 ],
            "obj-10::obj-58": [ "live.text[2]", "live.text[3]", 0 ],
            "obj-10::obj-59": [ "live.numbox[1]", "id", 0 ],
            "obj-10::obj-60": [ "live.text[9]", "live.text[3]", 0 ],
            "obj-14::obj-11": [ "total", "total", 0 ],
            "obj-14::obj-59": [ "live.text[6]", "live.text", 0 ],
            "obj-14::obj-63": [ "enable", "enable", 0 ],
            "obj-14::obj-64": [ "live.text[5]", "live.text", 0 ],
            "obj-14::obj-66": [ "live.text[8]", "live.text", 0 ],
            "obj-14::obj-69": [ "regularization", "regularization", 0 ],
            "obj-14::obj-7": [ "auto+", "auto+", 0 ],
            "obj-14::obj-70": [ "live.text[7]", "live.text", 0 ],
            "obj-14::obj-73": [ "live.toggle", "live.toggle", 0 ],
            "obj-14::obj-74": [ "label", "label", 0 ],
            "obj-17": [ "regularization[1]", "regularization", 0 ],
            "obj-22::obj-166": [ "speed[4]", "speed", 0 ],
            "obj-22::obj-22": [ "ogain", "ogain", 0 ],
            "obj-22::obj-88": [ "start[4]", "start", 0 ],
            "obj-22::obj-92": [ "loop[4]", "loop", 0 ],
            "obj-23::obj-166": [ "speed[5]", "speed", 0 ],
            "obj-23::obj-22": [ "ogain[1]", "ogain", 0 ],
            "obj-23::obj-88": [ "start[5]", "start", 0 ],
            "obj-23::obj-92": [ "loop[5]", "loop", 0 ],
            "obj-25::obj-166": [ "speed[3]", "speed", 0 ],
            "obj-25::obj-22": [ "live.gain~[6]", "ogain", 0 ],
            "obj-25::obj-88": [ "start[3]", "start", 0 ],
            "obj-25::obj-92": [ "loop[3]", "loop", 0 ],
            "obj-27::obj-166": [ "speed", "speed", 0 ],
            "obj-27::obj-22": [ "ogain[2]", "ogain", 0 ],
            "obj-27::obj-88": [ "start", "start", 0 ],
            "obj-27::obj-92": [ "loop", "loop", 0 ],
            "obj-31::obj-11": [ "live.text[3]", "live.text", 0 ],
            "obj-31::obj-5::obj-17": [ "12960-sens-type", "out-sens-type", 0 ],
            "obj-31::obj-5::obj-179": [ "12960-sens-type[1]", "in-sens-type", 0 ],
            "obj-31::obj-5::obj-34": [ "maxMonitor", "maxMonitor", 0 ],
            "obj-31::obj-5::obj-37": [ "minMonitor", "minMonitor", 0 ],
            "obj-31::obj-5::obj-42": [ "frame-rate", "framerate", 0 ],
            "obj-31::obj-5::obj-48": [ "gyroweight", "maveragewindow", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "parameter_overrides": {
                "obj-10::obj-108": {
                    "parameter_longname": "12998-clock-type"
                },
                "obj-10::obj-16": {
                    "parameter_longname": "12998-port"
                },
                "obj-10::obj-179": {
                    "parameter_longname": "12998-sens-type"
                },
                "obj-10::obj-18::obj-20": {
                    "parameter_longname": "12998-port[1]"
                },
                "obj-10::obj-47": {
                    "parameter_longname": "live.text[10]"
                },
                "obj-10::obj-50": {
                    "parameter_longname": "12998-frameperiod"
                },
                "obj-10::obj-56": {
                    "parameter_longname": "live.text[1]"
                },
                "obj-10::obj-59": {
                    "parameter_longname": "live.numbox[1]"
                },
                "obj-10::obj-60": {
                    "parameter_longname": "live.text[9]"
                },
                "obj-14::obj-69": {
                    "parameter_range": [ 0.001, 100000.0 ]
                },
                "obj-22::obj-166": {
                    "parameter_longname": "speed[4]"
                },
                "obj-22::obj-88": {
                    "parameter_longname": "start[4]"
                },
                "obj-22::obj-92": {
                    "parameter_longname": "loop[4]"
                },
                "obj-23::obj-166": {
                    "parameter_longname": "speed[5]"
                },
                "obj-23::obj-22": {
                    "parameter_longname": "ogain[1]"
                },
                "obj-23::obj-88": {
                    "parameter_longname": "start[5]"
                },
                "obj-23::obj-92": {
                    "parameter_longname": "loop[5]"
                },
                "obj-25::obj-166": {
                    "parameter_longname": "speed[3]"
                },
                "obj-25::obj-22": {
                    "parameter_longname": "live.gain~[6]"
                },
                "obj-25::obj-88": {
                    "parameter_longname": "start[3]"
                },
                "obj-25::obj-92": {
                    "parameter_longname": "loop[3]"
                },
                "obj-27::obj-22": {
                    "parameter_longname": "ogain[2]"
                },
                "obj-31::obj-11": {
                    "parameter_longname": "live.text[3]"
                },
                "obj-31::obj-5::obj-17": {
                    "parameter_invisible": 0,
                    "parameter_longname": "12960-sens-type",
                    "parameter_modmode": 0,
                    "parameter_range": [ "RIoT2", "V3" ],
                    "parameter_type": 2,
                    "parameter_unitstyle": 10
                },
                "obj-31::obj-5::obj-179": {
                    "parameter_longname": "12960-sens-type[1]"
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0,
        "toolbaradditions": [ "s2n", "Modalys", "Gestural-Sound-Toolkit" ]
    }
}