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
        "rect": [ 113.0, 101.0, 1510.0, 982.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-34",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1300.371223449707, 27.975730895996094, 24.0, 24.0 ]
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
                    "bgcolor": [ 0.823529, 0.823529, 0.823529, 0.0 ],
                    "bgmode": 2,
                    "border": 1,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-31",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "synth.scratch.samples.maxpat",
                    "numinlets": 5,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 306.0, 694.0, 240.79486083984375, 145.89173889160156 ],
                    "varname": "synth.scratch.samples",
                    "viewvisibility": 1
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
                    "name": "gst.norm.maxpat",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "", "" ],
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
                    "patching_rect": [ 1156.371223449707, 61.975730895996094, 163.0, 132.56695556640625 ],
                    "varname": "in.comote",
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
                    "patching_rect": [ 984.865608215332, 61.975730895996094, 163.0, 132.56695556640625 ],
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
                    "numoutlets": 2,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "", "" ],
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
                    "numoutlets": 5,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "float", "float", "float", "float", "float" ],
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
                    "bgcolor": [ 0.823529, 0.823529, 0.823529, 0.0 ],
                    "bgmode": 2,
                    "border": 1,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-40",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "synth.FM.maxpat",
                    "numinlets": 7,
                    "numoutlets": 4,
                    "offset": [ -6.0, -7.0 ],
                    "outlettype": [ "multichannelsignal", "", "", "" ],
                    "patching_rect": [ 662.0, 680.0, 261.0, 152.0 ],
                    "varname": "synth.FM",
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
                    "name": "gst.gate.float.maxpat",
                    "numinlets": 4,
                    "numoutlets": 3,
                    "offset": [ 1.0, -4.0 ],
                    "outlettype": [ "", "", "int" ],
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
                    "patching_rect": [ 497.7554473876953, 873.0, 182.97576904296875, 86.09903717041016 ],
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
                    "id": "obj-3",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.kick.maxpat",
                    "numinlets": 5,
                    "numoutlets": 4,
                    "offset": [ 0.0, -5.0 ],
                    "outlettype": [ "", "", "int", "" ],
                    "patching_rect": [ 805.634391784668, 460.0, 133.73121643066406, 116.319091796875 ],
                    "varname": "gst.kick",
                    "viewvisibility": 1
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "source": [ "obj-12", 0 ]
                }
            },
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
                    "midpoints": [ 994.365608215332, 428.6580810546875, 594.7437388102213, 428.6580810546875 ],
                    "order": 1,
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 0 ],
                    "midpoints": [ 994.365608215332, 428.6580810546875, 556.5, 428.6580810546875 ],
                    "order": 2,
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "midpoints": [ 994.365608215332, 445.09576416015625, 815.134391784668, 445.09576416015625 ],
                    "order": 3,
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
                    "destination": [ "obj-40", 0 ],
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
                    "destination": [ "obj-40", 0 ],
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "source": [ "obj-25", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
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
                    "source": [ "obj-3", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 4 ],
                    "source": [ "obj-30", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "source": [ "obj-31", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 0 ],
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 5 ],
                    "order": 1,
                    "source": [ "obj-34", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 4 ],
                    "order": 0,
                    "source": [ "obj-34", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 1 ],
                    "order": 0,
                    "source": [ "obj-40", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "order": 1,
                    "source": [ "obj-40", 0 ]
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
                    "source": [ "obj-6", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 1 ],
                    "midpoints": [ 258.0, 439.546630859375, 594.7437388102213, 439.546630859375 ],
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
            }
        ],
        "parameters": {
            "obj-12::obj-33::obj-12": [ "port", "port", 0 ],
            "obj-12::obj-33::obj-164": [ "format", "format", 0 ],
            "obj-12::obj-33::obj-20": [ "host-ip", "host-ip", 0 ],
            "obj-12::obj-33::obj-32": [ "id", "id", 0 ],
            "obj-12::obj-33::obj-43": [ "sample-period[1]", "sample-period", 0 ],
            "obj-12::obj-47": [ "live.text[5]", "live.text", 0 ],
            "obj-12::obj-55": [ "live.text", "live.text", 0 ],
            "obj-12::obj-56": [ "live.text[6]", "live.text", 0 ],
            "obj-12::obj-60": [ "live.text[7]", "live.text[3]", 0 ],
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
            "obj-23::obj-9": [ "6915-id-clock", "6391-id-clock", 0 ],
            "obj-25::obj-6": [ "live.text[1]", "live.text", 0 ],
            "obj-25::obj-8::obj-14": [ "threshold[1]", "threshold", 0 ],
            "obj-25::obj-8::obj-34": [ "maxMonitor[1]", "maxMonitor", 0 ],
            "obj-25::obj-8::obj-37": [ "minMonitor[1]", "minMonitor", 0 ],
            "obj-26::obj-2": [ "live.gain~[5]", "ogain", 0 ],
            "obj-31::obj-166": [ "speed", "speed", 0 ],
            "obj-31::obj-22": [ "live.gain~[11]", "ogain", 0 ],
            "obj-31::obj-88": [ "start", "start", 0 ],
            "obj-31::obj-92": [ "loop", "loop", 0 ],
            "obj-3::obj-17": [ "live.text[3]", "live.text", 0 ],
            "obj-3::obj-4": [ "live.button", "live.button[1]", 0 ],
            "obj-3::obj-8::obj-14": [ "threshold", "threshold", 0 ],
            "obj-3::obj-8::obj-17": [ "minDuration", "threshold", 0 ],
            "obj-3::obj-8::obj-27": [ "medianSize", "maveragewindow", 0 ],
            "obj-3::obj-8::obj-34": [ "maxMonitor", "maxMonitor", 0 ],
            "obj-3::obj-8::obj-37": [ "minMonitor", "minMonitor", 0 ],
            "obj-40::obj-2": [ "live.gain~[1]", "ogain", 0 ],
            "obj-40::obj-20": [ "harmonicity", "harmonicity", 0 ],
            "obj-40::obj-21": [ "carrier", "carrier", 0 ],
            "obj-40::obj-24": [ "duration", "duration", 0 ],
            "obj-40::obj-32": [ "index", "index", 0 ],
            "obj-40::obj-42": [ "live.button[1]", "live.button", 0 ],
            "obj-40::obj-88": [ "ConstAmp", "ConstAmp", 0 ],
            "obj-6::obj-195::obj-13": [ "minMonitor[3]", "minMonitor", 0 ],
            "obj-6::obj-195::obj-14": [ "maxMonitor[3]", "maxMonitor", 0 ],
            "obj-6::obj-195::obj-42": [ "frame-rate", "framerate", 0 ],
            "obj-6::obj-195::obj-82": [ "scalingFactor", "framerate", 0 ],
            "obj-6::obj-195::obj-86": [ "deltaSize", "maveragewindow", 0 ],
            "obj-6::obj-5": [ "live.text[28]", "live.text", 0 ],
            "obj-7::obj-195::obj-13": [ "minMonitor[4]", "minMonitor", 0 ],
            "obj-7::obj-195::obj-14": [ "maxMonitor[4]", "maxMonitor", 0 ],
            "obj-7::obj-37": [ "live.text[27]", "live.text", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "parameter_overrides": {
                "obj-12::obj-47": {
                    "parameter_longname": "live.text[5]"
                },
                "obj-12::obj-55": {
                    "parameter_longname": "live.text"
                },
                "obj-12::obj-56": {
                    "parameter_longname": "live.text[6]"
                },
                "obj-12::obj-60": {
                    "parameter_longname": "live.text[7]"
                },
                "obj-14::obj-195::obj-13": {
                    "parameter_longname": "minMonitor[2]"
                },
                "obj-14::obj-195::obj-14": {
                    "parameter_longname": "maxMonitor[2]"
                },
                "obj-14::obj-37": {
                    "parameter_longname": "live.text[4]"
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
                "obj-26::obj-2": {
                    "parameter_longname": "live.gain~[5]"
                },
                "obj-31::obj-22": {
                    "parameter_longname": "live.gain~[11]"
                },
                "obj-3::obj-4": {
                    "parameter_longname": "live.button"
                },
                "obj-40::obj-2": {
                    "parameter_longname": "live.gain~[1]"
                },
                "obj-40::obj-42": {
                    "parameter_longname": "live.button[1]"
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
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0,
        "toolbaradditions": [ "s2n", "Modalys" ]
    }
}