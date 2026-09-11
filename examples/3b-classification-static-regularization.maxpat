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
        "rect": [ 34.0, 94.0, 1048.0, 937.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 769.0, 628.0, 151.0, 22.0 ],
                    "text": "loadmess C74:/media/msp"
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 1,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-3",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.mc.output.maxpat",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "offset": [ 0.0, 0.0 ],
                    "patching_rect": [ 283.5, 825.0, 184.0, 85.0 ],
                    "varname": "_gstmcoutput",
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
                    "id": "obj-2",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.synth.scratch.samples.maxpat",
                    "numinlets": 5,
                    "numoutlets": 2,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal", "multichannelsignal" ],
                    "patching_rect": [ 539.0, 668.0, 245.0, 114.0 ],
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
                    "id": "obj-1",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.synth.scratch.samples.maxpat",
                    "numinlets": 5,
                    "numoutlets": 2,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal", "multichannelsignal" ],
                    "patching_rect": [ 283.5, 668.0, 245.0, 114.0 ],
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
                    "id": "obj-23",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.synth.scratch.samples.maxpat",
                    "numinlets": 5,
                    "numoutlets": 2,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal", "multichannelsignal" ],
                    "patching_rect": [ 28.0, 668.0, 245.0, 114.0 ],
                    "varname": "_gst.synth.scratch.samples",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 339.0, 239.0, 50.0, 22.0 ],
                    "text": "0.1"
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 276.0, 239.0, 50.0, 22.0 ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "float" ],
                    "patching_rect": [ 276.0, 304.0, 100.0, 22.0 ],
                    "text": "t b f"
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 275.7142857142857, 335.0, 50.0, 22.0 ],
                    "text": "train"
                }
            },
            {
                "box": {
                    "fontsize": 24.0,
                    "id": "obj-10",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 339.0, 266.4757080078125, 500.0, 33.0 ],
                    "text": "regularization (overlap between classes)"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-9",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 276.0, 271.9757080078125, 50.0, 22.0 ]
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
                    "patching_rect": [ 28.0, 205.81616163476562, 133.73121643066406, 116.319091796875 ],
                    "varname": "gst.orientation",
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
                    "id": "obj-41",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.riot-comote.maxpat",
                    "numinlets": 4,
                    "numoutlets": 5,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "", "", "", "", "" ],
                    "patching_rect": [ 28.0, 39.975738525390625, 335.9999993443489, 141.0 ],
                    "varname": "gst.acc.intensity",
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
                    "patching_rect": [ 210.5, 592.5, 318.0, 33.0 ],
                    "text": "mapping likelihood to volume"
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
                    "patching_rect": [ 28.0, 599.0, 74.0, 20.0 ],
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
                    "patching_rect": [ 28.0, 378.9757080078125, 308.0, 194.0 ],
                    "varname": "gst.classification.gmm",
                    "viewvisibility": 1
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
                    "destination": [ "obj-14", 6 ],
                    "source": [ "obj-13", 0 ]
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
                    "destination": [ "obj-13", 0 ],
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 5 ],
                    "midpoints": [ 366.5, 364.48785400390625, 218.125, 364.48785400390625 ],
                    "source": [ "obj-15", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 4 ],
                    "midpoints": [ 778.5, 659.0, 519.0, 659.0 ],
                    "order": 1,
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 4 ],
                    "midpoints": [ 778.5, 659.0, 774.5, 659.0 ],
                    "order": 2,
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 4 ],
                    "midpoints": [ 778.5, 659.0, 263.5, 659.0 ],
                    "order": 0,
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 0 ],
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 0 ],
                    "source": [ "obj-18", 0 ]
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
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "source": [ "obj-31", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 1 ],
                    "source": [ "obj-41", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 0 ],
                    "source": [ "obj-41", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 3 ],
                    "midpoints": [ 37.5, 643.5, 462.5, 643.5 ],
                    "order": 1,
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 3 ],
                    "midpoints": [ 37.5, 643.5, 718.0, 643.5 ],
                    "order": 0,
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 3 ],
                    "midpoints": [ 37.5, 643.5, 207.0, 643.5 ],
                    "order": 2,
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "source": [ "obj-9", 0 ]
                }
            }
        ],
        "parameters": {
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
            "obj-1::obj-166": [ "speed[2]", "speed", 0 ],
            "obj-1::obj-22": [ "ogain[1]", "ogain", 0 ],
            "obj-1::obj-88": [ "start[2]", "start", 0 ],
            "obj-1::obj-92": [ "loop[2]", "loop", 0 ],
            "obj-23::obj-166": [ "speed", "speed", 0 ],
            "obj-23::obj-22": [ "ogain", "ogain", 0 ],
            "obj-23::obj-88": [ "start", "start", 0 ],
            "obj-23::obj-92": [ "loop", "loop", 0 ],
            "obj-2::obj-166": [ "speed[1]", "speed", 0 ],
            "obj-2::obj-22": [ "live.gain~[1]", "ogain", 0 ],
            "obj-2::obj-88": [ "start[1]", "start", 0 ],
            "obj-2::obj-92": [ "loop[1]", "loop", 0 ],
            "obj-31::obj-11": [ "live.text[3]", "live.text", 0 ],
            "obj-31::obj-5::obj-17": [ "out-sens-type", "out-sens-type", 0 ],
            "obj-31::obj-5::obj-179": [ "in-sens-type", "in-sens-type", 0 ],
            "obj-31::obj-5::obj-34": [ "maxMonitor", "maxMonitor", 0 ],
            "obj-31::obj-5::obj-37": [ "minMonitor", "minMonitor", 0 ],
            "obj-31::obj-5::obj-42": [ "frame-rate", "framerate", 0 ],
            "obj-31::obj-5::obj-48": [ "gyroweight", "maveragewindow", 0 ],
            "obj-3::obj-2": [ "ogain[2]", "ogain", 0 ],
            "obj-41::obj-108": [ "clock-type", "clock type", 0 ],
            "obj-41::obj-16": [ "osc-port", "port", 0 ],
            "obj-41::obj-179": [ "sens-type", "sensor type", 0 ],
            "obj-41::obj-18::obj-105": [ "live.text[15]", "live.text", 0 ],
            "obj-41::obj-18::obj-110": [ "live.text[14]", "live.text", 0 ],
            "obj-41::obj-18::obj-121": [ "live.numbox[4]", "Amount", 0 ],
            "obj-41::obj-18::obj-20": [ "2026-port[1]", "port", 0 ],
            "obj-41::obj-18::obj-223": [ "live.numbox[3]", "live.numbox", 0 ],
            "obj-41::obj-18::obj-59": [ "live.numbox[5]", "live.numbox", 0 ],
            "obj-41::obj-18::obj-7": [ "live.numbox[2]", "live.numbox", 0 ],
            "obj-41::obj-18::obj-75": [ "live.numbox[6]", "live.numbox", 0 ],
            "obj-41::obj-18::obj-83": [ "live.toggle[4]", "live.toggle", 0 ],
            "obj-41::obj-25": [ "live.text[18]", "live.text", 0 ],
            "obj-41::obj-31": [ "live.button[3]", "live.button", 0 ],
            "obj-41::obj-47": [ "enable[1]", "enable", 1 ],
            "obj-41::obj-50": [ "frameperiod", "frame period", 0 ],
            "obj-41::obj-56": [ "live.text[17]", "live.text", 0 ],
            "obj-41::obj-58": [ "live.text[2]", "live.text[3]", 0 ],
            "obj-41::obj-59": [ "osc-id", "id", 0 ],
            "obj-41::obj-60": [ "live.text[16]", "live.text[3]", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "parameter_overrides": {
                "obj-1::obj-166": {
                    "parameter_longname": "speed[2]"
                },
                "obj-1::obj-22": {
                    "parameter_longname": "ogain[1]"
                },
                "obj-1::obj-88": {
                    "parameter_longname": "start[2]"
                },
                "obj-1::obj-92": {
                    "parameter_longname": "loop[2]"
                },
                "obj-2::obj-166": {
                    "parameter_longname": "speed[1]"
                },
                "obj-2::obj-22": {
                    "parameter_longname": "live.gain~[1]"
                },
                "obj-2::obj-88": {
                    "parameter_longname": "start[1]"
                },
                "obj-2::obj-92": {
                    "parameter_longname": "loop[1]"
                },
                "obj-3::obj-2": {
                    "parameter_longname": "ogain[2]"
                },
                "obj-41::obj-18::obj-20": {
                    "parameter_longname": "2026-port[1]"
                },
                "obj-41::obj-47": {
                    "parameter_longname": "enable[1]"
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0,
        "toolbaradditions": [ "s2n", "Modalys", "Gestural-Sound-Toolkit" ]
    }
}