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
        "rect": [ 36.0, 93.0, 1048.0, 937.0 ],
        "boxes": [
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
                    "bgcolor": [ 0.65045, 0.65045, 0.65045, 0.0 ],
                    "bgmode": 2,
                    "border": 1,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-3",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "synth.scratch.samples.maxpat",
                    "numinlets": 5,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 522.0, 665.9757080078125, 240.79486083984375, 109.32023620605469 ],
                    "varname": "synth.scratch.samples[2]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.65045, 0.65045, 0.65045, 0.0 ],
                    "bgmode": 2,
                    "border": 1,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-2",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "synth.scratch.samples.maxpat",
                    "numinlets": 5,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 273.0, 665.9757080078125, 240.79486083984375, 109.32023620605469 ],
                    "varname": "synth.scratch.samples[1]",
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
                    "id": "obj-14",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.classification.gmm.maxpat",
                    "numinlets": 8,
                    "numoutlets": 2,
                    "offset": [ 0.0, -4.0 ],
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 28.0, 378.9757080078125, 308.0, 194.0 ],
                    "varname": "gst.classification.gmm",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.913725490196078, 0.913725490196078, 0.913725490196078, 0.0 ],
                    "bgmode": 2,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-26",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "sid.output.maxpat",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "offset": [ 0.0, 0.0 ],
                    "patching_rect": [ 24.0, 808.0, 196.0, 88.0 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.65045, 0.65045, 0.65045, 0.0 ],
                    "bgmode": 2,
                    "border": 1,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-12",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "synth.scratch.samples.maxpat",
                    "numinlets": 5,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 24.0, 665.9757080078125, 240.79486083984375, 109.32023620605469 ],
                    "varname": "synth.scratch.samples",
                    "viewvisibility": 1
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "source": [ "obj-12", 0 ]
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
                    "midpoints": [ 366.5, 364.48785400390625, 243.92857142857142, 364.48785400390625 ],
                    "source": [ "obj-15", 1 ]
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
                    "destination": [ "obj-26", 0 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "source": [ "obj-3", 0 ]
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
                    "destination": [ "obj-12", 3 ],
                    "midpoints": [ 37.5, 655.4878540039062, 199.8461456298828, 655.4878540039062 ],
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 3 ],
                    "midpoints": [ 65.0, 643.4878540039062, 448.8461456298828, 643.4878540039062 ],
                    "source": [ "obj-8", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 3 ],
                    "midpoints": [ 92.5, 633.9878540039062, 697.8461456298828, 633.9878540039062 ],
                    "source": [ "obj-8", 2 ]
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
            "obj-12::obj-166": [ "speed", "speed", 0 ],
            "obj-12::obj-22": [ "live.gain~", "ogain", 0 ],
            "obj-12::obj-88": [ "start", "start", 0 ],
            "obj-12::obj-92": [ "loop", "loop", 0 ],
            "obj-14::obj-11": [ "total", "total", 0 ],
            "obj-14::obj-59": [ "live.text[6]", "live.text", 0 ],
            "obj-14::obj-64": [ "live.text[5]", "live.text", 0 ],
            "obj-14::obj-66": [ "live.text[8]", "live.text", 0 ],
            "obj-14::obj-69": [ "regularization", "regularization", 0 ],
            "obj-14::obj-7": [ "auto+", "auto+", 0 ],
            "obj-14::obj-70": [ "live.text[7]", "live.text", 0 ],
            "obj-14::obj-73": [ "live.toggle", "live.toggle", 0 ],
            "obj-14::obj-74": [ "label", "label", 0 ],
            "obj-26::obj-2": [ "live.gain~[5]", "ogain", 0 ],
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
            "obj-3::obj-166": [ "speed[2]", "speed", 0 ],
            "obj-3::obj-22": [ "live.gain~[2]", "ogain", 0 ],
            "obj-3::obj-88": [ "start[2]", "start", 0 ],
            "obj-3::obj-92": [ "loop[2]", "loop", 0 ],
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
            "obj-41::obj-47": [ "enable", "enable", 1 ],
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
                "obj-12::obj-22": {
                    "parameter_longname": "live.gain~"
                },
                "obj-26::obj-2": {
                    "parameter_longname": "live.gain~[5]"
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
                "obj-3::obj-166": {
                    "parameter_longname": "speed[2]"
                },
                "obj-3::obj-22": {
                    "parameter_longname": "live.gain~[2]"
                },
                "obj-3::obj-88": {
                    "parameter_longname": "start[2]"
                },
                "obj-3::obj-92": {
                    "parameter_longname": "loop[2]"
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0,
        "toolbaradditions": [ "s2n", "Modalys", "Gestural-Sound-Toolkit" ]
    }
}