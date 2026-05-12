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
        "rect": [ 34.0, 93.0, 747.0, 937.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 110.0, 434.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-27",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 123.0, 403.0, 33.0, 18.0 ],
                    "text": "start"
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-24",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 194.0, 403.0, 69.0, 18.0 ],
                    "text": "follow"
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-23",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 277.0, 403.0, 69.0, 18.0 ],
                    "text": "train"
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-22",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 355.0, 403.0, 69.0, 29.0 ],
                    "text": "record start:stop"
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 194.0, 434.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 277.0, 434.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 360.0, 434.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 378.5204620361328, 13.975739, 24.0, 24.0 ]
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
                    "patching_rect": [ 28.0, 204.0, 133.73121643066406, 116.319091796875 ],
                    "varname": "gst.orientation",
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
                    "id": "obj-25",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.gate.maxpat",
                    "numinlets": 4,
                    "numoutlets": 2,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "", "int" ],
                    "patching_rect": [ 322.0, 204.0, 133.73121643066406, 116.34757995605469 ],
                    "varname": "gst.gate",
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
                    "name": "gst.acc.intensity.maxpat",
                    "numinlets": 4,
                    "numoutlets": 4,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "float", "float", "float", "float" ],
                    "patching_rect": [ 169.0, 204.0, 133.73121643066406, 116.34757995605469 ],
                    "varname": "gst.acc.intensity",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-3",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 249.0, 554.0, 50.0, 22.0 ]
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
                    "patching_rect": [ 28.0, 13.975739, 335.9999993443489, 141.0 ],
                    "varname": "gst.acc.intensity[1]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-13",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 172.0, 581.0, 69.0, 29.0 ],
                    "text": "recognised gesture"
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-11",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 304.0, 601.0, 69.0, 29.0 ],
                    "text": "normalized likelihoods"
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-9",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 194.0, 659.0, 61.0, 18.0 ],
                    "text": "progression"
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "int", "int" ],
                    "patching_rect": [ 28.0, 641.0, 29.5, 22.0 ],
                    "text": "t 1 i"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.737254901960784, 0.733333333333333, 0.733333333333333, 1.0 ],
                    "candycane": 8,
                    "id": "obj-5",
                    "maxclass": "multislider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 304.0, 554.0, 67.0, 45.0 ],
                    "setminmax": [ 0.0, 1.0 ],
                    "setstyle": 1,
                    "size": 5
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "multislider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "orientation": 0,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 172.0, 634.0, 151.0, 23.0 ],
                    "setminmax": [ 0.0, 1.0 ],
                    "setstyle": 1
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
                    "patching_rect": [ 547.0, 60.0, 163.0, 132.56695556640625 ],
                    "varname": "drawing",
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
                    "name": "gst.temporal.classification.gvf.maxpat",
                    "numinlets": 5,
                    "numoutlets": 7,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "", "", "", "", "", "", "" ],
                    "patching_rect": [ 28.0, 470.0, 351.0, 76.0 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.0, 0.0, 0.0, 0.0 ],
                    "bgmode": 2,
                    "border": 1,
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
                    "patching_rect": [ 28.0, 810.0, 199.0, 90.0 ],
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
                    "name": "synth.scrub.samples.maxpat",
                    "numinlets": 5,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 28.0, 674.0, 240.79486083984375, 111.32023620605469 ],
                    "varname": "synth.scrub.samples",
                    "viewvisibility": 1
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "midpoints": [ 556.5, 365.78349327929686, 37.5, 365.78349327929686 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "midpoints": [ 700.5, 382.78349327929686, 119.5, 382.78349327929686 ],
                    "source": [ "obj-1", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 3 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-14", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-14", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 1 ],
                    "source": [ "obj-15", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-41", 3 ],
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 2 ],
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 1 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
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
                    "destination": [ "obj-12", 2 ],
                    "midpoints": [ 181.5, 658.0121459960938, 148.39743041992188, 658.0121459960938 ],
                    "source": [ "obj-4", 0 ]
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
                    "order": 0,
                    "source": [ "obj-41", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "order": 1,
                    "source": [ "obj-41", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 1 ],
                    "midpoints": [ 178.5, 331.0284881591797, 314.927059173584, 331.0284881591797, 314.927059173584, 193.680908203125, 369.7437388102214, 193.680908203125 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 4 ],
                    "source": [ "obj-7", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-12::obj-2": [ "live.gain~[3]", "ogain", 0 ],
            "obj-12::obj-88": [ "start", "start", 0 ],
            "obj-14::obj-101": [ "InVecSize", "InVecSize", 0 ],
            "obj-14::obj-116": [ "live.text[8]", "live.text", 0 ],
            "obj-14::obj-126": [ "live.toggle", "live.toggle", 0 ],
            "obj-14::obj-47": [ "translation", "translation", 0 ],
            "obj-14::obj-49": [ "segment", "segment", 0 ],
            "obj-14::obj-51": [ "nbParticles", "nbParticles", 0 ],
            "obj-14::obj-53": [ "scalings", "scalings", 0 ],
            "obj-14::obj-56": [ "dynamics", "dynamics", 0 ],
            "obj-14::obj-60": [ "rotations", "rotations", 0 ],
            "obj-14::obj-74": [ "live.text[7]", "live.text", 0 ],
            "obj-14::obj-75": [ "live.text[9]", "live.text", 0 ],
            "obj-14::obj-78": [ "follow", "follow", 0 ],
            "obj-14::obj-8": [ "tolerance", "tolerance", 0 ],
            "obj-1::obj-16": [ "sample-period", "sample-period", 0 ],
            "obj-1::obj-18": [ "zoom", "zoom", 0 ],
            "obj-25::obj-27": [ "conti", "conti", 0 ],
            "obj-25::obj-6": [ "live.text[4]", "live.text", 0 ],
            "obj-25::obj-8::obj-14": [ "threshold", "threshold", 0 ],
            "obj-25::obj-8::obj-27": [ "continuous", "continuous", 0 ],
            "obj-25::obj-8::obj-34": [ "maxMonitor[1]", "maxMonitor", 0 ],
            "obj-25::obj-8::obj-37": [ "minMonitor[1]", "minMonitor", 0 ],
            "obj-26::obj-2": [ "live.gain~[5]", "ogain", 0 ],
            "obj-31::obj-11": [ "live.text[1]", "live.text", 0 ],
            "obj-31::obj-5::obj-17": [ "out-sens-type", "out-sens-type", 0 ],
            "obj-31::obj-5::obj-179": [ "in-sens-type", "in-sens-type", 0 ],
            "obj-31::obj-5::obj-34": [ "maxMonitor[2]", "maxMonitor", 0 ],
            "obj-31::obj-5::obj-37": [ "minMonitor[2]", "minMonitor", 0 ],
            "obj-31::obj-5::obj-42": [ "frame-rate", "framerate", 0 ],
            "obj-31::obj-5::obj-48": [ "gyroweight", "maveragewindow", 0 ],
            "obj-41::obj-108": [ "clock-type", "clock type", 0 ],
            "obj-41::obj-16": [ "osc-port", "port", 0 ],
            "obj-41::obj-179": [ "sens-type", "sensor type", 0 ],
            "obj-41::obj-18::obj-105": [ "live.text[15]", "live.text", 0 ],
            "obj-41::obj-18::obj-110": [ "live.text[14]", "live.text", 0 ],
            "obj-41::obj-18::obj-121": [ "live.numbox[4]", "Amount", 0 ],
            "obj-41::obj-18::obj-20": [ "3411-port[1]", "port", 0 ],
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
            "obj-6::obj-195::obj-125": [ "compexp", "compexp", 0 ],
            "obj-6::obj-195::obj-13": [ "minMonitor", "minMonitor", 0 ],
            "obj-6::obj-195::obj-136": [ "live.menu[1]", "live.menu", 0 ],
            "obj-6::obj-195::obj-139": [ "live.menu", "live.menu", 0 ],
            "obj-6::obj-195::obj-14": [ "maxMonitor", "maxMonitor", 0 ],
            "obj-6::obj-195::obj-142": [ "derivativewindow", "maveragewindow", 0 ],
            "obj-6::obj-195::obj-146": [ "maveragewindow", "maveragewindow", 0 ],
            "obj-6::obj-195::obj-150": [ "gateonoff", "gateonoff", 0 ],
            "obj-6::obj-195::obj-151": [ "cliponoff", "cliponoff", 0 ],
            "obj-6::obj-195::obj-154": [ "clipmax", "gain", 0 ],
            "obj-6::obj-195::obj-31": [ "gatethresh", "gatethresh", 0 ],
            "obj-6::obj-195::obj-42": [ "framerate", "framerate", 0 ],
            "obj-6::obj-195::obj-82": [ "fcut", "fcut", 0 ],
            "obj-6::obj-195::obj-86": [ "gain", "gain", 0 ],
            "obj-6::obj-37": [ "live.text[3]", "live.text", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "parameter_overrides": {
                "obj-12::obj-2": {
                    "parameter_longname": "live.gain~[3]"
                },
                "obj-25::obj-6": {
                    "parameter_longname": "live.text[4]"
                },
                "obj-25::obj-8::obj-34": {
                    "parameter_longname": "maxMonitor[1]"
                },
                "obj-25::obj-8::obj-37": {
                    "parameter_longname": "minMonitor[1]"
                },
                "obj-26::obj-2": {
                    "parameter_longname": "live.gain~[5]"
                },
                "obj-31::obj-11": {
                    "parameter_longname": "live.text[1]"
                },
                "obj-31::obj-5::obj-34": {
                    "parameter_longname": "maxMonitor[2]"
                },
                "obj-31::obj-5::obj-37": {
                    "parameter_longname": "minMonitor[2]"
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0,
        "toolbaradditions": [ "s2n", "Modalys", "Gestural-Sound-Toolkit" ]
    }
}