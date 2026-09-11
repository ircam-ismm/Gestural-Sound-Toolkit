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
        "rect": [ 134.0, 103.0, 1197.0, 980.0 ],
        "boxes": [
            {
                "box": {
                    "bgmode": 0,
                    "border": 1,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-33",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.mc.output.maxpat",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "offset": [ 0.0, 0.0 ],
                    "patching_rect": [ 130.88033548990887, 880.0, 184.0, 85.0 ],
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
                    "id": "obj-32",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.synth.scratch.samples.maxpat",
                    "numinlets": 5,
                    "numoutlets": 2,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal", "multichannelsignal" ],
                    "patching_rect": [ 130.88033548990887, 746.0, 245.0, 114.0 ],
                    "varname": "_gst.synth.scratch.samples",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-35",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 572.0, 371.0, 100.0, 20.0 ],
                    "text": "scale -1. 1. 0. 1."
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
                    "patching_rect": [ 284.0, 371.0, 100.0, 20.0 ],
                    "text": "scale -1. 1. 0. 1."
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-29",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 572.0, 225.0, 100.0, 20.0 ],
                    "text": "scale -20. 20. 0. 1."
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-27",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 428.0, 225.0, 100.0, 20.0 ],
                    "text": "scale 0. 10. 0. 1."
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
                    "patching_rect": [ 284.0, 61.0, 339.0, 144.0 ],
                    "varname": "in.comote",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "maxclass": "live.slider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "orientation": 1,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 443.51123046875, 490.0, 102.0, 41.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_exponent": 2.0,
                            "parameter_invisible": 2,
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
                    "id": "obj-28",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 130.88033548990887, 711.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-24",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 378.69871520996094, 746.0, 151.0, 22.0 ],
                    "text": "loadmess C74:/media/msp"
                }
            },
            {
                "box": {
                    "contdata": 1,
                    "id": "obj-22",
                    "maxclass": "multislider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "orientation": 0,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 0,
                    "parameter_mappable": 0,
                    "patching_rect": [ 398.0, 678.0, 158.0, 14.0 ],
                    "setminmax": [ 0.0, 1.0 ],
                    "setstyle": 1
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1066.064523100853, 347.0, 32.0, 22.0 ],
                    "text": "gate"
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1079.064523100853, 303.22476971372225, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1079.064523100853, 20.430108428001404, 100.0, 22.0 ],
                    "text": "loadmess 2."
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
                    "patching_rect": [ 88.79486083984375, 148.5, 142.0, 71.0 ],
                    "text": "space bar to start/stop recording"
                }
            },
            {
                "box": {
                    "fontsize": 24.0,
                    "id": "obj-3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 204.0, 711.0, 421.0, 33.0 ],
                    "text": "mapping likeliest index to sound index"
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
                    "patching_rect": [ 51.0, 204.97570753320315, 24.0, 24.0 ]
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
                    "patching_rect": [ 51.0, 172.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patching_rect": [ 51.0, 113.54269452539063, 100.0, 22.0 ],
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
                    "patching_rect": [ 51.0, 82.54269452539063, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 4,
                    "outlettype": [ "int", "int", "int", "int" ],
                    "patching_rect": [ 51.0, 48.54269452539063, 100.0, 22.0 ],
                    "text": "key"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 285.0, 397.54386151059725, 306.0, 22.0 ],
                    "text": "join 3"
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
                    "id": "obj-5",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.bandpass.maxpat",
                    "numinlets": 5,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 572.0, 252.47570753320315, 133.73121643066406, 116.319091796875 ],
                    "varname": "gst.bandpass",
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
                    "name": "gst.derivative.maxpat",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 777.0, 303.22476971372225, 133.73121643066406, 116.319091796875 ],
                    "varname": "gst.derivative",
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
                    "id": "obj-7",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.acc.intensity.maxpat",
                    "numinlets": 4,
                    "numoutlets": 4,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "float", "float", "float", "float" ],
                    "patching_rect": [ 428.0, 252.47570753320315, 133.73121643066406, 116.34757995605469 ],
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
                    "id": "obj-2",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.classification.hhmm.maxpat",
                    "numinlets": 9,
                    "numoutlets": 3,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 112.39743041992188, 486.5483912229538, 305.0, 184.0 ],
                    "varname": "gst.classification.hhmm",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-23",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 187.38033548990887, 683.0, 50.0, 21.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-20",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 112.39743041992188, 274.99999952539065, 71.0, 21.0 ],
                    "text": "loadmess 1"
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-19",
                    "items": [ "stop", ",", "IMU", ",", "Drawing" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 112.39743041992188, 300.13525343164065, 76.0, 21.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-16",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 112.39743041992188, 433.5483912229538, 683.6025695800781, 21.0 ],
                    "text": "switch"
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
                    "patching_rect": [ 284.0, 252.489951612793, 133.73121643066406, 116.319091796875 ],
                    "varname": "gst.orientation",
                    "viewvisibility": 1
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
                    "id": "obj-1",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "drawing.maxpat",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "", "int" ],
                    "patching_rect": [ 777.0, 48.54269452539063, 321.06452310085297, 247.58708569299006 ],
                    "varname": "drawing",
                    "viewvisibility": 1
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-21", 0 ],
                    "source": [ "obj-1", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-27", 0 ],
                    "order": 1,
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "order": 0,
                    "source": [ "obj-10", 0 ]
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
                    "order": 2,
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
                    "destination": [ "obj-1", 2 ],
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
                    "destination": [ "obj-2", 0 ],
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 1 ],
                    "midpoints": [ 1075.564523100853, 471.3249768614769, 157.64743041992188, 471.3249768614769 ],
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "order": 0,
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 1 ],
                    "midpoints": [ 60.5, 470.56312704197694, 157.64743041992188, 470.56312704197694 ],
                    "order": 1,
                    "source": [ "obj-18", 0 ]
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
                    "destination": [ "obj-22", 0 ],
                    "source": [ "obj-2", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 0 ],
                    "midpoints": [ 264.8974304199219, 676.0483912229538, 196.88033548990887, 676.0483912229538 ],
                    "source": [ "obj-2", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 1 ],
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-32", 1 ],
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-32", 4 ],
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 5 ],
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-32", 0 ],
                    "source": [ "obj-28", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-29", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
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
                    "destination": [ "obj-33", 0 ],
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 2 ],
                    "source": [ "obj-35", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-35", 0 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 2 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 1 ],
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 1 ],
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
            "obj-10::obj-108": [ "15159-clock-type", "clock type", 0 ],
            "obj-10::obj-16": [ "15159-port", "port", 0 ],
            "obj-10::obj-179": [ "15159-sens-type", "sensor type", 0 ],
            "obj-10::obj-18::obj-105": [ "live.text[15]", "live.text", 0 ],
            "obj-10::obj-18::obj-110": [ "live.text[14]", "live.text", 0 ],
            "obj-10::obj-18::obj-121": [ "live.numbox[4]", "Amount", 0 ],
            "obj-10::obj-18::obj-20": [ "15159-port[1]", "port", 0 ],
            "obj-10::obj-18::obj-223": [ "live.numbox[3]", "live.numbox", 0 ],
            "obj-10::obj-18::obj-59": [ "live.numbox[5]", "live.numbox", 0 ],
            "obj-10::obj-18::obj-7": [ "live.numbox[2]", "live.numbox", 0 ],
            "obj-10::obj-18::obj-75": [ "live.numbox[6]", "live.numbox", 0 ],
            "obj-10::obj-18::obj-83": [ "live.toggle[4]", "live.toggle", 0 ],
            "obj-10::obj-25": [ "live.text[18]", "live.text", 0 ],
            "obj-10::obj-31": [ "live.button[3]", "live.button", 0 ],
            "obj-10::obj-47": [ "live.text[12]", "enable", 0 ],
            "obj-10::obj-50": [ "15159-frameperiod", "frame period", 0 ],
            "obj-10::obj-56": [ "live.text[1]", "live.text", 0 ],
            "obj-10::obj-58": [ "live.text[2]", "live.text[3]", 0 ],
            "obj-10::obj-59": [ "live.numbox[1]", "id", 0 ],
            "obj-10::obj-60": [ "live.text[11]", "live.text[3]", 0 ],
            "obj-1::obj-16": [ "sample-period", "sample-period", 0 ],
            "obj-1::obj-18": [ "zoom", "zoom", 0 ],
            "obj-25": [ "regularization[1]", "regularization", 0 ],
            "obj-2::obj-11": [ "total", "total", 0 ],
            "obj-2::obj-29": [ "regularization", "regularization", 0 ],
            "obj-2::obj-39": [ "label", "label", 0 ],
            "obj-2::obj-59": [ "live.text[6]", "live.text", 0 ],
            "obj-2::obj-64": [ "live.text[5]", "live.text", 0 ],
            "obj-2::obj-66": [ "live.text[8]", "live.text", 0 ],
            "obj-2::obj-7": [ "auto+", "auto+", 0 ],
            "obj-2::obj-70": [ "live.text[7]", "live.text", 0 ],
            "obj-2::obj-73": [ "live.toggle", "live.toggle", 0 ],
            "obj-2::obj-90": [ "enable", "enable", 0 ],
            "obj-31::obj-11": [ "live.text[3]", "live.text", 0 ],
            "obj-31::obj-5::obj-17": [ "15103-sens-type", "out-sens-type", 0 ],
            "obj-31::obj-5::obj-179": [ "15103-sens-type[1]", "in-sens-type", 0 ],
            "obj-31::obj-5::obj-34": [ "maxMonitor", "maxMonitor", 0 ],
            "obj-31::obj-5::obj-37": [ "minMonitor", "minMonitor", 0 ],
            "obj-31::obj-5::obj-42": [ "frame-rate", "framerate", 0 ],
            "obj-31::obj-5::obj-48": [ "gyroweight", "maveragewindow", 0 ],
            "obj-32::obj-166": [ "speed[1]", "speed", 0 ],
            "obj-32::obj-22": [ "ogain", "ogain", 0 ],
            "obj-32::obj-88": [ "start[1]", "start", 0 ],
            "obj-32::obj-92": [ "loop[1]", "loop", 0 ],
            "obj-33::obj-2": [ "ogain[1]", "ogain", 0 ],
            "obj-5::obj-195::obj-125": [ "Q", "Q", 0 ],
            "obj-5::obj-195::obj-13": [ "minMonitor[3]", "minMonitor", 0 ],
            "obj-5::obj-195::obj-14": [ "maxMonitor[3]", "maxMonitor", 0 ],
            "obj-5::obj-195::obj-17": [ "bypass", "bypass", 0 ],
            "obj-5::obj-195::obj-42": [ "frame-rate[2]", "framerate", 0 ],
            "obj-5::obj-195::obj-82": [ "cut-frequency", "fcut", 0 ],
            "obj-5::obj-195::obj-86": [ "gain[1]", "gain", 0 ],
            "obj-5::obj-34": [ "live.toggle[1]", "bypass", 0 ],
            "obj-5::obj-37": [ "live.text[10]", "live.text", 0 ],
            "obj-6::obj-195::obj-13": [ "minMonitor[2]", "minMonitor", 0 ],
            "obj-6::obj-195::obj-14": [ "maxMonitor[2]", "maxMonitor", 0 ],
            "obj-6::obj-195::obj-42": [ "frame-rate[1]", "framerate", 0 ],
            "obj-6::obj-195::obj-82": [ "scalingFactor", "framerate", 0 ],
            "obj-6::obj-195::obj-86": [ "deltaSize", "maveragewindow", 0 ],
            "obj-6::obj-5": [ "live.text[28]", "live.text", 0 ],
            "obj-7::obj-195::obj-125": [ "compexp", "compexp", 0 ],
            "obj-7::obj-195::obj-13": [ "minMonitor[1]", "minMonitor", 0 ],
            "obj-7::obj-195::obj-136": [ "live.menu[1]", "live.menu", 0 ],
            "obj-7::obj-195::obj-139": [ "live.menu", "live.menu", 0 ],
            "obj-7::obj-195::obj-14": [ "maxMonitor[1]", "maxMonitor", 0 ],
            "obj-7::obj-195::obj-142": [ "derivativewindow", "maveragewindow", 0 ],
            "obj-7::obj-195::obj-146": [ "maveragewindow", "maveragewindow", 0 ],
            "obj-7::obj-195::obj-150": [ "gateonoff", "gateonoff", 0 ],
            "obj-7::obj-195::obj-151": [ "cliponoff", "cliponoff", 0 ],
            "obj-7::obj-195::obj-154": [ "clipmax", "gain", 0 ],
            "obj-7::obj-195::obj-31": [ "gatethresh", "gatethresh", 0 ],
            "obj-7::obj-195::obj-42": [ "framerate", "framerate", 0 ],
            "obj-7::obj-195::obj-82": [ "fcut", "fcut", 0 ],
            "obj-7::obj-195::obj-86": [ "gain", "gain", 0 ],
            "obj-7::obj-37": [ "live.text[9]", "live.text", 0 ],
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
                    "parameter_longname": "15159-clock-type"
                },
                "obj-10::obj-16": {
                    "parameter_longname": "15159-port"
                },
                "obj-10::obj-179": {
                    "parameter_longname": "15159-sens-type"
                },
                "obj-10::obj-18::obj-20": {
                    "parameter_longname": "15159-port[1]"
                },
                "obj-10::obj-47": {
                    "parameter_longname": "live.text[12]"
                },
                "obj-10::obj-50": {
                    "parameter_longname": "15159-frameperiod"
                },
                "obj-10::obj-56": {
                    "parameter_longname": "live.text[1]"
                },
                "obj-10::obj-59": {
                    "parameter_longname": "live.numbox[1]"
                },
                "obj-10::obj-60": {
                    "parameter_longname": "live.text[11]"
                },
                "obj-2::obj-59": {
                    "parameter_longname": "live.text[6]"
                },
                "obj-2::obj-64": {
                    "parameter_longname": "live.text[5]"
                },
                "obj-31::obj-5::obj-17": {
                    "parameter_longname": "15103-sens-type"
                },
                "obj-31::obj-5::obj-179": {
                    "parameter_longname": "15103-sens-type[1]"
                },
                "obj-32::obj-166": {
                    "parameter_longname": "speed[1]"
                },
                "obj-32::obj-88": {
                    "parameter_longname": "start[1]"
                },
                "obj-32::obj-92": {
                    "parameter_longname": "loop[1]"
                },
                "obj-33::obj-2": {
                    "parameter_longname": "ogain[1]"
                },
                "obj-5::obj-195::obj-13": {
                    "parameter_longname": "minMonitor[3]"
                },
                "obj-5::obj-195::obj-14": {
                    "parameter_longname": "maxMonitor[3]"
                },
                "obj-5::obj-195::obj-42": {
                    "parameter_longname": "frame-rate[2]"
                },
                "obj-5::obj-195::obj-86": {
                    "parameter_longname": "gain[1]"
                },
                "obj-5::obj-34": {
                    "parameter_longname": "live.toggle[1]"
                },
                "obj-5::obj-37": {
                    "parameter_longname": "live.text[10]"
                },
                "obj-6::obj-195::obj-13": {
                    "parameter_longname": "minMonitor[2]"
                },
                "obj-6::obj-195::obj-14": {
                    "parameter_longname": "maxMonitor[2]"
                },
                "obj-6::obj-195::obj-42": {
                    "parameter_longname": "frame-rate[1]"
                },
                "obj-7::obj-195::obj-13": {
                    "parameter_longname": "minMonitor[1]"
                },
                "obj-7::obj-195::obj-14": {
                    "parameter_longname": "maxMonitor[1]"
                },
                "obj-7::obj-37": {
                    "parameter_longname": "live.text[9]"
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0,
        "toolbaradditions": [ "s2n", "Modalys", "Gestural-Sound-Toolkit" ]
    }
}