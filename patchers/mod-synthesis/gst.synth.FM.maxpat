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
        "rect": [ 34.0, 93.0, 269.0, 161.0 ],
        "openinpresentation": 1,
        "gridsize": [ 2.0, 2.0 ],
        "style": "gst.title",
        "boxes": [
            {
                "box": {
                    "id": "obj-40",
                    "maxclass": "newobj",
                    "numinlets": 7,
                    "numoutlets": 7,
                    "outlettype": [ "", "", "", "", "", "", "" ],
                    "patching_rect": [ 996.0, 78.0, 315.0, 22.0 ],
                    "text": "route constant frequency note harmonicity index loudness"
                }
            },
            {
                "box": {
                    "id": "obj-41",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 943.0, 51.0, 72.0, 22.0 ],
                    "text": "patcherargs"
                }
            },
            {
                "box": {
                    "id": "obj-52",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1014.0, 201.0, 411.0, 20.0 ],
                    "text": "delaying the domain to trigger the envelop when preset recall (pattrstorage)"
                }
            },
            {
                "box": {
                    "id": "obj-51",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 959.0, 200.0, 48.0, 22.0 ],
                    "text": "pipe 10"
                }
            },
            {
                "box": {
                    "id": "obj-47",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1104.0, 427.5, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-34",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 208.0, 483.0, 52.0, 20.0 ],
                    "text": "DC filter"
                }
            },
            {
                "box": {
                    "color": [ 0.545098039215686, 0.545098039215686, 0.545098039215686, 1.0 ],
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-125",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 31.0, 482.0, 172.0, 22.0 ],
                    "text": "mc.biquad~ 1. -1. 0. -0.9997 0."
                }
            },
            {
                "box": {
                    "id": "obj-39",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 144.757679, 138.5, 41.0, 22.0 ],
                    "text": "set $1"
                }
            },
            {
                "box": {
                    "annotation": "mono out",
                    "comment": "mono out",
                    "hint": "mono out",
                    "id": "obj-18",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 114.757679, 671.5, 25.0, 25.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-36",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 114.757679, 559.0, 92.0, 22.0 ],
                    "text": "mc.mixdown~ 1"
                }
            },
            {
                "box": {
                    "id": "obj-45",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 297.07, 68.03, 56.0, 22.0 ],
                    "restore": {
                        "ConstAmp": [ 0.0 ],
                        "carrier": [ 40.00000000000001 ],
                        "duration": [ 500.0 ],
                        "env": [ 500.0, 0.0, 1.0, 4.587155664911325, 0.0, 0, 5.230390610147063, 1.0, 0, 48.64864319458818, 0.145161290322581, 0, 432.4323839518948, 0.209677419354839, 0, 499.99994394437834, 0.0, 0, "linear" ],
                        "harmonicity": [ 2.002002002002002 ],
                        "index": [ 2.002002002002002 ],
                        "ogain": [ 0.0 ]
                    },
                    "text": "autopattr",
                    "varname": "u292006780"
                }
            },
            {
                "box": {
                    "comment": "Pan(0.-1.) with constant amplitude mode",
                    "id": "obj-38",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 692.0, 92.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 496.0, 440.0, 60.0, 22.0 ],
                    "text": "mc.*~ 0.2"
                }
            },
            {
                "box": {
                    "fontname": "Helvetica Neue",
                    "fontsize": 9.0,
                    "id": "obj-12",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1020.0, 165.0, 42.0, 17.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 207.95847564935684, 110.0, 48.09688538312912, 17.0 ],
                    "text": "duration",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 31.0, 316.0, 107.0, 22.0 ],
                    "text": "pack note 40. 2. 2."
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 31.0, 440.0, 60.0, 22.0 ],
                    "text": "mc.*~ 0.5"
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 31.0, 144.0, 50.0, 22.0 ],
                    "text": "== 0"
                }
            },
            {
                "box": {
                    "id": "obj-30",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "int", "int" ],
                    "patching_rect": [ 496.0, 96.0, 38.0, 22.0 ],
                    "text": "t i i"
                }
            },
            {
                "box": {
                    "id": "obj-27",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 496.0, 407.6386110000001, 215.0, 22.0 ],
                    "text": "mcs.poly~ FM-synth-const 1 @target 0"
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 31.0, 174.0, 81.0, 22.0 ],
                    "text": "gate 1 1"
                }
            },
            {
                "box": {
                    "id": "obj-37",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patching_rect": [ 921.0, 278.0, 29.5, 22.0 ],
                    "text": "t b l"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-35",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 982.0, 394.0, 79.0, 23.0 ],
                    "text": "route list"
                }
            },
            {
                "box": {
                    "id": "obj-31",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 959.0, 227.0, 84.0, 22.0 ],
                    "text": "setdomain $1"
                }
            },
            {
                "box": {
                    "addpoints": [ 4.587155664911325, 0.0, 0, 5.230390610147063, 1.0, 0, 48.64864319458818, 0.145161290322581, 0, 432.4323839518948, 0.209677419354839, 0, 499.99994394437834, 0.0, 0 ],
                    "annotation": "envelop design",
                    "annotation_name": "envelop design",
                    "classic_curve": 1,
                    "domain": 500.0,
                    "fontname": "Helvetica Neue",
                    "fontsize": 11.0,
                    "hint": "envelop design",
                    "id": "obj-33",
                    "linecolor": [ 0.0, 0.854901960784314, 0.282352941176471, 1.0 ],
                    "maxclass": "function",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "float", "", "", "bang" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 921.0, 311.0, 202.0, 67.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 2.0, 86.0, 203.19030958414078, 57.94463539123535 ],
                    "saved_attribute_attributes": {
                        "linecolor": {
                            "expression": "themecolor.live_macro_assignment"
                        },
                        "valueof": {
                            "parameter_invisible": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "env",
                            "parameter_modmode": 0,
                            "parameter_shortname": "env",
                            "parameter_type": 3
                        }
                    },
                    "varname": "env"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-29",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 982.0, 428.0, 105.0, 23.0 ],
                    "text": "prepend function"
                }
            },
            {
                "box": {
                    "id": "obj-28",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 31.0, 205.0, 32.0, 22.0 ],
                    "text": "note"
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 811.0, 96.0, 41.0, 22.0 ],
                    "text": "atodb"
                }
            },
            {
                "box": {
                    "fontname": "Helvetica Light",
                    "fontsize": 10.0,
                    "id": "obj-11",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 812.0, 8.0, 52.0, 16.0 ],
                    "text": "volume"
                }
            },
            {
                "box": {
                    "id": "obj-26",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 811.0, 63.0, 53.0, 22.0 ],
                    "text": "clip 0. 1."
                }
            },
            {
                "box": {
                    "annotation": "Modulation index >0.",
                    "comment": "Modulation index >0.",
                    "hint": "Modulation index >0.",
                    "id": "obj-17",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 326.47781399999997, 338.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "annotation": "harmonicity >0.",
                    "comment": "harmonicity >0.",
                    "hint": "harmonicity >0.",
                    "id": "obj-16",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 242.744034, 338.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "annotation": "Carrier Frequency (in Hz)",
                    "comment": "Carrier Frequency (in Hz)",
                    "hint": "Carrier Frequency (in Hz)",
                    "id": "obj-14",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 144.757679, 338.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Helvetica Neue",
                    "fontsize": 9.0,
                    "id": "obj-9",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 531.0, 45.0, 94.0, 17.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 122.0, 67.76470577716827, 93.0, 17.0 ],
                    "text": "(set off for triggering)"
                }
            },
            {
                "box": {
                    "annotation": "Carrier Frequency (in Midi)",
                    "comment": "Carrier Frequency (in Midi)",
                    "hint": "Carrier Frequency (in Midi)",
                    "id": "obj-7",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 144.757679, 39.168316000000004, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 144.757679, 78.03465299999999, 34.0, 22.0 ],
                    "text": "mtof"
                }
            },
            {
                "box": {
                    "annotation": "bypass envelop (constant sound)",
                    "annotation_name": "bypass envelop (constant sound)",
                    "hint": "bypass envelop (constant sound)",
                    "id": "obj-88",
                    "maxclass": "live.toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 496.0, 28.0, 15.0, 15.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 104.0, 60.0, 20.0, 20.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "off", "on" ],
                            "parameter_initial": [ 0.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "ConstAmp",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "ConstAmp",
                            "parameter_type": 2
                        }
                    },
                    "varname": "ConstAmp"
                }
            },
            {
                "box": {
                    "annotation": "output gain",
                    "annotation_name": "output gain",
                    "hint": "output gain",
                    "id": "obj-2",
                    "lastchannelcount": 2,
                    "maxclass": "mc.live.gain~",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "multichannelsignal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 31.0, 524.0, 48.0, 136.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 207.95847564935684, 5.882352888584137, 49.0, 103.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_linknames": 1,
                            "parameter_longname": "ogain",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "ogain",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "ogain"
                }
            },
            {
                "box": {
                    "annotation": "2 channels mc out",
                    "comment": "2 channels mc out",
                    "hint": "2 channels mc out",
                    "id": "obj-1",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 31.0, 669.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Helvetica Neue",
                    "fontsize": 11.0,
                    "id": "obj-46",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 38.0, 101.7326735, 81.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 22.0, 60.0, 79.0, 19.0 ],
                    "text": "Trigger Sound"
                }
            },
            {
                "box": {
                    "annotation": "Trigger envelop [bang]",
                    "comment": "Trigger envelop [bang]",
                    "hint": "Trigger envelop [bang]",
                    "id": "obj-44",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 10.5, 39.168316000000004, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "annotation": "Trigger envelop [bang]",
                    "annotation_name": "Trigger envelop [bang]",
                    "hint": "Trigger envelop [bang]",
                    "id": "obj-42",
                    "maxclass": "live.button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 10.5, 100.46534700000001, 21.0, 21.53465299999999 ],
                    "presentation": 1,
                    "presentation_rect": [ 2.0, 60.0, 20.0, 20.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "off", "on" ],
                            "parameter_longname": "live.button",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "live.button",
                            "parameter_type": 2
                        }
                    },
                    "varname": "live.button"
                }
            },
            {
                "box": {
                    "fontname": "Helvetica Neue",
                    "fontsize": 9.0,
                    "id": "obj-8",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 531.0, 24.0, 95.0, 17.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 122.0, 56.0, 92.0, 17.0 ],
                    "text": "Constant Amplitude "
                }
            },
            {
                "box": {
                    "fontname": "Helvetica Neue",
                    "fontsize": 12.0,
                    "id": "obj-70",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 12.744034, 10.0, 168.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 2.0, 2.0, 121.0, 20.0 ],
                    "text": "Simple FM Synthesis"
                }
            },
            {
                "box": {
                    "annotation": "[0. 1.] data in (float) controlling loudness",
                    "comment": "[0. 1.] data in (float) controlling loudness",
                    "hint": "[0. 1.] data in (float) controlling loudness",
                    "id": "obj-62",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 811.0, 25.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-61",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 326.47781399999997, 162.5, 75.0, 22.0 ],
                    "text": "loadmess 2."
                }
            },
            {
                "box": {
                    "id": "obj-60",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 242.744034, 162.5, 75.0, 22.0 ],
                    "text": "loadmess 2."
                }
            },
            {
                "box": {
                    "id": "obj-59",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 157.757679, 162.5, 82.0, 22.0 ],
                    "text": "loadmess 40."
                }
            },
            {
                "box": {
                    "annotation": "Modulation index >0.",
                    "comment": "Modulation index >0.",
                    "hint": "Modulation index >0.",
                    "id": "obj-58",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 382.477814, 200.0, 30.0, 30.0 ],
                    "varname": "indexMod"
                }
            },
            {
                "box": {
                    "id": "obj-56",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 633.0, 45.0, 150.0, 20.0 ],
                    "text": "Swithc OFF - Continuous"
                }
            },
            {
                "box": {
                    "id": "obj-55",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 633.0, 21.0, 150.0, 20.0 ],
                    "text": "Swithc ON - ADSR  trigger"
                }
            },
            {
                "box": {
                    "annotation": "harmonicity >0.",
                    "comment": "harmonicity >0.",
                    "hint": "harmonicity >0.",
                    "id": "obj-50",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 258.744034, 200.0, 30.0, 30.0 ],
                    "varname": "Harmonicity"
                }
            },
            {
                "box": {
                    "annotation": "Carrier Frequency (in Hz)",
                    "comment": "Carrier Frequency (in Hz)",
                    "hint": "Carrier Frequency (in Hz)",
                    "id": "obj-49",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 157.757679, 200.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-43",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 959.0, 127.0, 85.0, 22.0 ],
                    "text": "loadmess 500"
                }
            },
            {
                "box": {
                    "annotation": "Modulation index >0.",
                    "annotation_name": "Modulation index >0.",
                    "appearance": 2,
                    "fontsize": 11.0,
                    "hint": "Modulation index >0.",
                    "id": "obj-32",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 326.47781399999997, 248.242569, 50.0, 17.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 135.98615795373917, 38.062283396720886, 59.515570402145386, 17.0 ],
                    "prototypename": "freq",
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 2 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "index",
                            "parameter_mmax": 10.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "index",
                            "parameter_steps": 1000,
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "index"
                }
            },
            {
                "box": {
                    "fontname": "Helvetica Neue",
                    "fontsize": 9.0,
                    "id": "obj-10",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 414.0, 206.5, 56.0, 17.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 136.0, 22.0, 59.861591160297394, 17.0 ],
                    "text": "Mod. Index",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontname": "Helvetica Neue",
                    "fontsize": 9.0,
                    "id": "obj-15",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 296.496582, 205.0, 63.0, 17.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 68.16608935594559, 22.0, 59.83391064405441, 17.0 ],
                    "text": "Harmonicity",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "annotation": "harmonicity >0.",
                    "annotation_name": "harmonicity >0.",
                    "appearance": 2,
                    "fontsize": 11.0,
                    "hint": "harmonicity >0.",
                    "id": "obj-20",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 242.744034, 248.242569, 50.0, 17.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 68.0, 38.0, 59.861591160297394, 17.0 ],
                    "prototypename": "freq",
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 2 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "harmonicity",
                            "parameter_mmax": 10.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "harmonicity",
                            "parameter_steps": 1000,
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "harmonicity"
                }
            },
            {
                "box": {
                    "annotation": "Carrier Frequency (in Hz)",
                    "annotation_name": "Carrier Frequency (in Hz)",
                    "appearance": 2,
                    "fontsize": 11.0,
                    "hint": "Carrier Frequency (in Hz)",
                    "id": "obj-21",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 144.757679, 248.242569, 50.0, 17.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 2.0761245489120483, 38.062283396720886, 59.861591160297394, 17.0 ],
                    "prototypename": "freq",
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_exponent": 3.333333,
                            "parameter_initial": [ 40.00000000000001 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "carrier",
                            "parameter_mmax": 10000.0,
                            "parameter_mmin": 20.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "carrier",
                            "parameter_type": 0,
                            "parameter_unitstyle": 3
                        }
                    },
                    "varname": "carrier"
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 31.0, 407.6386110000001, 281.0, 22.0 ],
                    "text": "mcs.poly~ FM-synth-adsr 32 @target 0 @parallel 1"
                }
            },
            {
                "box": {
                    "fontname": "Helvetica Neue",
                    "fontsize": 9.0,
                    "id": "obj-23",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 189.757679, 206.5, 59.0, 17.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 2.0, 22.0, 59.0, 17.0 ],
                    "text": "Carrier Freq."
                }
            },
            {
                "box": {
                    "annotation": "envelop (sound) duration",
                    "annotation_name": "envelop (sound) duration",
                    "appearance": 2,
                    "fontsize": 11.0,
                    "hint": "envelop (sound) duration",
                    "id": "obj-24",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 959.0, 165.0, 59.0, 17.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 208.0, 128.0, 50.0, 17.0 ],
                    "prototypename": "time",
                    "saved_attribute_attributes": {
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [ 0 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "duration",
                            "parameter_mmax": 10000.0,
                            "parameter_modmode": 0,
                            "parameter_order": 1,
                            "parameter_shortname": "duration",
                            "parameter_type": 0,
                            "parameter_unitstyle": 2
                        }
                    },
                    "textcolor": [ 0.101961, 0.121569, 0.172549, 1.0 ],
                    "varname": "duration"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "order": 1,
                    "source": [ "obj-125", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-36", 0 ],
                    "midpoints": [ 40.5, 517.11328125, 124.257679, 517.11328125 ],
                    "order": 0,
                    "source": [ "obj-125", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-125", 0 ],
                    "midpoints": [ 505.5, 473.81539925000004, 40.5, 473.81539925000004 ],
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-28", 0 ],
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 0 ],
                    "order": 1,
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-27", 2 ],
                    "order": 0,
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 2 ],
                    "order": 2,
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "order": 1,
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-27", 1 ],
                    "order": 0,
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 1 ],
                    "order": 2,
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-51", 0 ],
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "midpoints": [ 820.5, 511.62670149999997, 40.5, 511.62670149999997 ],
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 0 ],
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "source": [ "obj-28", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-22", 1 ],
                    "source": [ "obj-29", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-125", 0 ],
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-27", 0 ],
                    "source": [ "obj-30", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-30", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-37", 0 ],
                    "midpoints": [ 968.5, 265.47265625, 930.5, 265.47265625 ],
                    "source": [ "obj-31", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "order": 1,
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-27", 3 ],
                    "order": 0,
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 3 ],
                    "order": 2,
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-35", 0 ],
                    "source": [ "obj-33", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-37", 0 ],
                    "midpoints": [ 1113.5, 388.0, 1136.0, 388.0, 1136.0, 194.0, 930.5, 194.0 ],
                    "order": 1,
                    "source": [ "obj-33", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-47", 0 ],
                    "order": 0,
                    "source": [ "obj-33", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "source": [ "obj-35", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 0 ],
                    "source": [ "obj-36", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-33", 0 ],
                    "source": [ "obj-37", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-33", 0 ],
                    "source": [ "obj-37", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-27", 4 ],
                    "source": [ "obj-38", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 0 ],
                    "source": [ "obj-39", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-22", 0 ],
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "source": [ "obj-40", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 0 ],
                    "source": [ "obj-40", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "source": [ "obj-40", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-32", 0 ],
                    "source": [ "obj-40", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "source": [ "obj-40", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-88", 0 ],
                    "source": [ "obj-40", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "source": [ "obj-41", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 1 ],
                    "source": [ "obj-42", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-24", 0 ],
                    "source": [ "obj-43", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-42", 0 ],
                    "source": [ "obj-44", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-42", 0 ],
                    "source": [ "obj-45", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 0 ],
                    "source": [ "obj-49", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "source": [ "obj-50", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 0 ],
                    "source": [ "obj-51", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-32", 0 ],
                    "source": [ "obj-58", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 0 ],
                    "source": [ "obj-59", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-39", 0 ],
                    "order": 0,
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 1 ],
                    "order": 1,
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "source": [ "obj-60", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-32", 0 ],
                    "source": [ "obj-61", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "source": [ "obj-62", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-30", 0 ],
                    "source": [ "obj-88", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-2": [ "ogain", "ogain", 0 ],
            "obj-20": [ "harmonicity", "harmonicity", 0 ],
            "obj-21": [ "carrier", "carrier", 0 ],
            "obj-24": [ "duration", "duration", 1 ],
            "obj-32": [ "index", "index", 0 ],
            "obj-33": [ "env", "env", 0 ],
            "obj-42": [ "live.button", "live.button", 0 ],
            "obj-88": [ "ConstAmp", "ConstAmp", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0,
        "styles": [
            {
                "name": "gst.comment",
                "default": {
                    "clearcolor": [ 0.254902, 0.27451, 0.32549, 1.0 ],
                    "fontname": [ "Helvetica Light" ],
                    "fontsize": [ 12.0 ],
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "gst.title",
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "newobjYellow-1",
                "default": {
                    "accentcolor": [ 0.82517, 0.78181, 0.059545, 1.0 ],
                    "fontsize": [ 12.059008 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "numberGold-1",
                "default": {
                    "accentcolor": [ 0.764706, 0.592157, 0.101961, 1.0 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "white",
                "default": {
                    "bgcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "textcolor_inverse": [ 0.0, 0.0, 0.0, 1.0 ]
                },
                "parentstyle": "chiba",
                "multi": 0
            }
        ],
        "toolbaradditions": [ "s2n", "Modalys", "Gestural-Sound-Toolkit" ]
    }
}