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
        "rect": [ 34.0, 93.0, 1344.0, 974.0 ],
        "boxes": [
            {
                "box": {
                    "bgmode": 0,
                    "border": 1,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-34",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.synth.FM.maxpat",
                    "numinlets": 7,
                    "numoutlets": 5,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal", "multichannelsignal", "", "", "" ],
                    "patching_rect": [ 941.0, 681.5, 262.0, 149.0 ],
                    "varname": "_gst.synth.FM[1]",
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
                    "id": "obj-33",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.synth.FM.maxpat",
                    "numinlets": 7,
                    "numoutlets": 5,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal", "multichannelsignal", "", "", "" ],
                    "patching_rect": [ 662.0, 681.5, 262.0, 149.0 ],
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
                    "patching_rect": [ 496.73121643066406, 870.0, 184.0, 85.0 ],
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
                    "id": "obj-23",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.synth.scratch.samples.maxpat",
                    "numinlets": 5,
                    "numoutlets": 2,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal", "multichannelsignal" ],
                    "patching_rect": [ 306.0, 704.0, 245.0, 114.0 ],
                    "varname": "_gst.synth.scratch.samples",
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
                    "id": "obj-9",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.riot-comote.maxpat",
                    "numinlets": 4,
                    "numoutlets": 5,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "", "", "", "", "" ],
                    "patching_rect": [ 984.865608215332, 65.0, 339.0, 144.0 ],
                    "varname": "in.comote[1]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-32",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "int", "int" ],
                    "patching_rect": [ 306.0, 659.0, 48.0, 22.0 ],
                    "text": "change"
                }
            },
            {
                "box": {
                    "id": "obj-30",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 400.0, 659.0, 151.0, 22.0 ],
                    "text": "loadmess C74:/media/msp"
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
                    "patching_rect": [ 714.0, 645.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Helvetica Neue Light",
                    "fontsize": 23.865383,
                    "id": "obj-15",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 825.0, 369.0, 86.0, 35.0 ],
                    "text": "Onset"
                }
            },
            {
                "box": {
                    "fontname": "Helvetica Neue Light",
                    "fontsize": 23.865383,
                    "id": "obj-11",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 570.865608215332, 369.0, 86.0, 35.0 ],
                    "text": "Gate"
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
                    "patching_rect": [ 604.365608215332, 585.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "format": 6,
                    "id": "obj-19",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 191.5, 487.0, 43.0, 22.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "format": 6,
                    "id": "obj-27",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 110.5, 487.0, 43.0, 22.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-29",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "float" ],
                    "patching_rect": [ 110.5, 460.0, 100.0, 22.0 ],
                    "text": "unpack f f"
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 662.0, 645.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-16",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "bang" ],
                    "patching_rect": [ 662.0, 615.0, 71.0, 22.0 ],
                    "text": "togedge"
                }
            },
            {
                "box": {
                    "fontname": "Helvetica Neue Light",
                    "fontsize": 18.0,
                    "id": "obj-1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 110.5, 27.975730895996094, 243.0, 28.0 ],
                    "text": " drawing / position tracking"
                }
            },
            {
                "box": {
                    "fontname": "Helvetica Neue Light",
                    "fontsize": 18.0,
                    "id": "obj-24",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1024.0, 12.975730895996094, 227.0, 28.0 ],
                    "text": "Inertial measurement units"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "format": 6,
                    "id": "obj-2",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1116.0, 382.0, 43.0, 22.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "format": 6,
                    "id": "obj-20",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1035.0, 382.0, 43.0, 22.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-17",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "float" ],
                    "patching_rect": [ 1035.0, 355.0, 100.0, 22.0 ],
                    "text": "unpack f f"
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
                    "name": "gst.vtof.maxpat",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 248.5, 313.1566162109375, 133.73121643066406, 116.319091796875 ],
                    "varname": "gst.norm",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 412.23121643066406, 33.975730895996094, 70.0, 22.0 ],
                    "text": "loadmess 2"
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
                    "patching_rect": [ 110.5, 65.0, 320.73121643066406, 243.1808853149414 ],
                    "varname": "drawing",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "fontname": "Helvetica Neue Light",
                    "fontsize": 23.9,
                    "id": "obj-10",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 614.5, 5.975730895996094, 272.0, 35.0 ],
                    "text": "Gate / Trigger"
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
                    "patching_rect": [ 110.5, 313.1566162109375, 133.73121643066406, 116.319091796875 ],
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
                    "id": "obj-14",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.acc.intensity.maxpat",
                    "numinlets": 4,
                    "numoutlets": 4,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "float", "float", "float", "float" ],
                    "patching_rect": [ 984.865608215332, 219.1566162109375, 133.73121643066406, 116.34757995605469 ],
                    "varname": "gst.acc.intensity",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 920.365608215332, 586.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 662.0, 584.0, 24.0, 24.0 ]
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
                    "numinlets": 5,
                    "numoutlets": 2,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "", "int" ],
                    "patching_rect": [ 547.0, 460.0, 133.73121643066406, 116.34757995605469 ],
                    "varname": "gst.gate.float",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "fontname": "Helvetica Neue Light",
                    "fontsize": 23.865383,
                    "id": "obj-28",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 389.7554473876953, 920.0, 98.0, 35.0 ],
                    "text": "Output"
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
                    "id": "obj-3",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.kick.maxpat",
                    "numinlets": 5,
                    "numoutlets": 3,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "float", "bang", "" ],
                    "patching_rect": [ 805.634391784668, 460.0, 133.73121643066406, 116.319091796875 ],
                    "varname": "gst.kick",
                    "viewvisibility": 1
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-16", 0 ],
                    "order": 0,
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-32", 0 ],
                    "order": 1,
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "order": 0,
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 1 ],
                    "midpoints": [ 994.365608215332, 428.6580810546875, 585.182804107666, 428.6580810546875 ],
                    "order": 1,
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 0 ],
                    "midpoints": [ 994.365608215332, 428.6580810546875, 556.5, 428.6580810546875 ],
                    "order": 3,
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "midpoints": [ 994.365608215332, 445.09576416015625, 815.134391784668, 445.09576416015625 ],
                    "order": 2,
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 0 ],
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "source": [ "obj-16", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "source": [ "obj-17", 1 ]
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
                    "destination": [ "obj-33", 0 ],
                    "source": [ "obj-18", 0 ]
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
                    "destination": [ "obj-34", 0 ],
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 0 ],
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "order": 0,
                    "source": [ "obj-25", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "order": 1,
                    "source": [ "obj-25", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "source": [ "obj-29", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-27", 0 ],
                    "source": [ "obj-29", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-22", 0 ],
                    "source": [ "obj-3", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 4 ],
                    "source": [ "obj-30", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 0 ],
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 0 ],
                    "source": [ "obj-33", 0 ]
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
                    "destination": [ "obj-21", 2 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "order": 0,
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "order": 1,
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 1 ],
                    "midpoints": [ 258.0, 439.546630859375, 585.182804107666, 439.546630859375 ],
                    "order": 0,
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 0 ],
                    "midpoints": [ 258.0, 446.816162109375, 556.5, 446.816162109375 ],
                    "order": 2,
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "midpoints": [ 258.0, 438.816162109375, 815.134391784668, 438.816162109375 ],
                    "order": 1,
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "source": [ "obj-9", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-14::obj-195::obj-125": [ "compexp", "compexp", 0 ],
            "obj-14::obj-195::obj-13": [ "minMonitor[2]", "minMonitor", 0 ],
            "obj-14::obj-195::obj-136": [ "live.menu[1]", "live.menu", 0 ],
            "obj-14::obj-195::obj-139": [ "live.menu", "live.menu", 0 ],
            "obj-14::obj-195::obj-14": [ "maxMonitor[2]", "maxMonitor", 0 ],
            "obj-14::obj-195::obj-142": [ "derivativewindow", "maveragewindow", 0 ],
            "obj-14::obj-195::obj-146": [ "maveragewindow", "maveragewindow", 0 ],
            "obj-14::obj-195::obj-150": [ "gateonoff", "gateonoff", 0 ],
            "obj-14::obj-195::obj-151": [ "cliponoff", "cliponoff", 0 ],
            "obj-14::obj-195::obj-154": [ "clipmax", "gain", 0 ],
            "obj-14::obj-195::obj-31": [ "gatethresh", "gatethresh", 0 ],
            "obj-14::obj-195::obj-42": [ "framerate", "framerate", 0 ],
            "obj-14::obj-195::obj-82": [ "fcut", "fcut", 0 ],
            "obj-14::obj-195::obj-86": [ "gain", "gain", 0 ],
            "obj-14::obj-37": [ "live.text[4]", "live.text", 0 ],
            "obj-21::obj-16": [ "sample-period", "sample-period", 0 ],
            "obj-21::obj-18": [ "zoom", "zoom", 0 ],
            "obj-23::obj-166": [ "speed[1]", "speed", 0 ],
            "obj-23::obj-22": [ "ogain[1]", "ogain", 0 ],
            "obj-23::obj-88": [ "start[1]", "start", 0 ],
            "obj-23::obj-92": [ "loop[1]", "loop", 0 ],
            "obj-25::obj-27": [ "conti", "conti", 0 ],
            "obj-25::obj-34": [ "live.toggle", "bypass", 0 ],
            "obj-25::obj-6": [ "live.text[1]", "live.text", 0 ],
            "obj-25::obj-8::obj-14": [ "threshold[1]", "threshold", 0 ],
            "obj-25::obj-8::obj-16": [ "bypass", "bypass", 0 ],
            "obj-25::obj-8::obj-27": [ "continuous", "continuous", 0 ],
            "obj-25::obj-8::obj-34": [ "maxMonitor[1]", "maxMonitor", 0 ],
            "obj-25::obj-8::obj-37": [ "minMonitor[1]", "minMonitor", 0 ],
            "obj-31::obj-2": [ "ogain[2]", "ogain", 0 ],
            "obj-33::obj-2": [ "ogain[3]", "ogain", 0 ],
            "obj-33::obj-20": [ "harmonicity[2]", "harmonicity", 0 ],
            "obj-33::obj-21": [ "carrier[2]", "carrier", 0 ],
            "obj-33::obj-24": [ "duration[2]", "duration", 1 ],
            "obj-33::obj-32": [ "index[2]", "index", 0 ],
            "obj-33::obj-33": [ "env", "env", 0 ],
            "obj-33::obj-42": [ "live.button[5]", "live.button", 0 ],
            "obj-33::obj-88": [ "ConstAmp[2]", "ConstAmp", 0 ],
            "obj-34::obj-2": [ "ogain[4]", "ogain", 0 ],
            "obj-34::obj-20": [ "harmonicity", "harmonicity", 0 ],
            "obj-34::obj-21": [ "carrier", "carrier", 0 ],
            "obj-34::obj-24": [ "duration", "duration", 1 ],
            "obj-34::obj-32": [ "index", "index", 0 ],
            "obj-34::obj-33": [ "env[1]", "env", 0 ],
            "obj-34::obj-42": [ "live.button[6]", "live.button", 0 ],
            "obj-34::obj-88": [ "ConstAmp", "ConstAmp", 0 ],
            "obj-3::obj-17": [ "live.text[3]", "live.text", 0 ],
            "obj-3::obj-4": [ "live.button", "live.button[1]", 0 ],
            "obj-3::obj-8::obj-14": [ "threshold", "threshold", 0 ],
            "obj-3::obj-8::obj-17": [ "minDuration", "minDuration", 0 ],
            "obj-3::obj-8::obj-27": [ "medianSize", "medianSize", 0 ],
            "obj-3::obj-8::obj-34": [ "maxMonitor", "maxMonitor", 0 ],
            "obj-3::obj-8::obj-37": [ "minMonitor", "minMonitor", 0 ],
            "obj-6::obj-195::obj-13": [ "minMonitor[3]", "minMonitor", 0 ],
            "obj-6::obj-195::obj-14": [ "maxMonitor[3]", "maxMonitor", 0 ],
            "obj-6::obj-195::obj-42": [ "frame-rate", "framerate", 0 ],
            "obj-6::obj-195::obj-82": [ "scalingFactor", "framerate", 0 ],
            "obj-6::obj-195::obj-86": [ "deltaSize", "maveragewindow", 0 ],
            "obj-6::obj-5": [ "live.text[28]", "live.text", 0 ],
            "obj-7::obj-195::obj-13": [ "minMonitor[4]", "minMonitor", 0 ],
            "obj-7::obj-195::obj-14": [ "maxMonitor[4]", "maxMonitor", 0 ],
            "obj-7::obj-37": [ "live.text[27]", "live.text", 0 ],
            "obj-9::obj-108": [ "12578-clock-type", "clock type", 0 ],
            "obj-9::obj-16": [ "12578-port", "port", 0 ],
            "obj-9::obj-179": [ "12578-sens-type", "sensor type", 0 ],
            "obj-9::obj-18::obj-105": [ "live.text[15]", "live.text", 0 ],
            "obj-9::obj-18::obj-110": [ "live.text[14]", "live.text", 0 ],
            "obj-9::obj-18::obj-121": [ "live.numbox[4]", "Amount", 0 ],
            "obj-9::obj-18::obj-20": [ "12578-port[1]", "port", 0 ],
            "obj-9::obj-18::obj-223": [ "live.numbox[3]", "live.numbox", 0 ],
            "obj-9::obj-18::obj-59": [ "live.numbox[5]", "live.numbox", 0 ],
            "obj-9::obj-18::obj-7": [ "live.numbox[2]", "live.numbox", 0 ],
            "obj-9::obj-18::obj-75": [ "live.numbox[6]", "live.numbox", 0 ],
            "obj-9::obj-18::obj-83": [ "live.toggle[4]", "live.toggle", 0 ],
            "obj-9::obj-25": [ "live.text[18]", "live.text", 0 ],
            "obj-9::obj-31": [ "live.button[3]", "live.button", 0 ],
            "obj-9::obj-47": [ "12578-enable", "enable", 1 ],
            "obj-9::obj-50": [ "12578-frameperiod", "frame period", 0 ],
            "obj-9::obj-56": [ "live.text[17]", "live.text", 0 ],
            "obj-9::obj-58": [ "live.text[2]", "live.text[3]", 0 ],
            "obj-9::obj-59": [ "live.numbox[1]", "id", 0 ],
            "obj-9::obj-60": [ "live.text[16]", "live.text[3]", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "parameter_overrides": {
                "obj-14::obj-195::obj-13": {
                    "parameter_longname": "minMonitor[2]"
                },
                "obj-14::obj-195::obj-14": {
                    "parameter_longname": "maxMonitor[2]"
                },
                "obj-14::obj-37": {
                    "parameter_longname": "live.text[4]"
                },
                "obj-23::obj-166": {
                    "parameter_longname": "speed[1]"
                },
                "obj-23::obj-22": {
                    "parameter_longname": "ogain[1]"
                },
                "obj-23::obj-88": {
                    "parameter_longname": "start[1]"
                },
                "obj-23::obj-92": {
                    "parameter_longname": "loop[1]"
                },
                "obj-25::obj-6": {
                    "parameter_longname": "live.text[1]"
                },
                "obj-25::obj-8::obj-14": {
                    "parameter_longname": "threshold[1]"
                },
                "obj-25::obj-8::obj-34": {
                    "parameter_longname": "maxMonitor[1]"
                },
                "obj-25::obj-8::obj-37": {
                    "parameter_longname": "minMonitor[1]"
                },
                "obj-31::obj-2": {
                    "parameter_longname": "ogain[2]"
                },
                "obj-33::obj-2": {
                    "parameter_longname": "ogain[3]"
                },
                "obj-33::obj-20": {
                    "parameter_longname": "harmonicity[2]"
                },
                "obj-33::obj-21": {
                    "parameter_longname": "carrier[2]"
                },
                "obj-33::obj-24": {
                    "parameter_longname": "duration[2]"
                },
                "obj-33::obj-32": {
                    "parameter_longname": "index[2]"
                },
                "obj-33::obj-42": {
                    "parameter_longname": "live.button[5]"
                },
                "obj-33::obj-88": {
                    "parameter_longname": "ConstAmp[2]"
                },
                "obj-34::obj-2": {
                    "parameter_longname": "ogain[4]"
                },
                "obj-34::obj-42": {
                    "parameter_longname": "live.button[6]"
                },
                "obj-3::obj-17": {
                    "parameter_longname": "live.text[3]"
                },
                "obj-3::obj-4": {
                    "parameter_longname": "live.button"
                },
                "obj-6::obj-195::obj-13": {
                    "parameter_longname": "minMonitor[3]"
                },
                "obj-6::obj-195::obj-14": {
                    "parameter_longname": "maxMonitor[3]"
                },
                "obj-7::obj-195::obj-13": {
                    "parameter_longname": "minMonitor[4]"
                },
                "obj-7::obj-195::obj-14": {
                    "parameter_longname": "maxMonitor[4]"
                },
                "obj-9::obj-108": {
                    "parameter_longname": "12578-clock-type"
                },
                "obj-9::obj-16": {
                    "parameter_longname": "12578-port"
                },
                "obj-9::obj-179": {
                    "parameter_longname": "12578-sens-type"
                },
                "obj-9::obj-18::obj-20": {
                    "parameter_longname": "12578-port[1]"
                },
                "obj-9::obj-47": {
                    "parameter_longname": "12578-enable"
                },
                "obj-9::obj-50": {
                    "parameter_longname": "12578-frameperiod"
                },
                "obj-9::obj-59": {
                    "parameter_longname": "live.numbox[1]"
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0,
        "toolbaradditions": [ "s2n", "Modalys", "Gestural-Sound-Toolkit" ]
    }
}