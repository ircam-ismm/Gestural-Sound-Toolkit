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
        "rect": [ 34.0, 93.0, 1011.0, 937.0 ],
        "boxes": [
            {
                "box": {
                    "bgmode": 0,
                    "border": 1,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-7",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.mc.output.maxpat",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "offset": [ 0.0, 0.0 ],
                    "patching_rect": [ 611.0, 838.0, 184.0, 85.0 ],
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
                    "name": "gst.synth.FM.maxpat",
                    "numinlets": 7,
                    "numoutlets": 5,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal", "multichannelsignal", "", "", "" ],
                    "patching_rect": [ 611.0, 675.0, 262.0, 149.0 ],
                    "varname": "_gst.synth.FM",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-27",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 533.0, 341.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 500.0, 494.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 500.0, 528.0, 57.0, 22.0 ],
                    "text": "gate"
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
                    "patching_rect": [ 35.79486083984375, 169.5, 142.0, 71.0 ],
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
                    "patching_rect": [ 10.0, 225.97570753320315, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 10.0, 193.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patching_rect": [ 10.0, 134.54269452539063, 100.0, 22.0 ],
                    "text": "sel 32"
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 10.0, 103.54269452539063, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 4,
                    "outlettype": [ "int", "int", "int", "int" ],
                    "patching_rect": [ 10.0, 69.54269452539063, 100.0, 22.0 ],
                    "text": "key"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 500.0, 306.0, 81.0, 22.0 ],
                    "text": "loadmess 20"
                }
            },
            {
                "box": {
                    "id": "obj-31",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 541.0, 24.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 393.625, 341.0, 42.0, 22.0 ],
                    "text": "train"
                }
            },
            {
                "box": {
                    "id": "obj-24",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 441.625, 341.0, 82.0, 22.0 ],
                    "text": "20"
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-21",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "patching_rect": [ 194.0, 287.5, 54.0, 20.0 ],
                    "text": "t l b"
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-20",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 229.375, 316.0, 41.0, 20.0 ],
                    "text": "zl reg"
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-16",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 788.0, 637.0, 99.0, 20.0 ],
                    "text": "scale -1. 1. 0. 4."
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-15",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 611.0, 637.0, 99.0, 20.0 ],
                    "text": "scale -1. 1. 0. 3."
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-14",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "float" ],
                    "patching_rect": [ 611.0, 597.0, 196.0, 20.0 ],
                    "text": "unpack f f"
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 936.0, 19.975739000000004, 64.0, 20.0 ],
                    "text": "loadmess 2"
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
                    "id": "obj-3",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "drawing.maxpat",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "", "int" ],
                    "patching_rect": [ 614.5, 29.975739000000004, 320.0, 246.56695556640625 ],
                    "varname": "drawing",
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
                    "id": "obj-6",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.orientation.maxpat",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 194.0, 165.40447998046875, 133.73121643066406, 116.319091796875 ],
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
                    "patching_rect": [ 194.0, 10.04269452539063, 335.9999993443489, 141.0 ],
                    "varname": "gst.acc.intensity",
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
                    "id": "obj-8",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.regression.gmr.maxpat",
                    "numinlets": 9,
                    "numoutlets": 3,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 194.0, 373.0, 302.0, 181.0 ],
                    "varname": "gst.regression.gmr",
                    "viewvisibility": 1
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-27", 0 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 2 ],
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
                    "destination": [ "obj-9", 0 ],
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
                    "destination": [ "obj-16", 0 ],
                    "source": [ "obj-14", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 3 ],
                    "midpoints": [ 620.5, 666.0782928466797, 742.0, 666.0782928466797 ],
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 4 ],
                    "midpoints": [ 797.5, 662.0782928466797, 782.5, 662.0782928466797 ],
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 2 ],
                    "midpoints": [ 19.5, 361.9878537666016, 274.25, 361.9878537666016 ],
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 1 ],
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "source": [ "obj-21", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 7 ],
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 7 ],
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-24", 1 ],
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "order": 0,
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 1 ],
                    "midpoints": [ 624.0, 290.7713472832031, 260.875, 290.7713472832031 ],
                    "order": 1,
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-41", 3 ],
                    "source": [ "obj-31", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 1 ],
                    "source": [ "obj-41", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "source": [ "obj-41", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "midpoints": [ 509.5, 573.0, 620.5, 573.0 ],
                    "order": 0,
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "midpoints": [ 509.5, 558.0, 601.5, 558.0, 601.5, 8.975739000000004, 624.0, 8.975739000000004 ],
                    "order": 1,
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 0 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 1 ],
                    "source": [ "obj-8", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 0 ],
                    "source": [ "obj-9", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-2::obj-2": [ "ogain", "ogain", 0 ],
            "obj-2::obj-20": [ "harmonicity[1]", "harmonicity", 0 ],
            "obj-2::obj-21": [ "carrier[1]", "carrier", 0 ],
            "obj-2::obj-24": [ "duration[1]", "duration", 1 ],
            "obj-2::obj-32": [ "index[1]", "index", 0 ],
            "obj-2::obj-33": [ "env", "env", 0 ],
            "obj-2::obj-42": [ "live.button[1]", "live.button", 0 ],
            "obj-2::obj-88": [ "ConstAmp[1]", "ConstAmp", 0 ],
            "obj-3::obj-16": [ "sample-period", "sample-period", 0 ],
            "obj-3::obj-18": [ "zoom", "zoom", 0 ],
            "obj-41::obj-108": [ "clock-type", "clock type", 0 ],
            "obj-41::obj-16": [ "osc-port", "port", 0 ],
            "obj-41::obj-179": [ "sens-type", "sensor type", 0 ],
            "obj-41::obj-18::obj-105": [ "live.text[15]", "live.text", 0 ],
            "obj-41::obj-18::obj-110": [ "live.text[14]", "live.text", 0 ],
            "obj-41::obj-18::obj-121": [ "live.numbox[4]", "Amount", 0 ],
            "obj-41::obj-18::obj-20": [ "1798-port[1]", "port", 0 ],
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
            "obj-6::obj-11": [ "live.text[3]", "live.text", 0 ],
            "obj-6::obj-5::obj-17": [ "out-sens-type", "out-sens-type", 0 ],
            "obj-6::obj-5::obj-179": [ "in-sens-type", "in-sens-type", 0 ],
            "obj-6::obj-5::obj-34": [ "maxMonitor", "maxMonitor", 0 ],
            "obj-6::obj-5::obj-37": [ "minMonitor", "minMonitor", 0 ],
            "obj-6::obj-5::obj-42": [ "frame-rate", "framerate", 0 ],
            "obj-6::obj-5::obj-48": [ "gyroweight", "maveragewindow", 0 ],
            "obj-7::obj-2": [ "ogain[1]", "ogain", 0 ],
            "obj-8::obj-11": [ "total", "total", 0 ],
            "obj-8::obj-29": [ "regularization", "regularization", 0 ],
            "obj-8::obj-59": [ "live.text[6]", "live.text", 0 ],
            "obj-8::obj-64": [ "live.text[5]", "live.text", 0 ],
            "obj-8::obj-66": [ "live.text[8]", "live.text", 0 ],
            "obj-8::obj-7": [ "auto+", "auto+", 0 ],
            "obj-8::obj-70": [ "live.text[7]", "live.text", 0 ],
            "obj-8::obj-73": [ "live.toggle", "live.toggle", 0 ],
            "obj-8::obj-74": [ "label", "label", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "parameter_overrides": {
                "obj-2::obj-20": {
                    "parameter_longname": "harmonicity[1]"
                },
                "obj-2::obj-21": {
                    "parameter_longname": "carrier[1]"
                },
                "obj-2::obj-24": {
                    "parameter_longname": "duration[1]"
                },
                "obj-2::obj-32": {
                    "parameter_longname": "index[1]"
                },
                "obj-2::obj-42": {
                    "parameter_longname": "live.button[1]"
                },
                "obj-2::obj-88": {
                    "parameter_longname": "ConstAmp[1]"
                },
                "obj-41::obj-18::obj-20": {
                    "parameter_longname": "1798-port[1]"
                },
                "obj-7::obj-2": {
                    "parameter_longname": "ogain[1]"
                },
                "obj-8::obj-59": {
                    "parameter_longname": "live.text[6]"
                },
                "obj-8::obj-64": {
                    "parameter_longname": "live.text[5]"
                },
                "obj-8::obj-66": {
                    "parameter_longname": "live.text[8]"
                },
                "obj-8::obj-70": {
                    "parameter_longname": "live.text[7]"
                },
                "obj-8::obj-73": {
                    "parameter_longname": "live.toggle"
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0,
        "toolbaradditions": [ "s2n", "Modalys", "Gestural-Sound-Toolkit" ]
    }
}