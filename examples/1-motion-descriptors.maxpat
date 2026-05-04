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
        "rect": [ 95.0, 220.0, 1528.0, 937.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-32",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 188.0, 552.0, 80.0, 20.0 ],
                    "text": "velocity norm"
                }
            },
            {
                "box": {
                    "id": "obj-30",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 188.0, 437.65876388549805, 66.0, 20.0 ],
                    "text": "velocities"
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1293.731216430664, 312.49921798706055, 19.0, 22.0 ],
                    "text": "t l"
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1007.0, 312.49921798706055, 19.0, 22.0 ],
                    "text": "t l"
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 631.0, 615.0, 47.0, 22.0 ],
                    "text": "zl nth 1"
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
                    "patching_rect": [ 1296.0, 667.4992179870605, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-18",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1237.0, 667.4992179870605, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-15",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1179.0, 667.4992179870605, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 662.0, 317.0, 98.0, 22.0 ],
                    "text": "scale -2. 2. -1. 1."
                }
            },
            {
                "box": {
                    "fontname": "Helvetica Neue Light",
                    "fontsize": 23.9,
                    "id": "obj-25",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 41.0, 59.0, 318.0, 35.0 ],
                    "text": " drawing / position tracking"
                }
            },
            {
                "box": {
                    "fontname": "Helvetica Neue Light",
                    "fontsize": 23.9,
                    "id": "obj-24",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 505.5, 59.0, 298.0, 35.0 ],
                    "text": "Inertial measurement units"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-22",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1088.0, 563.4992179870605, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-20",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1007.0, 563.4992179870605, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "float" ],
                    "patching_rect": [ 1007.0, 526.4992179870605, 100.0, 22.0 ],
                    "text": "unpack f f"
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
                    "id": "obj-60",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "synth.filter.maxpat",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal", "signal" ],
                    "patching_rect": [ 520.0, 649.0, 241.79486083984375, 145.89173889160156 ],
                    "varname": "synth.filter",
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
                    "id": "obj-8",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.bandpass.maxpat",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 819.0, 389.49921798706055, 133.73121643066406, 116.319091796875 ],
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
                    "id": "obj-9",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.lowpass.maxpat",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 514.0, 389.49921798706055, 133.73121643066406, 116.319091796875 ],
                    "varname": "gst.lowpass",
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
                    "id": "obj-11",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.highpass.maxpat",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 662.0, 389.49921798706055, 133.73121643066406, 116.319091796875 ],
                    "varname": "gst.highpass",
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
                    "name": "gst.norm.maxpat",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 45.0, 503.0, 133.73121643066406, 116.319091796875 ],
                    "varname": "gst.norm",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 347.0, 88.49921798706055, 75.0, 22.0 ],
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
                    "id": "obj-12",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "in.comote.maxpat",
                    "numinlets": 6,
                    "numoutlets": 6,
                    "offset": [ -7.0, -5.0 ],
                    "outlettype": [ "", "", "", "", "", "" ],
                    "patching_rect": [ 689.0, 106.49921798706055, 163.0, 132.56695556640625 ],
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
                    "id": "obj-63",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.angles.maxpat",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 1179.0, 527.4992179870605, 133.73121643066406, 116.319091796875 ],
                    "varname": "gst.angles",
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
                    "id": "obj-31",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.orientation.maxpat",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 1179.0, 389.49921798706055, 133.73121643066406, 116.319091796875 ],
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
                    "id": "obj-23",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "in.riotbitalino.maxpat",
                    "numinlets": 5,
                    "numoutlets": 4,
                    "offset": [ -7.0, -5.0 ],
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 514.0, 110.49921798706055, 163.0, 132.56695556640625 ],
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
                    "id": "obj-21",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "drawing.maxpat",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "", "int" ],
                    "patching_rect": [ 45.26878356933594, 114.0, 320.73121643066406, 243.1808853149414 ],
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
                    "patching_rect": [ 524.0, 816.0, 182.97576904296875, 86.09903717041016 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "fontname": "Helvetica Neue",
                    "fontsize": 23.899999618530273,
                    "id": "obj-10",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 53.0, 7.0, 285.0, 34.0 ],
                    "text": "Motion descriptors"
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
                    "id": "obj-4",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.derivative.maxpat",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 45.0, 370.0, 133.73121643066406, 116.319091796875 ],
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
                    "id": "obj-1",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.acc.intensity.maxpat",
                    "numinlets": 4,
                    "numoutlets": 4,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "float", "float", "float", "float" ],
                    "patching_rect": [ 1007.0, 389.49921798706055, 133.73121643066406, 116.34757995605469 ],
                    "varname": "gst.acc.intensity",
                    "viewvisibility": 1
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "order": 0,
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "source": [ "obj-12", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "order": 1,
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 0 ],
                    "order": 2,
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "order": 1,
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 0 ],
                    "order": 0,
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 1 ],
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-22", 0 ],
                    "source": [ "obj-17", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 2 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-60", 2 ],
                    "source": [ "obj-20", 0 ]
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
                    "destination": [ "obj-13", 0 ],
                    "order": 0,
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "source": [ "obj-23", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "order": 1,
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 0 ],
                    "order": 2,
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "order": 0,
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "order": 1,
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "order": 0,
                    "source": [ "obj-31", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-63", 0 ],
                    "midpoints": [ 1188.5, 516.158763885498, 1188.5, 516.158763885498 ],
                    "order": 1,
                    "source": [ "obj-31", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-60", 1 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 1 ],
                    "order": 0,
                    "source": [ "obj-60", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "order": 1,
                    "source": [ "obj-60", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "source": [ "obj-63", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 0 ],
                    "source": [ "obj-63", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "source": [ "obj-63", 2 ]
                }
            }
        ],
        "parameters": {
            "obj-11::obj-195::obj-125": [ "comp-exp", "Q", 0 ],
            "obj-11::obj-195::obj-13": [ "minMonitor[5]", "minMonitor", 0 ],
            "obj-11::obj-195::obj-14": [ "maxMonitor[5]", "maxMonitor", 0 ],
            "obj-11::obj-195::obj-42": [ "frame-rate[2]", "framerate", 0 ],
            "obj-11::obj-195::obj-82": [ "cut-frequency", "fcut", 0 ],
            "obj-11::obj-195::obj-86": [ "gain[1]", "gain", 0 ],
            "obj-11::obj-37": [ "live.text[9]", "live.text", 0 ],
            "obj-12::obj-55": [ "live.text[8]", "live.text", 0 ],
            "obj-12::obj-56": [ "live.text[7]", "live.text", 0 ],
            "obj-12::obj-60": [ "live.text[6]", "live.text[3]", 0 ],
            "obj-1::obj-195::obj-125": [ "compexp", "compexp", 0 ],
            "obj-1::obj-195::obj-13": [ "minMonitor", "minMonitor", 0 ],
            "obj-1::obj-195::obj-136": [ "live.menu[1]", "live.menu", 0 ],
            "obj-1::obj-195::obj-139": [ "live.menu", "live.menu", 0 ],
            "obj-1::obj-195::obj-14": [ "maxMonitor", "maxMonitor", 0 ],
            "obj-1::obj-195::obj-142": [ "derivativewindow", "maveragewindow", 0 ],
            "obj-1::obj-195::obj-146": [ "maveragewindow", "maveragewindow", 0 ],
            "obj-1::obj-195::obj-150": [ "gateonoff", "gateonoff", 0 ],
            "obj-1::obj-195::obj-151": [ "cliponoff", "cliponoff", 0 ],
            "obj-1::obj-195::obj-154": [ "clipmax", "gain", 0 ],
            "obj-1::obj-195::obj-31": [ "gatethresh", "gatethresh", 0 ],
            "obj-1::obj-195::obj-42": [ "framerate", "framerate", 0 ],
            "obj-1::obj-195::obj-82": [ "fcut", "fcut", 0 ],
            "obj-1::obj-195::obj-86": [ "gain", "gain", 0 ],
            "obj-1::obj-37": [ "live.text[3]", "live.text", 0 ],
            "obj-23::obj-9": [ "3708-id-clock", "3708-id-clock", 0 ],
            "obj-26::obj-2": [ "live.gain~[5]", "ogain", 0 ],
            "obj-31::obj-11": [ "live.text[1]", "live.text", 0 ],
            "obj-31::obj-5::obj-34": [ "maxMonitor[2]", "maxMonitor", 0 ],
            "obj-31::obj-5::obj-37": [ "minMonitor[2]", "minMonitor", 0 ],
            "obj-31::obj-5::obj-42": [ "frame-rate[1]", "framerate", 0 ],
            "obj-31::obj-5::obj-48": [ "gyroweight", "maveragewindow", 0 ],
            "obj-4::obj-195::obj-13": [ "minMonitor[1]", "minMonitor", 0 ],
            "obj-4::obj-195::obj-14": [ "maxMonitor[1]", "maxMonitor", 0 ],
            "obj-4::obj-195::obj-42": [ "frame-rate", "framerate", 0 ],
            "obj-4::obj-195::obj-82": [ "scalingFactor", "framerate", 0 ],
            "obj-4::obj-195::obj-86": [ "deltaSize", "maveragewindow", 0 ],
            "obj-4::obj-5": [ "live.text[28]", "live.text", 0 ],
            "obj-60::obj-15": [ "noise", "noise", 0 ],
            "obj-60::obj-18": [ "minF", "minF", 0 ],
            "obj-60::obj-19": [ "maxF", "maxF", 0 ],
            "obj-60::obj-2": [ "live.gain~[2]", "ogain", 0 ],
            "obj-63::obj-5::obj-34": [ "maxMonitor[3]", "maxMonitor", 0 ],
            "obj-63::obj-5::obj-37": [ "minMonitor[3]", "minMonitor", 0 ],
            "obj-63::obj-5::obj-48": [ "order", "order", 0 ],
            "obj-63::obj-7": [ "live.text[27]", "live.text", 0 ],
            "obj-7::obj-195::obj-13": [ "minMonitor[4]", "minMonitor", 0 ],
            "obj-7::obj-195::obj-14": [ "maxMonitor[4]", "maxMonitor", 0 ],
            "obj-7::obj-37": [ "live.text[4]", "live.text", 0 ],
            "obj-8::obj-195::obj-125": [ "Q", "Q", 0 ],
            "obj-8::obj-195::obj-13": [ "minMonitor[7]", "minMonitor", 0 ],
            "obj-8::obj-195::obj-14": [ "maxMonitor[7]", "maxMonitor", 0 ],
            "obj-8::obj-195::obj-42": [ "frame-rate[4]", "framerate", 0 ],
            "obj-8::obj-195::obj-82": [ "cut-frequency[2]", "fcut", 0 ],
            "obj-8::obj-195::obj-86": [ "gain[3]", "gain", 0 ],
            "obj-8::obj-37": [ "live.text[10]", "live.text", 0 ],
            "obj-9::obj-195::obj-125": [ "comp-exp[1]", "Q", 0 ],
            "obj-9::obj-195::obj-13": [ "minMonitor[6]", "minMonitor", 0 ],
            "obj-9::obj-195::obj-14": [ "maxMonitor[6]", "maxMonitor", 0 ],
            "obj-9::obj-195::obj-42": [ "frame-rate[3]", "framerate", 0 ],
            "obj-9::obj-195::obj-82": [ "cut-frequency[1]", "fcut", 0 ],
            "obj-9::obj-195::obj-86": [ "gain[2]", "gain", 0 ],
            "obj-9::obj-37": [ "live.text[29]", "live.text", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "parameter_overrides": {
                "obj-11::obj-195::obj-13": {
                    "parameter_longname": "minMonitor[5]"
                },
                "obj-11::obj-195::obj-14": {
                    "parameter_longname": "maxMonitor[5]"
                },
                "obj-11::obj-195::obj-42": {
                    "parameter_longname": "frame-rate[2]"
                },
                "obj-11::obj-195::obj-86": {
                    "parameter_longname": "gain[1]"
                },
                "obj-11::obj-37": {
                    "parameter_longname": "live.text[9]"
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
                },
                "obj-31::obj-5::obj-42": {
                    "parameter_longname": "frame-rate[1]"
                },
                "obj-4::obj-195::obj-13": {
                    "parameter_longname": "minMonitor[1]"
                },
                "obj-4::obj-195::obj-14": {
                    "parameter_longname": "maxMonitor[1]"
                },
                "obj-60::obj-2": {
                    "parameter_longname": "live.gain~[2]"
                },
                "obj-63::obj-5::obj-34": {
                    "parameter_longname": "maxMonitor[3]"
                },
                "obj-63::obj-5::obj-37": {
                    "parameter_longname": "minMonitor[3]"
                },
                "obj-7::obj-195::obj-13": {
                    "parameter_longname": "minMonitor[4]"
                },
                "obj-7::obj-195::obj-14": {
                    "parameter_longname": "maxMonitor[4]"
                },
                "obj-7::obj-37": {
                    "parameter_longname": "live.text[4]"
                },
                "obj-8::obj-195::obj-13": {
                    "parameter_longname": "minMonitor[7]"
                },
                "obj-8::obj-195::obj-14": {
                    "parameter_longname": "maxMonitor[7]"
                },
                "obj-8::obj-195::obj-42": {
                    "parameter_longname": "frame-rate[4]"
                },
                "obj-8::obj-195::obj-82": {
                    "parameter_longname": "cut-frequency[2]"
                },
                "obj-8::obj-195::obj-86": {
                    "parameter_longname": "gain[3]"
                },
                "obj-8::obj-37": {
                    "parameter_longname": "live.text[10]"
                },
                "obj-9::obj-195::obj-125": {
                    "parameter_longname": "comp-exp[1]"
                },
                "obj-9::obj-195::obj-13": {
                    "parameter_longname": "minMonitor[6]"
                },
                "obj-9::obj-195::obj-14": {
                    "parameter_longname": "maxMonitor[6]"
                },
                "obj-9::obj-195::obj-42": {
                    "parameter_longname": "frame-rate[3]"
                },
                "obj-9::obj-195::obj-82": {
                    "parameter_longname": "cut-frequency[1]"
                },
                "obj-9::obj-195::obj-86": {
                    "parameter_longname": "gain[2]"
                },
                "obj-9::obj-37": {
                    "parameter_longname": "live.text[29]"
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0,
        "toolbaradditions": [ "s2n", "Modalys" ]
    }
}