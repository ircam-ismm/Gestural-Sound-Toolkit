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
        "rect": [ 34.0, 93.0, 1040.0, 729.0 ],
        "boxes": [
            {
                "box": {
                    "fontname": "Helvetica Neue Medium",
                    "fontsize": 24.0,
                    "id": "obj-22",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 25.0, 20.0, 346.0, 35.0 ],
                    "text": "Interactive Machine Learning"
                }
            },
            {
                "box": {
                    "fontname": "Helvetica Neue Light",
                    "fontsize": 23.865383,
                    "id": "obj-5",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 610.0, 103.0, 208.494384765625, 35.0 ],
                    "text": "Temporal Models"
                }
            },
            {
                "box": {
                    "fontname": "Helvetica Neue Light",
                    "fontsize": 23.865383,
                    "id": "obj-4",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 301.0, 103.0, 148.0, 35.0 ],
                    "text": "Static Models"
                }
            },
            {
                "box": {
                    "fontname": "Helvetica Neue Light",
                    "fontsize": 23.865383,
                    "id": "obj-3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 41.0, 523.0, 148.0, 35.0 ],
                    "text": "Regression"
                }
            },
            {
                "box": {
                    "fontname": "Helvetica Neue Light",
                    "fontsize": 23.865383,
                    "id": "obj-1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 31.0, 234.0, 148.0, 35.0 ],
                    "text": "Classification"
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
                    "numinlets": 8,
                    "numoutlets": 3,
                    "offset": [ 0.0, -3.0 ],
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 561.0, 174.0, 307.494384765625, 188.0 ],
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
                    "id": "obj-18",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.regression.xmm.maxpat",
                    "numinlets": 9,
                    "numoutlets": 3,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 561.0, 456.0, 311.0, 188.0 ],
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
                    "id": "obj-8",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.regression.gmr.maxpat",
                    "numinlets": 9,
                    "numoutlets": 3,
                    "offset": [ 0.0, 1.0 ],
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 233.0, 456.0, 303.85999298095703, 188.0 ],
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
                    "id": "obj-14",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.classification.gmm.maxpat",
                    "numinlets": 8,
                    "numoutlets": 2,
                    "offset": [ 0.0, -3.0 ],
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 229.0, 174.0, 302.0, 188.0 ],
                    "varname": "gst.classification.gmm",
                    "viewvisibility": 1
                }
            }
        ],
        "lines": [],
        "parameters": {
            "obj-14::obj-11": [ "total", "total", 0 ],
            "obj-14::obj-59": [ "live.text[6]", "live.text", 0 ],
            "obj-14::obj-64": [ "live.text[5]", "live.text", 0 ],
            "obj-14::obj-66": [ "live.text[8]", "live.text", 0 ],
            "obj-14::obj-69": [ "regularization", "regularization", 0 ],
            "obj-14::obj-7": [ "auto+", "auto+", 0 ],
            "obj-14::obj-70": [ "live.text[7]", "live.text", 0 ],
            "obj-14::obj-73": [ "live.toggle", "live.toggle", 0 ],
            "obj-14::obj-74": [ "label", "label", 0 ],
            "obj-18::obj-11": [ "total[2]", "total", 0 ],
            "obj-18::obj-29": [ "regularization[2]", "regularization", 0 ],
            "obj-18::obj-53": [ "label[2]", "label", 0 ],
            "obj-18::obj-59": [ "live.text[16]", "live.text", 0 ],
            "obj-18::obj-64": [ "live.text[15]", "live.text", 0 ],
            "obj-18::obj-66": [ "live.text[14]", "live.text", 0 ],
            "obj-18::obj-7": [ "auto+[2]", "auto+", 0 ],
            "obj-18::obj-70": [ "live.text[13]", "live.text", 0 ],
            "obj-18::obj-73": [ "live.toggle[2]", "live.toggle", 0 ],
            "obj-2::obj-11": [ "total[3]", "total", 0 ],
            "obj-2::obj-29": [ "regularization[3]", "regularization", 0 ],
            "obj-2::obj-39": [ "label[3]", "label", 0 ],
            "obj-2::obj-59": [ "live.text[18]", "live.text", 0 ],
            "obj-2::obj-64": [ "live.text[20]", "live.text", 0 ],
            "obj-2::obj-66": [ "live.text[17]", "live.text", 0 ],
            "obj-2::obj-7": [ "auto+[3]", "auto+", 0 ],
            "obj-2::obj-70": [ "live.text[19]", "live.text", 0 ],
            "obj-2::obj-73": [ "live.toggle[3]", "live.toggle", 0 ],
            "obj-8::obj-11": [ "total[1]", "total", 0 ],
            "obj-8::obj-29": [ "regularization[1]", "regularization", 0 ],
            "obj-8::obj-59": [ "live.text[12]", "live.text", 0 ],
            "obj-8::obj-64": [ "live.text[10]", "live.text", 0 ],
            "obj-8::obj-66": [ "live.text[11]", "live.text", 0 ],
            "obj-8::obj-7": [ "auto+[1]", "auto+", 0 ],
            "obj-8::obj-70": [ "live.text[9]", "live.text", 0 ],
            "obj-8::obj-73": [ "live.toggle[1]", "live.toggle", 0 ],
            "obj-8::obj-74": [ "label[1]", "label", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "parameter_overrides": {
                "obj-18::obj-11": {
                    "parameter_longname": "total[2]"
                },
                "obj-18::obj-29": {
                    "parameter_longname": "regularization[2]"
                },
                "obj-18::obj-53": {
                    "parameter_longname": "label[2]"
                },
                "obj-18::obj-59": {
                    "parameter_longname": "live.text[16]"
                },
                "obj-18::obj-64": {
                    "parameter_longname": "live.text[15]"
                },
                "obj-18::obj-66": {
                    "parameter_longname": "live.text[14]"
                },
                "obj-18::obj-7": {
                    "parameter_longname": "auto+[2]"
                },
                "obj-18::obj-70": {
                    "parameter_longname": "live.text[13]"
                },
                "obj-18::obj-73": {
                    "parameter_longname": "live.toggle[2]"
                },
                "obj-2::obj-11": {
                    "parameter_longname": "total[3]"
                },
                "obj-2::obj-29": {
                    "parameter_longname": "regularization[3]"
                },
                "obj-2::obj-39": {
                    "parameter_longname": "label[3]"
                },
                "obj-2::obj-59": {
                    "parameter_longname": "live.text[18]"
                },
                "obj-2::obj-64": {
                    "parameter_longname": "live.text[20]"
                },
                "obj-2::obj-66": {
                    "parameter_longname": "live.text[17]"
                },
                "obj-2::obj-7": {
                    "parameter_longname": "auto+[3]"
                },
                "obj-2::obj-70": {
                    "parameter_longname": "live.text[19]"
                },
                "obj-2::obj-73": {
                    "parameter_longname": "live.toggle[3]"
                },
                "obj-8::obj-11": {
                    "parameter_longname": "total[1]"
                },
                "obj-8::obj-29": {
                    "parameter_longname": "regularization[1]"
                },
                "obj-8::obj-59": {
                    "parameter_longname": "live.text[12]"
                },
                "obj-8::obj-64": {
                    "parameter_longname": "live.text[10]"
                },
                "obj-8::obj-66": {
                    "parameter_longname": "live.text[11]"
                },
                "obj-8::obj-7": {
                    "parameter_longname": "auto+[1]"
                },
                "obj-8::obj-70": {
                    "parameter_longname": "live.text[9]"
                },
                "obj-8::obj-73": {
                    "parameter_longname": "live.toggle[1]"
                },
                "obj-8::obj-74": {
                    "parameter_longname": "label[1]"
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0,
        "toolbaradditions": [ "s2n", "Modalys", "Gestural-Sound-Toolkit" ]
    }
}