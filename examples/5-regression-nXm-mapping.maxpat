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
        "rect": [ 134.0, 102.0, 1354.0, 937.0 ],
        "boxes": [
            {
                "box": {
                    "bgmode": 0,
                    "border": 1,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-35",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.synth.FM.maxpat",
                    "numinlets": 7,
                    "numoutlets": 5,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal", "multichannelsignal", "", "", "" ],
                    "patching_rect": [ 959.0, 600.0, 262.0, 149.0 ],
                    "varname": "_gst.synth.FM",
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
                    "name": "gst.mc.output.maxpat",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "offset": [ 0.0, 0.0 ],
                    "patching_rect": [ 959.0, 811.0, 184.0, 85.0 ],
                    "varname": "_gstmcoutput",
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
                    "patching_rect": [ 200.0, 292.0, 100.0, 20.0 ],
                    "text": "scale -1. 1. 0. 1."
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 3,
                    "outlettype": [ "bang", "bang", "int" ],
                    "patching_rect": [ 398.0, 404.0, 40.0, 22.0 ],
                    "text": "uzi 2"
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
                    "id": "obj-2",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.riot-comote.maxpat",
                    "numinlets": 4,
                    "numoutlets": 5,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "", "", "", "", "" ],
                    "patching_rect": [ 201.0, 8.54269452539063, 339.0, 144.0 ],
                    "varname": "in.comote",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "maxclass": "live.slider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "orientation": 1,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 354.0, 496.0, 102.0, 41.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_exponent": 2.0,
                            "parameter_longname": "regularization",
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
                    "id": "obj-17",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1210.0, 528.0, 94.0, 22.0 ],
                    "text": "scale 0. 1. 1 10"
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1085.7948608398438, 528.0, 97.0, 22.0 ],
                    "text": "scale 0. 1. 1. 10"
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 959.0, 528.0, 114.0, 22.0 ],
                    "text": "scale 0. 1. 40. 500."
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "float", "float", "float" ],
                    "patching_rect": [ 959.0, 480.0, 272.5897216796875, 22.0 ],
                    "text": "unpack f f f"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 469.0, 496.0, 77.0, 22.0 ],
                    "text": "loadmess 3"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubbleside": 2,
                    "fontsize": 18.0,
                    "id": "obj-3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 665.0, 325.0, 142.0, 46.0 ],
                    "text": "trained output"
                }
            },
            {
                "box": {
                    "contdata": 1,
                    "id": "obj-5",
                    "maxclass": "multislider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 685.0, 373.0, 92.0, 84.0 ],
                    "setminmax": [ 0.0, 1.0 ],
                    "setstyle": 1,
                    "size": 3
                }
            },
            {
                "box": {
                    "id": "obj-34",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 248.0, 510.0, 70.0, 22.0 ],
                    "text": "loadmess 0"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubbleside": 2,
                    "fontsize": 18.0,
                    "id": "obj-33",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 305.5, 305.0, 225.0, 46.0 ],
                    "text": "select examples (min 2)"
                }
            },
            {
                "box": {
                    "id": "obj-32",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 398.0, 358.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-29",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 142.0, 348.0, 33.0, 22.0 ],
                    "text": "+ 1"
                }
            },
            {
                "box": {
                    "id": "obj-28",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 142.0, 386.0, 76.0, 22.0 ],
                    "text": "gate 2 1"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubbleside": 2,
                    "fontsize": 18.0,
                    "id": "obj-26",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 677.0, 703.0, 142.0, 46.0 ],
                    "text": "inferred output"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubbleside": 2,
                    "fontsize": 18.0,
                    "id": "obj-24",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 654.0, 124.0, 142.0, 46.0 ],
                    "text": "trained input"
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 177.0, 435.0, 41.0, 22.0 ],
                    "text": "zl reg"
                }
            },
            {
                "box": {
                    "contdata": 1,
                    "id": "obj-21",
                    "maxclass": "multislider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 695.0, 763.0, 92.0, 84.0 ],
                    "setminmax": [ 0.0, 1.0 ],
                    "setstyle": 1,
                    "size": 3
                }
            },
            {
                "box": {
                    "id": "obj-37",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patching_rect": [ 177.0, 461.0, 29.5, 22.0 ],
                    "text": "t b l"
                }
            },
            {
                "box": {
                    "id": "obj-27",
                    "maxclass": "number",
                    "minimum": 1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 469.0, 528.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 469.0, 556.0, 109.0, 22.0 ],
                    "text": "gaussians $1, train"
                }
            },
            {
                "box": {
                    "contdata": 1,
                    "id": "obj-7",
                    "maxclass": "multislider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 665.0, 179.0, 131.0, 96.0 ],
                    "setminmax": [ 0.0, 1.0 ],
                    "setstyle": 1,
                    "size": 10
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
                    "fontsize": 10.0,
                    "id": "obj-20",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 177.0, 506.0, 41.0, 20.0 ],
                    "text": "zl reg"
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
                    "patching_rect": [ 201.0, 165.0, 133.73121643066406, 116.319091796875 ],
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
                    "id": "obj-8",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.regression.gmr.maxpat",
                    "numinlets": 9,
                    "numoutlets": 3,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 142.0, 543.0, 302.0, 181.0 ],
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
                    "destination": [ "obj-14", 0 ],
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 0 ],
                    "source": [ "obj-11", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "source": [ "obj-11", 2 ]
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
                    "destination": [ "obj-35", 2 ],
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-35", 3 ],
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-35", 4 ],
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "midpoints": [ 19.5, 293.4878537666016, 151.5, 293.4878537666016 ],
                    "order": 0,
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 2 ],
                    "midpoints": [ 19.5, 293.1753537666016, 222.25, 293.1753537666016 ],
                    "order": 1,
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 6 ],
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 1 ],
                    "source": [ "obj-2", 1 ]
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
                    "destination": [ "obj-8", 1 ],
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-37", 0 ],
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 7 ],
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-22", 0 ],
                    "midpoints": [ 407.5, 431.53515625, 186.5, 431.53515625 ],
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 0 ],
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-22", 1 ],
                    "source": [ "obj-28", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "source": [ "obj-28", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-28", 0 ],
                    "source": [ "obj-29", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-28", 1 ],
                    "source": [ "obj-30", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 0 ],
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 3 ],
                    "source": [ "obj-34", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 0 ],
                    "source": [ "obj-35", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "source": [ "obj-37", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "source": [ "obj-37", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "order": 0,
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 1 ],
                    "midpoints": [ 694.5, 480.2734375, 208.5, 480.2734375 ],
                    "order": 1,
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-30", 0 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-28", 1 ],
                    "midpoints": [ 674.5, 307.26171875, 208.5, 307.26171875 ],
                    "order": 1,
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "order": 0,
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 0 ],
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
            "obj-19": [ "regularization", "regularization", 0 ],
            "obj-2::obj-108": [ "15842-clock-type", "clock type", 0 ],
            "obj-2::obj-16": [ "15842-port", "port", 0 ],
            "obj-2::obj-179": [ "15842-sens-type", "sensor type", 0 ],
            "obj-2::obj-18::obj-105": [ "live.text[15]", "live.text", 0 ],
            "obj-2::obj-18::obj-110": [ "live.text[14]", "live.text", 0 ],
            "obj-2::obj-18::obj-121": [ "live.numbox[4]", "Amount", 0 ],
            "obj-2::obj-18::obj-20": [ "15842-port[1]", "port", 0 ],
            "obj-2::obj-18::obj-223": [ "live.numbox[3]", "live.numbox", 0 ],
            "obj-2::obj-18::obj-59": [ "live.numbox[5]", "live.numbox", 0 ],
            "obj-2::obj-18::obj-7": [ "live.numbox[2]", "live.numbox", 0 ],
            "obj-2::obj-18::obj-75": [ "live.numbox[6]", "live.numbox", 0 ],
            "obj-2::obj-18::obj-83": [ "live.toggle[4]", "live.toggle", 0 ],
            "obj-2::obj-25": [ "live.text[18]", "live.text", 0 ],
            "obj-2::obj-31": [ "live.button[3]", "live.button", 0 ],
            "obj-2::obj-47": [ "live.text[1]", "enable", 0 ],
            "obj-2::obj-50": [ "15842-frameperiod", "frame period", 0 ],
            "obj-2::obj-56": [ "live.text[4]", "live.text", 0 ],
            "obj-2::obj-58": [ "live.text[19]", "live.text[3]", 0 ],
            "obj-2::obj-59": [ "live.numbox[1]", "id", 0 ],
            "obj-2::obj-60": [ "live.text[2]", "live.text[3]", 0 ],
            "obj-31::obj-2": [ "ogain", "ogain", 0 ],
            "obj-35::obj-2": [ "ogain[1]", "ogain", 0 ],
            "obj-35::obj-20": [ "harmonicity[1]", "harmonicity", 0 ],
            "obj-35::obj-21": [ "carrier[1]", "carrier", 0 ],
            "obj-35::obj-24": [ "duration[1]", "duration", 1 ],
            "obj-35::obj-32": [ "index[1]", "index", 0 ],
            "obj-35::obj-33": [ "env", "env", 0 ],
            "obj-35::obj-42": [ "live.button[4]", "live.button", 0 ],
            "obj-35::obj-88": [ "ConstAmp[1]", "ConstAmp", 0 ],
            "obj-6::obj-11": [ "live.text[3]", "live.text", 0 ],
            "obj-6::obj-5::obj-17": [ "15815-sens-type", "out-sens-type", 0 ],
            "obj-6::obj-5::obj-179": [ "15815-sens-type[1]", "in-sens-type", 0 ],
            "obj-6::obj-5::obj-34": [ "maxMonitor", "maxMonitor", 0 ],
            "obj-6::obj-5::obj-37": [ "minMonitor", "minMonitor", 0 ],
            "obj-6::obj-5::obj-42": [ "frame-rate", "framerate", 0 ],
            "obj-6::obj-5::obj-48": [ "gyroweight", "maveragewindow", 0 ],
            "obj-8::obj-11": [ "total", "total", 0 ],
            "obj-8::obj-29": [ "regularization[1]", "regularization", 0 ],
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
                "obj-2::obj-108": {
                    "parameter_longname": "15842-clock-type"
                },
                "obj-2::obj-16": {
                    "parameter_longname": "15842-port"
                },
                "obj-2::obj-179": {
                    "parameter_longname": "15842-sens-type"
                },
                "obj-2::obj-18::obj-20": {
                    "parameter_longname": "15842-port[1]"
                },
                "obj-2::obj-47": {
                    "parameter_longname": "live.text[1]"
                },
                "obj-2::obj-50": {
                    "parameter_longname": "15842-frameperiod"
                },
                "obj-2::obj-56": {
                    "parameter_longname": "live.text[4]"
                },
                "obj-2::obj-58": {
                    "parameter_longname": "live.text[19]"
                },
                "obj-2::obj-59": {
                    "parameter_longname": "live.numbox[1]"
                },
                "obj-2::obj-60": {
                    "parameter_longname": "live.text[2]"
                },
                "obj-35::obj-2": {
                    "parameter_longname": "ogain[1]"
                },
                "obj-35::obj-20": {
                    "parameter_longname": "harmonicity[1]"
                },
                "obj-35::obj-21": {
                    "parameter_longname": "carrier[1]"
                },
                "obj-35::obj-24": {
                    "parameter_longname": "duration[1]"
                },
                "obj-35::obj-32": {
                    "parameter_longname": "index[1]"
                },
                "obj-35::obj-42": {
                    "parameter_longname": "live.button[4]"
                },
                "obj-35::obj-88": {
                    "parameter_longname": "ConstAmp[1]"
                },
                "obj-6::obj-5::obj-17": {
                    "parameter_longname": "15815-sens-type"
                },
                "obj-6::obj-5::obj-179": {
                    "parameter_longname": "15815-sens-type[1]"
                },
                "obj-8::obj-29": {
                    "parameter_longname": "regularization[1]"
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