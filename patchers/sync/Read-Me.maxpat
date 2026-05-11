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
        "rect": [ 34.0, 93.0, 2091.0, 1130.0 ],
        "boxes": [
            {
                "box": {
                    "bgmode": 0,
                    "border": 1,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-26",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.norm.multi.maxpat",
                    "numinlets": 5,
                    "numoutlets": 2,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 415.75, 260.0, 160.0, 128.0 ],
                    "varname": "gst.scale.norm[1]",
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
                    "id": "obj-27",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.norm.single.maxpat",
                    "numinlets": 5,
                    "numoutlets": 2,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 1118.0, 483.0, 161.0, 133.0 ],
                    "varname": "gst.norm.single",
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
                    "id": "obj-15",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.gate.maxpat",
                    "numinlets": 4,
                    "numoutlets": 2,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "", "int" ],
                    "patching_rect": [ 573.0, 957.0, 128.0, 116.0 ],
                    "varname": "gst.gate",
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
                    "id": "obj-59",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "sn.1euro.maxpat",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 415.75, 404.0, 132.0, 113.0 ],
                    "varname": "sn.1euro[5]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-58",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 636.5, 653.0, 398.0, 22.0 ],
                    "text": "52.841236 -146.591309 120.278259"
                }
            },
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
                    "name": "gst.norm.multi.maxpat",
                    "numinlets": 5,
                    "numoutlets": 2,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 139.0, 260.0, 160.0, 128.0 ],
                    "varname": "gst.scale.norm",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "fontsize": 8.0,
                    "id": "obj-19",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1475.0, 248.0, 29.0, 17.0 ],
                    "text": "thru"
                }
            },
            {
                "box": {
                    "fontsize": 8.0,
                    "id": "obj-17",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1395.6, 248.0, 49.0, 17.0 ],
                    "text": "loadmess 1"
                }
            },
            {
                "box": {
                    "id": "obj-51",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 699.0, 531.0, 398.0, 22.0 ],
                    "text": "-0.900053 0.291694 -0.036593"
                }
            },
            {
                "box": {
                    "id": "obj-50",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 998.0, 224.0, 75.0, 22.0 ],
                    "text": "windresize 1"
                }
            },
            {
                "box": {
                    "fontsize": 8.0,
                    "id": "obj-37",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1475.0, 187.0, 126.0, 17.0 ],
                    "text": "loadmess readall overview.mubu"
                }
            },
            {
                "box": {
                    "fontsize": 8.0,
                    "id": "obj-40",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1510.0, 248.0, 39.0, 17.0 ],
                    "text": "deferlow"
                }
            },
            {
                "box": {
                    "fontsize": 8.0,
                    "id": "obj-44",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1510.0, 227.0, 121.0, 17.0 ],
                    "text": "loadmess resizetowindowrect 4"
                }
            },
            {
                "box": {
                    "fontsize": 8.0,
                    "id": "obj-46",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1493.0, 206.0, 90.0, 17.0 ],
                    "text": "loadmess windresize 1"
                }
            },
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
                    "name": "gst.regression.xmm.maxpat",
                    "numinlets": 9,
                    "numoutlets": 3,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 1645.0, 621.0, 295.4642813205719, 176.07141612599946 ],
                    "varname": "gst.regression.xmm",
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
                    "id": "obj-20",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.regression.gmr.maxpat",
                    "numinlets": 9,
                    "numoutlets": 3,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 1347.0, 621.0, 293.4642813205719, 176.07141612599946 ],
                    "varname": "gst.regression.gmr",
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
                    "id": "obj-34",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.classification.hhmm.maxpat",
                    "numinlets": 8,
                    "numoutlets": 3,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 1041.0, 814.0, 304.0, 184.0 ],
                    "varname": "gst.classification.hhmm",
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
                    "id": "obj-43",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.classification.gmm.maxpat",
                    "numinlets": 8,
                    "numoutlets": 2,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 1347.0, 814.0, 299.0, 184.0 ],
                    "varname": "gst.classification.gmm",
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
                    "id": "obj-42",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.movingaverage.maxpat",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 1184.0, 692.0, 128.0, 111.0 ],
                    "varname": "gst.movingaverage",
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
                    "name": "gst.norm.maxpat",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 882.0, 814.0, 128.0, 111.0 ],
                    "varname": "gst.norm",
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
                    "id": "obj-39",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.kick.maxpat",
                    "numinlets": 5,
                    "numoutlets": 3,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "float", "int", "" ],
                    "patching_rect": [ 1041.0, 692.0, 123.918452501297, 111.0 ],
                    "varname": "gst.kick",
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
                    "id": "obj-36",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.lowpass.maxpat",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 748.0, 814.0, 127.0, 111.0 ],
                    "varname": "gst.lowpass[1]",
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
                    "id": "obj-28",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "sn.1euro.maxpat",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 280.0, 404.0, 132.0, 113.0 ],
                    "varname": "sn.1euro[3]",
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
                    "id": "obj-13",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.orientation.maxpat",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 139.0, 539.0, 128.0, 111.0 ],
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
                    "id": "obj-32",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.highpass.maxpat",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 437.0, 957.0, 132.0, 111.0 ],
                    "varname": "gst.highpass",
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
                    "name": "gst.lowpass.maxpat",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 303.0, 957.0, 128.0, 111.0 ],
                    "varname": "gst.lowpass",
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
                    "id": "obj-30",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.bandpass.maxpat",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 321.0, 814.0, 131.0, 112.0 ],
                    "varname": "gst.bandpass",
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
                    "id": "obj-29",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.derivative.maxpat",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 167.0, 957.0, 128.0, 111.0 ],
                    "varname": "gst.derivative",
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
                    "id": "obj-24",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.angles.maxpat",
                    "numinlets": 3,
                    "numoutlets": 4,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 606.0, 814.0, 128.0, 111.0 ],
                    "varname": "gst.angles[1]",
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
                    "name": "gst.angles_az.maxpat",
                    "numinlets": 3,
                    "numoutlets": 4,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 468.0, 814.0, 128.0, 111.0 ],
                    "varname": "gst.angles",
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
                    "name": "sn.1euro.maxpat",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 26.0, 689.0, 132.0, 113.0 ],
                    "varname": "sn.1euro[2]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.65045, 0.65045, 0.65045, 0.0 ],
                    "bgmode": 1,
                    "border": 1,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-48",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.recorddata.maxpat",
                    "numinlets": 6,
                    "numoutlets": 3,
                    "offset": [ -2.0, -4.0 ],
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 1078.0, 276.0, 416.0, 165.0 ],
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
                    "name": "sn.1euro.maxpat",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 139.0, 404.0, 132.0, 113.0 ],
                    "varname": "sn.1euro[1]",
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
                    "patching_rect": [ 644.5, 341.0, 77.0, 22.0 ],
                    "text": "clientwindow"
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 644.5, 381.0, 73.0, 22.0 ],
                    "saved_object_attributes": {
                        "client_rect": [ 1886, 93, 2275, 380 ],
                        "parameter_enable": 0,
                        "parameter_mappable": 0,
                        "storage_rect": [ 583, 69, 1034, 197 ]
                    },
                    "text": "pattrstorage",
                    "varname": "u915007410"
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 1,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-5",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.acc.intensity.maxpat",
                    "numinlets": 4,
                    "numoutlets": 4,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "float", "float", "float", "float" ],
                    "patching_rect": [ 167.0, 693.0, 132.0, 109.0 ],
                    "varname": "gst.acc.intensity",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 814.0, 276.0, 43.0, 22.0 ],
                    "text": "print fr"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 744.0, 248.0, 158.0, 22.0 ],
                    "text": "route frameperiod framerate"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 744.0, 276.0, 45.0, 22.0 ],
                    "text": "print fp"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 923.0, 116.0, 135.0, 22.0 ],
                    "text": "print master.clock-mess"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 923.0, 79.0, 95.0, 22.0 ],
                    "text": "r gst.clock-mess"
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
                    "name": "gst.riot-comote.maxpat",
                    "numinlets": 4,
                    "numoutlets": 5,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "", "", "", "", "" ],
                    "patching_rect": [ 163.0, 79.0, 342.0, 146.0 ],
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
                    "id": "obj-6",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.clock.maxpat",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "offset": [ 0.0, 0.0 ],
                    "patching_rect": [ 34.0, 79.0, 90.0, 96.0 ],
                    "varname": "gst.clock",
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
                    "id": "obj-11",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.riot.maxpat",
                    "numinlets": 4,
                    "numoutlets": 5,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "", "", "", "", "" ],
                    "patching_rect": [ 512.0, 79.0, 342.0, 146.0 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 159.0, 48.0, 371.0, 20.0 ],
                    "text": "seulement si gst.clock avec message resync tout le monde asservi"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 159.0, 15.0, 371.0, 20.0 ],
                    "text": "si récepteur en int autonome"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-23", 0 ],
                    "order": 2,
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-24", 0 ],
                    "order": 1,
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-36", 0 ],
                    "order": 0,
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-58", 1 ],
                    "source": [ "obj-13", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-48", 4 ],
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 0 ],
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-48", 5 ],
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "source": [ "obj-2", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "disabled": 1,
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "order": 1,
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "order": 0,
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-59", 0 ],
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 1 ],
                    "source": [ "obj-28", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 1 ],
                    "order": 0,
                    "source": [ "obj-29", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "order": 1,
                    "source": [ "obj-29", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "source": [ "obj-37", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "source": [ "obj-40", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "source": [ "obj-44", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "source": [ "obj-46", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-27", 1 ],
                    "order": 1,
                    "source": [ "obj-48", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-27", 0 ],
                    "order": 2,
                    "source": [ "obj-48", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-51", 1 ],
                    "order": 0,
                    "source": [ "obj-48", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 1 ],
                    "order": 0,
                    "source": [ "obj-48", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "order": 1,
                    "source": [ "obj-48", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "order": 3,
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-30", 0 ],
                    "order": 2,
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 0 ],
                    "order": 1,
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-32", 0 ],
                    "order": 0,
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 0 ],
                    "order": 1,
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-28", 0 ],
                    "source": [ "obj-7", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-41", 0 ],
                    "order": 0,
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "source": [ "obj-8", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "source": [ "obj-8", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-11::obj-108": [ "1136-clock-type", "clock type", 0 ],
            "obj-11::obj-16": [ "1136-port", "port", 0 ],
            "obj-11::obj-179": [ "1136-sens-type", "sensor type", 0 ],
            "obj-11::obj-18::obj-105": [ "live.text[12]", "live.text", 0 ],
            "obj-11::obj-18::obj-110": [ "live.text[13]", "live.text", 0 ],
            "obj-11::obj-18::obj-121": [ "live.numbox[4]", "Amount", 0 ],
            "obj-11::obj-18::obj-20": [ "2644-port[1]", "port", 0 ],
            "obj-11::obj-18::obj-223": [ "live.numbox", "live.numbox", 0 ],
            "obj-11::obj-18::obj-59": [ "live.numbox[5]", "live.numbox", 0 ],
            "obj-11::obj-18::obj-7": [ "live.numbox[2]", "live.numbox", 0 ],
            "obj-11::obj-18::obj-75": [ "live.numbox[3]", "live.numbox", 0 ],
            "obj-11::obj-18::obj-83": [ "live.toggle", "live.toggle", 0 ],
            "obj-11::obj-25": [ "live.text[11]", "live.text", 0 ],
            "obj-11::obj-31": [ "live.button", "live.button", 0 ],
            "obj-11::obj-47": [ "1136-enable", "enable", 1 ],
            "obj-11::obj-50": [ "1136-frameperiod", "frame period", 0 ],
            "obj-11::obj-56": [ "live.text[10]", "live.text", 0 ],
            "obj-11::obj-58": [ "live.text[2]", "live.text[3]", 0 ],
            "obj-11::obj-59": [ "live.numbox[1]", "live.numbox", 0 ],
            "obj-13::obj-11": [ "live.text[31]", "live.text", 0 ],
            "obj-13::obj-5::obj-17": [ "1043-sens-type", "sensor type", 0 ],
            "obj-13::obj-5::obj-179": [ "1043-sens-type[1]", "sensor type", 0 ],
            "obj-13::obj-5::obj-34": [ "maxMonitor[12]", "maxMonitor", 0 ],
            "obj-13::obj-5::obj-37": [ "minMonitor[12]", "minMonitor", 0 ],
            "obj-13::obj-5::obj-42": [ "frame-rate[4]", "framerate", 0 ],
            "obj-13::obj-5::obj-48": [ "gyroweight", "maveragewindow", 0 ],
            "obj-15::obj-27": [ "conti", "conti", 0 ],
            "obj-15::obj-6": [ "live.text[76]", "live.text", 0 ],
            "obj-15::obj-8::obj-14": [ "threshold", "threshold", 0 ],
            "obj-15::obj-8::obj-27": [ "continuous", "continuous", 0 ],
            "obj-15::obj-8::obj-34": [ "maxMonitor[22]", "maxMonitor", 0 ],
            "obj-15::obj-8::obj-37": [ "minMonitor[22]", "minMonitor", 0 ],
            "obj-20::obj-11": [ "total[2]", "total", 0 ],
            "obj-20::obj-29": [ "regularization[2]", "regularization", 0 ],
            "obj-20::obj-59": [ "live.text[60]", "live.text", 0 ],
            "obj-20::obj-64": [ "live.text[59]", "live.text", 0 ],
            "obj-20::obj-66": [ "live.text[58]", "live.text", 0 ],
            "obj-20::obj-7": [ "auto+[2]", "auto+", 0 ],
            "obj-20::obj-70": [ "live.text[57]", "live.text", 0 ],
            "obj-20::obj-73": [ "live.toggle[13]", "live.toggle", 0 ],
            "obj-20::obj-74": [ "label[2]", "label", 0 ],
            "obj-21::obj-34": [ "live.toggle[3]", "bypass", 0 ],
            "obj-21::obj-37": [ "live.text[20]", "live.text", 0 ],
            "obj-21::obj-5::obj-15": [ "framerate[1]", "framerate", 0 ],
            "obj-21::obj-5::obj-32": [ "maxMonitor[2]", "maxMonitor", 0 ],
            "obj-21::obj-5::obj-33": [ "minMonitor[2]", "minMonitor", 0 ],
            "obj-21::obj-5::obj-39": [ "bypass[1]", "bypass", 0 ],
            "obj-21::obj-5::obj-42": [ "fcmin[1]", "fcmin", 0 ],
            "obj-21::obj-5::obj-82": [ "beta[1]", "beta", 0 ],
            "obj-22::obj-34": [ "live.toggle[4]", "bypass", 0 ],
            "obj-22::obj-37": [ "live.text[24]", "live.text", 0 ],
            "obj-22::obj-5::obj-15": [ "framerate[3]", "framerate", 0 ],
            "obj-22::obj-5::obj-32": [ "maxMonitor[5]", "maxMonitor", 0 ],
            "obj-22::obj-5::obj-33": [ "minMonitor[5]", "minMonitor", 0 ],
            "obj-22::obj-5::obj-39": [ "bypass[2]", "bypass", 0 ],
            "obj-22::obj-5::obj-42": [ "fcmin[2]", "fcmin", 0 ],
            "obj-22::obj-5::obj-82": [ "beta[2]", "beta", 0 ],
            "obj-23::obj-5::obj-34": [ "maxMonitor[6]", "maxMonitor", 0 ],
            "obj-23::obj-5::obj-37": [ "minMonitor[6]", "minMonitor", 0 ],
            "obj-23::obj-5::obj-48": [ "order", "order", 0 ],
            "obj-23::obj-7": [ "live.text[27]", "live.text", 0 ],
            "obj-24::obj-5::obj-34": [ "maxMonitor[7]", "maxMonitor", 0 ],
            "obj-24::obj-5::obj-37": [ "minMonitor[7]", "minMonitor", 0 ],
            "obj-24::obj-5::obj-48": [ "order[1]", "order", 0 ],
            "obj-24::obj-7": [ "live.text[25]", "live.text", 0 ],
            "obj-26::obj-10::obj-32": [ "0-SclMin[3]", "SclMin-NB", 0 ],
            "obj-26::obj-10::obj-33": [ "0-SclMax[3]", "SclMax-NB", 0 ],
            "obj-26::obj-12::obj-32": [ "0-SclMin[2]", "SclMin-NB", 0 ],
            "obj-26::obj-12::obj-33": [ "0-SclMax[2]", "SclMax-NB", 0 ],
            "obj-26::obj-195::obj-13": [ "minMonitor[17]", "minMonitor", 0 ],
            "obj-26::obj-195::obj-14": [ "maxMonitor[17]", "maxMonitor", 0 ],
            "obj-26::obj-195::obj-39": [ "bypass[5]", "bypass", 0 ],
            "obj-26::obj-195::obj-50": [ "live.text[9]", "live.text", 0 ],
            "obj-26::obj-195::obj-59": [ "live.text[8]", "live.text", 0 ],
            "obj-26::obj-195::obj-62": [ "live.text[100]", "live.text", 0 ],
            "obj-26::obj-195::obj-68": [ "live.text[101]", "live.text", 0 ],
            "obj-26::obj-28": [ "live.text[110]", "live.text", 0 ],
            "obj-26::obj-29": [ "live.text[109]", "live.text", 0 ],
            "obj-26::obj-31": [ "live.text[105]", "live.text", 0 ],
            "obj-26::obj-33": [ "live.text[103]", "live.text", 0 ],
            "obj-26::obj-34": [ "live.toggle[18]", "bypass", 0 ],
            "obj-26::obj-37": [ "live.text[107]", "live.text", 0 ],
            "obj-26::obj-50": [ "live.text[102]", "live.text", 0 ],
            "obj-26::obj-59": [ "live.text[108]", "live.text", 0 ],
            "obj-26::obj-62": [ "live.text[106]", "live.text", 0 ],
            "obj-26::obj-68": [ "live.text[104]", "live.text", 0 ],
            "obj-27::obj-10::obj-32": [ "0-SclMin[8]", "SclMin-NB", 0 ],
            "obj-27::obj-10::obj-33": [ "0-SclMax[9]", "SclMax-NB", 0 ],
            "obj-27::obj-10::obj-58": [ "0-SclMax[7]", "SclMax-NB", 0 ],
            "obj-27::obj-10::obj-61": [ "0-SclMin[9]", "SclMin-NB", 0 ],
            "obj-27::obj-10::obj-69": [ "0-SclMax[8]", "SclMax-NB", 0 ],
            "obj-27::obj-10::obj-70": [ "0-SclMin[7]", "SclMin-NB", 0 ],
            "obj-27::obj-12::obj-32": [ "0-SclMin[5]", "SclMin-NB", 0 ],
            "obj-27::obj-12::obj-33": [ "0-SclMax[5]", "SclMax-NB", 0 ],
            "obj-27::obj-12::obj-58": [ "0-SclMax[4]", "SclMax-NB", 0 ],
            "obj-27::obj-12::obj-61": [ "0-SclMin[4]", "SclMin-NB", 0 ],
            "obj-27::obj-12::obj-69": [ "0-SclMax[6]", "SclMax-NB", 0 ],
            "obj-27::obj-12::obj-70": [ "0-SclMin[6]", "SclMin-NB", 0 ],
            "obj-27::obj-195::obj-13": [ "minMonitor[23]", "minMonitor", 0 ],
            "obj-27::obj-195::obj-14": [ "maxMonitor[23]", "maxMonitor", 0 ],
            "obj-27::obj-195::obj-39": [ "bypass", "bypass", 0 ],
            "obj-27::obj-195::obj-50": [ "live.text[90]", "live.text", 0 ],
            "obj-27::obj-195::obj-59": [ "live.text[85]", "live.text", 0 ],
            "obj-27::obj-195::obj-62": [ "live.text[89]", "live.text", 0 ],
            "obj-27::obj-195::obj-68": [ "live.text[88]", "live.text", 0 ],
            "obj-27::obj-28": [ "live.text[99]", "live.text", 0 ],
            "obj-27::obj-29": [ "live.text[93]", "live.text", 0 ],
            "obj-27::obj-31": [ "live.text[97]", "live.text", 0 ],
            "obj-27::obj-33": [ "live.text[96]", "live.text", 0 ],
            "obj-27::obj-34": [ "live.toggle[17]", "bypass", 0 ],
            "obj-27::obj-37": [ "live.text[95]", "live.text", 0 ],
            "obj-27::obj-50": [ "live.text[92]", "live.text", 0 ],
            "obj-27::obj-59": [ "live.text[94]", "live.text", 0 ],
            "obj-27::obj-62": [ "live.text[98]", "live.text", 0 ],
            "obj-27::obj-68": [ "live.text[91]", "live.text", 0 ],
            "obj-28::obj-34": [ "live.toggle[9]", "bypass", 0 ],
            "obj-28::obj-37": [ "live.text[33]", "live.text", 0 ],
            "obj-28::obj-5::obj-15": [ "framerate[4]", "framerate", 0 ],
            "obj-28::obj-5::obj-32": [ "maxMonitor[14]", "maxMonitor", 0 ],
            "obj-28::obj-5::obj-33": [ "minMonitor[14]", "minMonitor", 0 ],
            "obj-28::obj-5::obj-39": [ "bypass[4]", "bypass", 0 ],
            "obj-28::obj-5::obj-42": [ "fcmin[3]", "fcmin", 0 ],
            "obj-28::obj-5::obj-82": [ "beta[3]", "beta", 0 ],
            "obj-29::obj-195::obj-13": [ "minMonitor[9]", "minMonitor", 0 ],
            "obj-29::obj-195::obj-14": [ "maxMonitor[9]", "maxMonitor", 0 ],
            "obj-29::obj-195::obj-42": [ "frame-rate[1]", "framerate", 0 ],
            "obj-29::obj-195::obj-82": [ "scalingFactor", "framerate", 0 ],
            "obj-29::obj-195::obj-86": [ "deltaSize", "maveragewindow", 0 ],
            "obj-29::obj-5": [ "live.text[29]", "live.text", 0 ],
            "obj-2::obj-108": [ "1259-clock-type", "clock type", 0 ],
            "obj-2::obj-16": [ "1259-port", "port", 0 ],
            "obj-2::obj-179": [ "1259-sens-type", "sensor type", 0 ],
            "obj-2::obj-18::obj-105": [ "live.text[3]", "live.text", 0 ],
            "obj-2::obj-18::obj-110": [ "live.text[4]", "live.text", 0 ],
            "obj-2::obj-18::obj-121": [ "live.numbox[10]", "Amount", 0 ],
            "obj-2::obj-18::obj-20": [ "2596-port[1]", "port", 0 ],
            "obj-2::obj-18::obj-223": [ "live.numbox[7]", "live.numbox", 0 ],
            "obj-2::obj-18::obj-59": [ "live.numbox[9]", "live.numbox", 0 ],
            "obj-2::obj-18::obj-7": [ "live.numbox[6]", "live.numbox", 0 ],
            "obj-2::obj-18::obj-75": [ "live.numbox[8]", "live.numbox", 0 ],
            "obj-2::obj-18::obj-83": [ "live.toggle[1]", "live.toggle", 0 ],
            "obj-2::obj-25": [ "live.text[5]", "live.text", 0 ],
            "obj-2::obj-31": [ "live.button[1]", "live.button", 0 ],
            "obj-2::obj-47": [ "1259-enable", "enable", 1 ],
            "obj-2::obj-50": [ "1259-frameperiod", "frame period", 0 ],
            "obj-2::obj-56": [ "live.text[16]", "live.text", 0 ],
            "obj-2::obj-58": [ "live.text[14]", "live.text[3]", 0 ],
            "obj-2::obj-59": [ "live.numbox[11]", "live.numbox", 0 ],
            "obj-2::obj-60": [ "live.text[15]", "live.text[3]", 0 ],
            "obj-30::obj-195::obj-125": [ "Q", "Q", 0 ],
            "obj-30::obj-195::obj-13": [ "minMonitor[8]", "minMonitor", 0 ],
            "obj-30::obj-195::obj-14": [ "maxMonitor[8]", "maxMonitor", 0 ],
            "obj-30::obj-195::obj-42": [ "frame-rate", "framerate", 0 ],
            "obj-30::obj-195::obj-82": [ "cut-frequency", "fcut", 0 ],
            "obj-30::obj-195::obj-86": [ "gain", "gain", 0 ],
            "obj-30::obj-37": [ "live.text[28]", "live.text", 0 ],
            "obj-31::obj-195::obj-125": [ "comp-exp", "Q", 0 ],
            "obj-31::obj-195::obj-13": [ "minMonitor[10]", "minMonitor", 0 ],
            "obj-31::obj-195::obj-14": [ "maxMonitor[10]", "maxMonitor", 0 ],
            "obj-31::obj-195::obj-42": [ "frame-rate[2]", "framerate", 0 ],
            "obj-31::obj-195::obj-82": [ "cut-frequency[1]", "fcut", 0 ],
            "obj-31::obj-195::obj-86": [ "gain[1]", "gain", 0 ],
            "obj-31::obj-37": [ "live.text[30]", "live.text", 0 ],
            "obj-32::obj-195::obj-125": [ "comp-exp[1]", "Q", 0 ],
            "obj-32::obj-195::obj-13": [ "minMonitor[11]", "minMonitor", 0 ],
            "obj-32::obj-195::obj-14": [ "maxMonitor[11]", "maxMonitor", 0 ],
            "obj-32::obj-195::obj-42": [ "frame-rate[3]", "framerate", 0 ],
            "obj-32::obj-195::obj-82": [ "cut-frequency[2]", "fcut", 0 ],
            "obj-32::obj-195::obj-86": [ "gain[2]", "gain", 0 ],
            "obj-32::obj-37": [ "live.text[22]", "live.text", 0 ],
            "obj-34::obj-11": [ "total[1]", "total", 0 ],
            "obj-34::obj-29": [ "regularization[1]", "regularization", 0 ],
            "obj-34::obj-39": [ "label[1]", "label", 0 ],
            "obj-34::obj-59": [ "live.text[53]", "live.text", 0 ],
            "obj-34::obj-64": [ "live.text[56]", "live.text", 0 ],
            "obj-34::obj-66": [ "live.text[55]", "live.text", 0 ],
            "obj-34::obj-7": [ "auto+[1]", "auto+", 0 ],
            "obj-34::obj-70": [ "live.text[54]", "live.text", 0 ],
            "obj-34::obj-73": [ "live.toggle[12]", "live.toggle", 0 ],
            "obj-35::obj-11": [ "total[3]", "total", 0 ],
            "obj-35::obj-29": [ "regularization[3]", "regularization", 0 ],
            "obj-35::obj-53": [ "label[3]", "label", 0 ],
            "obj-35::obj-59": [ "live.text[63]", "live.text", 0 ],
            "obj-35::obj-64": [ "live.text[64]", "live.text", 0 ],
            "obj-35::obj-66": [ "live.text[62]", "live.text", 0 ],
            "obj-35::obj-7": [ "auto+[3]", "auto+", 0 ],
            "obj-35::obj-70": [ "live.text[61]", "live.text", 0 ],
            "obj-35::obj-73": [ "live.toggle[14]", "live.toggle", 0 ],
            "obj-36::obj-195::obj-125": [ "comp-exp[2]", "Q", 0 ],
            "obj-36::obj-195::obj-13": [ "minMonitor[15]", "minMonitor", 0 ],
            "obj-36::obj-195::obj-14": [ "maxMonitor[15]", "maxMonitor", 0 ],
            "obj-36::obj-195::obj-42": [ "frame-rate[5]", "framerate", 0 ],
            "obj-36::obj-195::obj-82": [ "cut-frequency[3]", "fcut", 0 ],
            "obj-36::obj-195::obj-86": [ "gain[3]", "gain", 0 ],
            "obj-36::obj-37": [ "live.text[34]", "live.text", 0 ],
            "obj-39::obj-17": [ "live.text[46]", "live.text", 0 ],
            "obj-39::obj-4": [ "live.button[2]", "live.button[1]", 0 ],
            "obj-39::obj-8::obj-14": [ "threshold[2]", "threshold", 0 ],
            "obj-39::obj-8::obj-17": [ "minDuration[2]", "threshold", 0 ],
            "obj-39::obj-8::obj-27": [ "medianSize[2]", "maveragewindow", 0 ],
            "obj-39::obj-8::obj-34": [ "maxMonitor[19]", "maxMonitor", 0 ],
            "obj-39::obj-8::obj-37": [ "minMonitor[19]", "minMonitor", 0 ],
            "obj-41::obj-195::obj-13": [ "minMonitor[20]", "minMonitor", 0 ],
            "obj-41::obj-195::obj-14": [ "maxMonitor[20]", "maxMonitor", 0 ],
            "obj-41::obj-37": [ "live.text[47]", "live.text", 0 ],
            "obj-42::obj-3": [ "live.text[48]", "live.text", 0 ],
            "obj-42::obj-8::obj-34": [ "maxMonitor[21]", "maxMonitor", 0 ],
            "obj-42::obj-8::obj-37": [ "minMonitor[21]", "minMonitor", 0 ],
            "obj-42::obj-8::obj-48": [ "size", "maveragewindow", 0 ],
            "obj-43::obj-11": [ "total", "total", 0 ],
            "obj-43::obj-59": [ "live.text[52]", "live.text", 0 ],
            "obj-43::obj-64": [ "live.text[51]", "live.text", 0 ],
            "obj-43::obj-66": [ "live.text[50]", "live.text", 0 ],
            "obj-43::obj-69": [ "regularization", "regularization", 0 ],
            "obj-43::obj-7": [ "auto+", "auto+", 0 ],
            "obj-43::obj-70": [ "live.text[49]", "live.text", 0 ],
            "obj-43::obj-73": [ "live.toggle[11]", "live.toggle", 0 ],
            "obj-43::obj-74": [ "label", "label", 0 ],
            "obj-48::obj-15": [ "live.text[18]", "live.text", 0 ],
            "obj-48::obj-16": [ "loop", "loop", 0 ],
            "obj-48::obj-18": [ "live.text[7]", "live.text", 0 ],
            "obj-48::obj-4": [ "live.text[26]", "live.text", 0 ],
            "obj-48::obj-40": [ "live.toggle[6]", "live.toggle", 0 ],
            "obj-48::obj-50": [ "live.numbox[12]", "live.numbox", 0 ],
            "obj-48::obj-57": [ "live.toggle[8]", "autoscale", 0 ],
            "obj-48::obj-6": [ "live.text[6]", "live.text", 0 ],
            "obj-48::obj-71": [ "live.toggle[7]", "live.toggle", 0 ],
            "obj-59::obj-34": [ "live.toggle[16]", "bypass", 0 ],
            "obj-59::obj-37": [ "live.text[75]", "live.text", 0 ],
            "obj-59::obj-5::obj-15": [ "framerate[6]", "framerate", 0 ],
            "obj-59::obj-5::obj-32": [ "maxMonitor[16]", "maxMonitor", 0 ],
            "obj-59::obj-5::obj-33": [ "minMonitor[16]", "minMonitor", 0 ],
            "obj-59::obj-5::obj-39": [ "bypass[7]", "bypass", 0 ],
            "obj-59::obj-5::obj-42": [ "fcmin[5]", "fcmin", 0 ],
            "obj-59::obj-5::obj-82": [ "beta[5]", "beta", 0 ],
            "obj-5::obj-195::obj-125": [ "comp-exp2", "compexp", 0 ],
            "obj-5::obj-195::obj-13": [ "minMonitor[3]", "minMonitor", 0 ],
            "obj-5::obj-195::obj-136": [ "live.menu[1]", "live.menu", 0 ],
            "obj-5::obj-195::obj-139": [ "live.menu", "live.menu", 0 ],
            "obj-5::obj-195::obj-14": [ "maxMonitor[3]", "maxMonitor", 0 ],
            "obj-5::obj-195::obj-142": [ "derivativewindow", "maveragewindow", 0 ],
            "obj-5::obj-195::obj-146": [ "maveragewindow", "maveragewindow", 0 ],
            "obj-5::obj-195::obj-150": [ "gateonoff", "gateonoff", 0 ],
            "obj-5::obj-195::obj-151": [ "cliponoff", "cliponoff", 0 ],
            "obj-5::obj-195::obj-154": [ "clipmax", "gain", 0 ],
            "obj-5::obj-195::obj-31": [ "gatethresh", "gatethresh", 0 ],
            "obj-5::obj-195::obj-42": [ "framerate[2]", "framerate", 0 ],
            "obj-5::obj-195::obj-82": [ "fcut", "fcut", 0 ],
            "obj-5::obj-195::obj-86": [ "gain2", "gain", 0 ],
            "obj-5::obj-37": [ "live.text[21]", "live.text", 0 ],
            "obj-6::obj-11": [ "number", "FrameRate", 0 ],
            "obj-6::obj-17": [ "live.button[8]", "resync", 0 ],
            "obj-6::obj-28": [ "1125-clock-type", "clock-type", 0 ],
            "obj-6::obj-31": [ "1008-id-clock", "id-clock", 0 ],
            "obj-6::obj-4": [ "1008-FramePeriod", "FramePeriod", 0 ],
            "obj-6::obj-8": [ "1008-Mclock", "Mclock", 0 ],
            "obj-7::obj-10::obj-32": [ "1315-gyro-SclMin", "SclMin-NB", 0 ],
            "obj-7::obj-10::obj-33": [ "1315-gyro-SclMax", "SclMax-NB", 0 ],
            "obj-7::obj-12::obj-32": [ "1315-acc-SclMin", "SclMin-NB", 0 ],
            "obj-7::obj-12::obj-33": [ "1315-acc-SclMax", "SclMax-NB", 0 ],
            "obj-7::obj-195::obj-13": [ "minMonitor", "minMonitor", 0 ],
            "obj-7::obj-195::obj-14": [ "maxMonitor", "maxMonitor", 0 ],
            "obj-7::obj-195::obj-39": [ "bypass[3]", "bypass", 0 ],
            "obj-7::obj-195::obj-50": [ "live.text[68]", "live.text", 0 ],
            "obj-7::obj-195::obj-59": [ "live.text[66]", "live.text", 0 ],
            "obj-7::obj-195::obj-62": [ "live.text[67]", "live.text", 0 ],
            "obj-7::obj-195::obj-68": [ "live.text[65]", "live.text", 0 ],
            "obj-7::obj-28": [ "live.text[1]", "live.text", 0 ],
            "obj-7::obj-29": [ "live.text[17]", "live.text", 0 ],
            "obj-7::obj-31": [ "live.text", "live.text", 0 ],
            "obj-7::obj-33": [ "live.text[74]", "live.text", 0 ],
            "obj-7::obj-34": [ "live.toggle[5]", "bypass", 0 ],
            "obj-7::obj-37": [ "live.text[73]", "live.text", 0 ],
            "obj-7::obj-50": [ "live.text[72]", "live.text", 0 ],
            "obj-7::obj-59": [ "live.text[70]", "live.text", 0 ],
            "obj-7::obj-62": [ "live.text[71]", "live.text", 0 ],
            "obj-7::obj-68": [ "live.text[69]", "live.text", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "parameter_overrides": {
                "obj-11::obj-108": {
                    "parameter_longname": "1136-clock-type"
                },
                "obj-11::obj-16": {
                    "parameter_longname": "1136-port"
                },
                "obj-11::obj-179": {
                    "parameter_longname": "1136-sens-type"
                },
                "obj-11::obj-18::obj-20": {
                    "parameter_longname": "2644-port[1]"
                },
                "obj-11::obj-47": {
                    "parameter_longname": "1136-enable"
                },
                "obj-11::obj-50": {
                    "parameter_longname": "1136-frameperiod"
                },
                "obj-13::obj-11": {
                    "parameter_longname": "live.text[31]"
                },
                "obj-13::obj-5::obj-17": {
                    "parameter_longname": "1043-sens-type"
                },
                "obj-13::obj-5::obj-179": {
                    "parameter_longname": "1043-sens-type[1]"
                },
                "obj-13::obj-5::obj-34": {
                    "parameter_longname": "maxMonitor[12]"
                },
                "obj-13::obj-5::obj-37": {
                    "parameter_longname": "minMonitor[12]"
                },
                "obj-13::obj-5::obj-42": {
                    "parameter_longname": "frame-rate[4]"
                },
                "obj-15::obj-6": {
                    "parameter_longname": "live.text[76]"
                },
                "obj-15::obj-8::obj-34": {
                    "parameter_longname": "maxMonitor[22]"
                },
                "obj-15::obj-8::obj-37": {
                    "parameter_longname": "minMonitor[22]"
                },
                "obj-20::obj-11": {
                    "parameter_longname": "total[2]"
                },
                "obj-20::obj-29": {
                    "parameter_longname": "regularization[2]"
                },
                "obj-20::obj-59": {
                    "parameter_longname": "live.text[60]"
                },
                "obj-20::obj-64": {
                    "parameter_longname": "live.text[59]"
                },
                "obj-20::obj-66": {
                    "parameter_longname": "live.text[58]"
                },
                "obj-20::obj-7": {
                    "parameter_longname": "auto+[2]"
                },
                "obj-20::obj-70": {
                    "parameter_longname": "live.text[57]"
                },
                "obj-20::obj-73": {
                    "parameter_longname": "live.toggle[13]"
                },
                "obj-20::obj-74": {
                    "parameter_longname": "label[2]"
                },
                "obj-21::obj-34": {
                    "parameter_longname": "live.toggle[3]"
                },
                "obj-21::obj-37": {
                    "parameter_longname": "live.text[20]"
                },
                "obj-21::obj-5::obj-15": {
                    "parameter_longname": "framerate[1]"
                },
                "obj-21::obj-5::obj-32": {
                    "parameter_longname": "maxMonitor[2]"
                },
                "obj-21::obj-5::obj-33": {
                    "parameter_longname": "minMonitor[2]"
                },
                "obj-21::obj-5::obj-39": {
                    "parameter_longname": "bypass[1]"
                },
                "obj-21::obj-5::obj-42": {
                    "parameter_longname": "fcmin[1]"
                },
                "obj-21::obj-5::obj-82": {
                    "parameter_longname": "beta[1]"
                },
                "obj-22::obj-34": {
                    "parameter_longname": "live.toggle[4]"
                },
                "obj-22::obj-37": {
                    "parameter_longname": "live.text[24]"
                },
                "obj-22::obj-5::obj-15": {
                    "parameter_longname": "framerate[3]"
                },
                "obj-22::obj-5::obj-32": {
                    "parameter_longname": "maxMonitor[5]"
                },
                "obj-22::obj-5::obj-33": {
                    "parameter_longname": "minMonitor[5]"
                },
                "obj-22::obj-5::obj-39": {
                    "parameter_longname": "bypass[2]"
                },
                "obj-22::obj-5::obj-42": {
                    "parameter_longname": "fcmin[2]"
                },
                "obj-22::obj-5::obj-82": {
                    "parameter_longname": "beta[2]"
                },
                "obj-23::obj-5::obj-34": {
                    "parameter_longname": "maxMonitor[6]"
                },
                "obj-23::obj-5::obj-37": {
                    "parameter_longname": "minMonitor[6]"
                },
                "obj-24::obj-5::obj-34": {
                    "parameter_longname": "maxMonitor[7]"
                },
                "obj-24::obj-5::obj-37": {
                    "parameter_longname": "minMonitor[7]"
                },
                "obj-24::obj-5::obj-48": {
                    "parameter_longname": "order[1]"
                },
                "obj-24::obj-7": {
                    "parameter_longname": "live.text[25]"
                },
                "obj-26::obj-195::obj-13": {
                    "parameter_longname": "minMonitor[17]"
                },
                "obj-26::obj-195::obj-14": {
                    "parameter_longname": "maxMonitor[17]"
                },
                "obj-26::obj-195::obj-39": {
                    "parameter_longname": "bypass[5]"
                },
                "obj-26::obj-195::obj-62": {
                    "parameter_longname": "live.text[100]"
                },
                "obj-26::obj-195::obj-68": {
                    "parameter_longname": "live.text[101]"
                },
                "obj-26::obj-28": {
                    "parameter_longname": "live.text[110]"
                },
                "obj-26::obj-29": {
                    "parameter_longname": "live.text[109]"
                },
                "obj-26::obj-31": {
                    "parameter_longname": "live.text[105]"
                },
                "obj-26::obj-33": {
                    "parameter_longname": "live.text[103]"
                },
                "obj-26::obj-34": {
                    "parameter_longname": "live.toggle[18]"
                },
                "obj-26::obj-37": {
                    "parameter_longname": "live.text[107]"
                },
                "obj-26::obj-50": {
                    "parameter_longname": "live.text[102]"
                },
                "obj-26::obj-59": {
                    "parameter_longname": "live.text[108]"
                },
                "obj-26::obj-62": {
                    "parameter_longname": "live.text[106]"
                },
                "obj-26::obj-68": {
                    "parameter_longname": "live.text[104]"
                },
                "obj-27::obj-10::obj-33": {
                    "parameter_longname": "0-SclMax[9]"
                },
                "obj-27::obj-10::obj-61": {
                    "parameter_longname": "0-SclMin[9]"
                },
                "obj-27::obj-10::obj-69": {
                    "parameter_longname": "0-SclMax[8]"
                },
                "obj-27::obj-10::obj-70": {
                    "parameter_longname": "0-SclMin[7]"
                },
                "obj-27::obj-12::obj-32": {
                    "parameter_longname": "0-SclMin[5]"
                },
                "obj-27::obj-12::obj-33": {
                    "parameter_longname": "0-SclMax[5]"
                },
                "obj-27::obj-12::obj-69": {
                    "parameter_longname": "0-SclMax[6]"
                },
                "obj-27::obj-12::obj-70": {
                    "parameter_longname": "0-SclMin[6]"
                },
                "obj-27::obj-195::obj-13": {
                    "parameter_longname": "minMonitor[23]"
                },
                "obj-27::obj-195::obj-14": {
                    "parameter_longname": "maxMonitor[23]"
                },
                "obj-27::obj-195::obj-50": {
                    "parameter_longname": "live.text[90]"
                },
                "obj-27::obj-195::obj-59": {
                    "parameter_longname": "live.text[85]"
                },
                "obj-27::obj-195::obj-62": {
                    "parameter_longname": "live.text[89]"
                },
                "obj-27::obj-195::obj-68": {
                    "parameter_longname": "live.text[88]"
                },
                "obj-27::obj-28": {
                    "parameter_longname": "live.text[99]"
                },
                "obj-27::obj-29": {
                    "parameter_longname": "live.text[93]"
                },
                "obj-27::obj-31": {
                    "parameter_longname": "live.text[97]"
                },
                "obj-27::obj-33": {
                    "parameter_longname": "live.text[96]"
                },
                "obj-27::obj-34": {
                    "parameter_longname": "live.toggle[17]"
                },
                "obj-27::obj-37": {
                    "parameter_longname": "live.text[95]"
                },
                "obj-27::obj-50": {
                    "parameter_longname": "live.text[92]"
                },
                "obj-27::obj-59": {
                    "parameter_longname": "live.text[94]"
                },
                "obj-27::obj-62": {
                    "parameter_longname": "live.text[98]"
                },
                "obj-27::obj-68": {
                    "parameter_longname": "live.text[91]"
                },
                "obj-28::obj-34": {
                    "parameter_longname": "live.toggle[9]"
                },
                "obj-28::obj-37": {
                    "parameter_longname": "live.text[33]"
                },
                "obj-28::obj-5::obj-15": {
                    "parameter_longname": "framerate[4]"
                },
                "obj-28::obj-5::obj-32": {
                    "parameter_longname": "maxMonitor[14]"
                },
                "obj-28::obj-5::obj-33": {
                    "parameter_longname": "minMonitor[14]"
                },
                "obj-28::obj-5::obj-39": {
                    "parameter_longname": "bypass[4]"
                },
                "obj-28::obj-5::obj-42": {
                    "parameter_longname": "fcmin[3]"
                },
                "obj-28::obj-5::obj-82": {
                    "parameter_longname": "beta[3]"
                },
                "obj-29::obj-195::obj-13": {
                    "parameter_longname": "minMonitor[9]"
                },
                "obj-29::obj-195::obj-14": {
                    "parameter_longname": "maxMonitor[9]"
                },
                "obj-29::obj-195::obj-42": {
                    "parameter_longname": "frame-rate[1]"
                },
                "obj-29::obj-5": {
                    "parameter_longname": "live.text[29]"
                },
                "obj-2::obj-108": {
                    "parameter_longname": "1259-clock-type"
                },
                "obj-2::obj-16": {
                    "parameter_longname": "1259-port"
                },
                "obj-2::obj-179": {
                    "parameter_longname": "1259-sens-type"
                },
                "obj-2::obj-18::obj-105": {
                    "parameter_longname": "live.text[3]"
                },
                "obj-2::obj-18::obj-110": {
                    "parameter_longname": "live.text[4]"
                },
                "obj-2::obj-18::obj-121": {
                    "parameter_longname": "live.numbox[10]"
                },
                "obj-2::obj-18::obj-20": {
                    "parameter_longname": "2596-port[1]"
                },
                "obj-2::obj-18::obj-223": {
                    "parameter_longname": "live.numbox[7]"
                },
                "obj-2::obj-18::obj-59": {
                    "parameter_longname": "live.numbox[9]"
                },
                "obj-2::obj-18::obj-7": {
                    "parameter_longname": "live.numbox[6]"
                },
                "obj-2::obj-18::obj-75": {
                    "parameter_longname": "live.numbox[8]"
                },
                "obj-2::obj-18::obj-83": {
                    "parameter_longname": "live.toggle[1]"
                },
                "obj-2::obj-25": {
                    "parameter_longname": "live.text[5]"
                },
                "obj-2::obj-31": {
                    "parameter_longname": "live.button[1]"
                },
                "obj-2::obj-47": {
                    "parameter_longname": "1259-enable"
                },
                "obj-2::obj-50": {
                    "parameter_longname": "1259-frameperiod"
                },
                "obj-2::obj-56": {
                    "parameter_longname": "live.text[16]"
                },
                "obj-2::obj-58": {
                    "parameter_longname": "live.text[14]"
                },
                "obj-2::obj-59": {
                    "parameter_longname": "live.numbox[11]"
                },
                "obj-2::obj-60": {
                    "parameter_longname": "live.text[15]"
                },
                "obj-30::obj-195::obj-13": {
                    "parameter_longname": "minMonitor[8]"
                },
                "obj-30::obj-195::obj-14": {
                    "parameter_longname": "maxMonitor[8]"
                },
                "obj-31::obj-195::obj-13": {
                    "parameter_longname": "minMonitor[10]"
                },
                "obj-31::obj-195::obj-14": {
                    "parameter_longname": "maxMonitor[10]"
                },
                "obj-31::obj-195::obj-42": {
                    "parameter_longname": "frame-rate[2]"
                },
                "obj-31::obj-195::obj-82": {
                    "parameter_longname": "cut-frequency[1]"
                },
                "obj-31::obj-195::obj-86": {
                    "parameter_longname": "gain[1]"
                },
                "obj-31::obj-37": {
                    "parameter_longname": "live.text[30]"
                },
                "obj-32::obj-195::obj-125": {
                    "parameter_longname": "comp-exp[1]"
                },
                "obj-32::obj-195::obj-13": {
                    "parameter_longname": "minMonitor[11]"
                },
                "obj-32::obj-195::obj-14": {
                    "parameter_longname": "maxMonitor[11]"
                },
                "obj-32::obj-195::obj-42": {
                    "parameter_longname": "frame-rate[3]"
                },
                "obj-32::obj-195::obj-82": {
                    "parameter_longname": "cut-frequency[2]"
                },
                "obj-32::obj-195::obj-86": {
                    "parameter_longname": "gain[2]"
                },
                "obj-32::obj-37": {
                    "parameter_longname": "live.text[22]"
                },
                "obj-34::obj-11": {
                    "parameter_longname": "total[1]"
                },
                "obj-34::obj-29": {
                    "parameter_longname": "regularization[1]"
                },
                "obj-34::obj-39": {
                    "parameter_longname": "label[1]"
                },
                "obj-34::obj-59": {
                    "parameter_longname": "live.text[53]"
                },
                "obj-34::obj-64": {
                    "parameter_longname": "live.text[56]"
                },
                "obj-34::obj-66": {
                    "parameter_longname": "live.text[55]"
                },
                "obj-34::obj-7": {
                    "parameter_longname": "auto+[1]"
                },
                "obj-34::obj-70": {
                    "parameter_longname": "live.text[54]"
                },
                "obj-34::obj-73": {
                    "parameter_longname": "live.toggle[12]"
                },
                "obj-35::obj-11": {
                    "parameter_longname": "total[3]"
                },
                "obj-35::obj-29": {
                    "parameter_longname": "regularization[3]"
                },
                "obj-35::obj-53": {
                    "parameter_longname": "label[3]"
                },
                "obj-35::obj-59": {
                    "parameter_longname": "live.text[63]"
                },
                "obj-35::obj-64": {
                    "parameter_longname": "live.text[64]"
                },
                "obj-35::obj-66": {
                    "parameter_longname": "live.text[62]"
                },
                "obj-35::obj-7": {
                    "parameter_longname": "auto+[3]"
                },
                "obj-35::obj-70": {
                    "parameter_longname": "live.text[61]"
                },
                "obj-35::obj-73": {
                    "parameter_longname": "live.toggle[14]"
                },
                "obj-36::obj-195::obj-125": {
                    "parameter_longname": "comp-exp[2]"
                },
                "obj-36::obj-195::obj-13": {
                    "parameter_longname": "minMonitor[15]"
                },
                "obj-36::obj-195::obj-14": {
                    "parameter_longname": "maxMonitor[15]"
                },
                "obj-36::obj-195::obj-42": {
                    "parameter_longname": "frame-rate[5]"
                },
                "obj-36::obj-195::obj-82": {
                    "parameter_longname": "cut-frequency[3]"
                },
                "obj-36::obj-195::obj-86": {
                    "parameter_longname": "gain[3]"
                },
                "obj-36::obj-37": {
                    "parameter_longname": "live.text[34]"
                },
                "obj-39::obj-17": {
                    "parameter_longname": "live.text[46]"
                },
                "obj-39::obj-4": {
                    "parameter_longname": "live.button[2]"
                },
                "obj-39::obj-8::obj-14": {
                    "parameter_longname": "threshold[2]"
                },
                "obj-39::obj-8::obj-17": {
                    "parameter_longname": "minDuration[2]"
                },
                "obj-39::obj-8::obj-27": {
                    "parameter_longname": "medianSize[2]"
                },
                "obj-39::obj-8::obj-34": {
                    "parameter_longname": "maxMonitor[19]"
                },
                "obj-39::obj-8::obj-37": {
                    "parameter_longname": "minMonitor[19]"
                },
                "obj-41::obj-195::obj-13": {
                    "parameter_longname": "minMonitor[20]"
                },
                "obj-41::obj-195::obj-14": {
                    "parameter_longname": "maxMonitor[20]"
                },
                "obj-41::obj-37": {
                    "parameter_longname": "live.text[47]"
                },
                "obj-42::obj-3": {
                    "parameter_longname": "live.text[48]"
                },
                "obj-42::obj-8::obj-34": {
                    "parameter_longname": "maxMonitor[21]"
                },
                "obj-42::obj-8::obj-37": {
                    "parameter_longname": "minMonitor[21]"
                },
                "obj-43::obj-59": {
                    "parameter_longname": "live.text[52]"
                },
                "obj-43::obj-64": {
                    "parameter_longname": "live.text[51]"
                },
                "obj-43::obj-66": {
                    "parameter_longname": "live.text[50]"
                },
                "obj-43::obj-70": {
                    "parameter_longname": "live.text[49]"
                },
                "obj-43::obj-73": {
                    "parameter_longname": "live.toggle[11]"
                },
                "obj-48::obj-15": {
                    "parameter_longname": "live.text[18]"
                },
                "obj-48::obj-18": {
                    "parameter_longname": "live.text[7]"
                },
                "obj-48::obj-4": {
                    "parameter_longname": "live.text[26]"
                },
                "obj-48::obj-40": {
                    "parameter_longname": "live.toggle[6]"
                },
                "obj-48::obj-50": {
                    "parameter_longname": "live.numbox[12]"
                },
                "obj-48::obj-57": {
                    "parameter_longname": "live.toggle[8]"
                },
                "obj-48::obj-6": {
                    "parameter_longname": "live.text[6]"
                },
                "obj-48::obj-71": {
                    "parameter_longname": "live.toggle[7]"
                },
                "obj-59::obj-34": {
                    "parameter_longname": "live.toggle[16]"
                },
                "obj-59::obj-37": {
                    "parameter_longname": "live.text[75]"
                },
                "obj-59::obj-5::obj-15": {
                    "parameter_longname": "framerate[6]"
                },
                "obj-59::obj-5::obj-32": {
                    "parameter_longname": "maxMonitor[16]"
                },
                "obj-59::obj-5::obj-33": {
                    "parameter_longname": "minMonitor[16]"
                },
                "obj-59::obj-5::obj-39": {
                    "parameter_longname": "bypass[7]"
                },
                "obj-59::obj-5::obj-42": {
                    "parameter_longname": "fcmin[5]"
                },
                "obj-59::obj-5::obj-82": {
                    "parameter_longname": "beta[5]"
                },
                "obj-5::obj-195::obj-125": {
                    "parameter_longname": "comp-exp2"
                },
                "obj-5::obj-195::obj-13": {
                    "parameter_longname": "minMonitor[3]"
                },
                "obj-5::obj-195::obj-14": {
                    "parameter_longname": "maxMonitor[3]"
                },
                "obj-5::obj-195::obj-42": {
                    "parameter_longname": "framerate[2]"
                },
                "obj-5::obj-195::obj-86": {
                    "parameter_longname": "gain2"
                },
                "obj-5::obj-37": {
                    "parameter_longname": "live.text[21]"
                },
                "obj-6::obj-11": {
                    "parameter_longname": "number"
                },
                "obj-6::obj-17": {
                    "parameter_longname": "live.button[8]"
                },
                "obj-6::obj-28": {
                    "parameter_longname": "1125-clock-type"
                },
                "obj-6::obj-31": {
                    "parameter_longname": "1008-id-clock"
                },
                "obj-6::obj-4": {
                    "parameter_longname": "1008-FramePeriod"
                },
                "obj-6::obj-8": {
                    "parameter_longname": "1008-Mclock"
                },
                "obj-7::obj-10::obj-32": {
                    "parameter_longname": "1315-gyro-SclMin"
                },
                "obj-7::obj-10::obj-33": {
                    "parameter_longname": "1315-gyro-SclMax"
                },
                "obj-7::obj-12::obj-32": {
                    "parameter_longname": "1315-acc-SclMin"
                },
                "obj-7::obj-12::obj-33": {
                    "parameter_longname": "1315-acc-SclMax"
                },
                "obj-7::obj-195::obj-39": {
                    "parameter_longname": "bypass[3]"
                },
                "obj-7::obj-195::obj-50": {
                    "parameter_longname": "live.text[68]"
                },
                "obj-7::obj-195::obj-59": {
                    "parameter_longname": "live.text[66]"
                },
                "obj-7::obj-195::obj-62": {
                    "parameter_longname": "live.text[67]"
                },
                "obj-7::obj-195::obj-68": {
                    "parameter_longname": "live.text[65]"
                },
                "obj-7::obj-28": {
                    "parameter_longname": "live.text[1]"
                },
                "obj-7::obj-29": {
                    "parameter_longname": "live.text[17]"
                },
                "obj-7::obj-31": {
                    "parameter_longname": "live.text"
                },
                "obj-7::obj-33": {
                    "parameter_longname": "live.text[74]"
                },
                "obj-7::obj-34": {
                    "parameter_longname": "live.toggle[5]"
                },
                "obj-7::obj-37": {
                    "parameter_longname": "live.text[73]"
                },
                "obj-7::obj-50": {
                    "parameter_longname": "live.text[72]"
                },
                "obj-7::obj-59": {
                    "parameter_longname": "live.text[70]"
                },
                "obj-7::obj-62": {
                    "parameter_longname": "live.text[71]"
                },
                "obj-7::obj-68": {
                    "parameter_longname": "live.text[69]"
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0,
        "toolbaradditions": [ "s2n", "Modalys" ]
    }
}