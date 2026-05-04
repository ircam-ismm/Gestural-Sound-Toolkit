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
        "rect": [ 34.0, 93.0, 1360.0, 590.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 109.0, 445.0, 77.0, 22.0 ],
                    "text": "clientwindow"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 109.0, 478.0, 73.0, 22.0 ],
                    "saved_object_attributes": {
                        "client_rect": [ 1526, 102, 2056, 1129 ],
                        "parameter_enable": 0,
                        "parameter_mappable": 0,
                        "storage_rect": [ 583, 69, 1034, 197 ]
                    },
                    "text": "pattrstorage",
                    "varname": "u957011828"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1183.0, 181.0, 151.0, 22.0 ],
                    "text": "loadmess C74:/media/msp"
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 186.0, 173.0, 151.0, 22.0 ],
                    "text": "loadmess C74:/media/msp"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 348.1025695800781, 173.0, 44.0, 22.0 ],
                    "text": "noise~"
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
                    "patching_rect": [ 970.0, 128.0, 219.0, 35.0 ],
                    "text": "Granular Synthesis"
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
                    "patching_rect": [ 684.3974304199219, 128.0, 170.0, 35.0 ],
                    "text": "FM Synthesis"
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
                    "patching_rect": [ 408.0, 128.0, 122.0, 35.0 ],
                    "text": "Filtering"
                }
            },
            {
                "box": {
                    "fontname": "Helvetica Neue Medium",
                    "fontsize": 24.0,
                    "id": "obj-2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 23.0, 6.0, 212.0, 35.0 ],
                    "text": "Sound Synthesis"
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
                    "patching_rect": [ 348.1025695800781, 208.0, 241.79486083984375, 145.89173889160156 ],
                    "varname": "synth.filter",
                    "viewvisibility": 1
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
                    "patching_rect": [ 649.0, 208.0, 258.0, 145.89173889160156 ],
                    "varname": "synth.FM",
                    "viewvisibility": 1
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
                    "id": "obj-20",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "synth.scrub.samples.maxpat",
                    "numinlets": 5,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 956.0, 212.0, 246.0, 146.0 ],
                    "varname": "synth.scrub.samples",
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
                    "patching_rect": [ 326.0, 508.0, 98.0, 35.0 ],
                    "text": "Output"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.0, 0.0, 0.0, 0.0 ],
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
                    "patching_rect": [ 426.0, 488.0, 182.97576904296875, 86.09903717041016 ],
                    "viewvisibility": 1
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
                    "id": "obj-15",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "synth.scratch.samples.maxpat",
                    "numinlets": 5,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 47.0, 208.0, 240.79486083984375, 145.89173889160156 ],
                    "varname": "synth.scratch.samples",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "fontname": "Helvetica Neue Light",
                    "fontsize": 23.865383,
                    "id": "obj-19",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 92.0, 128.0, 122.0, 35.0 ],
                    "text": "Soundfiles"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-20", 4 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 0 ],
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 4 ],
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "source": [ "obj-40", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-60", 0 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "source": [ "obj-60", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-15::obj-166": [ "speed", "speed", 0 ],
            "obj-15::obj-22": [ "live.gain~", "live.gain~", 0 ],
            "obj-15::obj-88": [ "start", "start", 0 ],
            "obj-15::obj-92": [ "loop", "loop", 0 ],
            "obj-20::obj-2": [ "live.gain~[3]", "ogain", 0 ],
            "obj-20::obj-88": [ "start[1]", "start", 0 ],
            "obj-26::obj-2": [ "live.gain~[5]", "ogain", 0 ],
            "obj-40::obj-2": [ "live.gain~[1]", "FM-Out", 0 ],
            "obj-40::obj-20": [ "harmonicity", "harmonicity", 0 ],
            "obj-40::obj-21": [ "carrier", "carrier", 0 ],
            "obj-40::obj-24": [ "duration", "duration", 0 ],
            "obj-40::obj-32": [ "index", "index", 0 ],
            "obj-40::obj-42": [ "live.button", "live.button", 0 ],
            "obj-40::obj-88": [ "ConstAmp", "ConstAmp", 0 ],
            "obj-60::obj-15": [ "noise", "noise", 0 ],
            "obj-60::obj-18": [ "minF", "minF", 0 ],
            "obj-60::obj-19": [ "maxF", "maxF", 0 ],
            "obj-60::obj-2": [ "live.gain~[2]", "ogain", 0 ],
            "parameter_overrides": {
                "obj-15::obj-22": {
                    "parameter_longname": "live.gain~",
                    "parameter_shortname": "live.gain~"
                },
                "obj-20::obj-2": {
                    "parameter_longname": "live.gain~[3]"
                },
                "obj-20::obj-88": {
                    "parameter_longname": "start[1]"
                },
                "obj-26::obj-2": {
                    "parameter_longname": "live.gain~[5]"
                },
                "obj-40::obj-2": {
                    "parameter_longname": "live.gain~[1]"
                },
                "obj-60::obj-2": {
                    "parameter_longname": "live.gain~[2]"
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0,
        "toolbaradditions": [ "s2n", "Modalys" ]
    }
}