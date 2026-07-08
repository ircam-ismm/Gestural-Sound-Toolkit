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
        "rect": [ 34.0, 93.0, 255.0, 157.0 ],
        "openinpresentation": 1,
        "gridsize": [ 2.0, 2.0 ],
        "boxes": [
            {
                "box": {
                    "comment": "Audio output",
                    "id": "obj-24",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 103.5, 509.0, 25.0, 25.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 28.0, 482.0, 65.0, 22.0 ],
                    "text": "mc.dup~ 2"
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 324.0, 204.5, 70.0, 22.0 ],
                    "text": "loadmess 3"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 375.0, 25.0, 81.0, 22.0 ],
                    "restore": {
                        "Ftype": [ "bandpass" ],
                        "maxF": [ 2000.0000000000007 ],
                        "minF": [ 100.00000000000006 ],
                        "noise": [ 0.0 ],
                        "ogain": [ 0.0 ]
                    },
                    "text": "autopattr",
                    "varname": "u997006610"
                }
            },
            {
                "box": {
                    "id": "obj-29",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 49.0, 228.0, 81.0, 22.0 ],
                    "text": "edit_mode $1"
                }
            },
            {
                "box": {
                    "autopopulate": 1,
                    "bgcolor": [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_color": [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 1.0 ],
                    "bgfillcolor_color1": [ 0.3764705882352941, 0.3843137254901961, 0.4, 1.0 ],
                    "bgfillcolor_color2": [ 0.2901960784313726, 0.30980392156862746, 0.30196078431372547, 1.0 ],
                    "bgfillcolor_proportion": 0.39,
                    "bgfillcolor_type": "color",
                    "fontname": "Ableton Sans Bold",
                    "fontsize": 9.0,
                    "id": "obj-35",
                    "items": [ "display", ",", "lowpass", ",", "highpass", ",", "bandpass", ",", "bandstop", ",", "peaknotch", ",", "lowshelf", ",", "highshelf", ",", "resonant", ",", "allpass" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 49.0, 202.0, 146.0, 19.0 ],
                    "pattrmode": 1,
                    "presentation": 1,
                    "presentation_rect": [ 4.0, 123.0, 125.63380712270737, 19.0 ],
                    "saved_attribute_attributes": {
                        "bgfillcolor": {
                            "expression": "themecolor.live_control_text_bg"
                        },
                        "textcolor": {
                            "expression": "themecolor.live_control_fg"
                        }
                    },
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "varname": "Ftype"
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 0.0 ],
                    "border": 2,
                    "bordercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "id": "obj-75",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 141.0, 230.0, 88.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 2.0, 121.0, 130.4225396811962, 23.94366279244423 ],
                    "proportion": 0.5,
                    "rounded": 0
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 133.0, 120.0, 29.5, 22.0 ],
                    "text": "!- 1"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 185.0, 120.0, 39.0, 22.0 ],
                    "text": "gate~"
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
                    "patching_rect": [ 536.0, 111.0, 85.0, 16.0 ],
                    "text": "volume"
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 483.0, 47.0, 53.0, 22.0 ],
                    "text": "clip 0. 1."
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 483.0, 103.0, 41.0, 22.0 ],
                    "text": "atodb"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-6",
                    "maxclass": "flonum",
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 236.0, 51.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "annotation": "",
                    "appearance": 2,
                    "fontsize": 11.0,
                    "id": "obj-18",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 295.0, 111.0, 50.0, 17.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 162.0, 56.0, 50.0, 17.0 ],
                    "prototypename": "freq",
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_exponent": 3.333333,
                            "parameter_initial": [ 100 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "minF",
                            "parameter_mmax": 10000.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "minF",
                            "parameter_type": 0,
                            "parameter_unitstyle": 3
                        }
                    },
                    "varname": "minF"
                }
            },
            {
                "box": {
                    "annotation": "",
                    "appearance": 2,
                    "fontsize": 11.0,
                    "id": "obj-19",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 315.0, 141.0, 50.0, 17.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 162.0, 80.0, 50.0, 17.0 ],
                    "prototypename": "freq",
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_exponent": 3.333333,
                            "parameter_initial": [ 2000 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "maxF",
                            "parameter_mmax": 20000.0,
                            "parameter_mmin": 1000.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "maxF",
                            "parameter_type": 0,
                            "parameter_unitstyle": 3
                        }
                    },
                    "varname": "maxF"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 11.0,
                    "id": "obj-23",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 137.0, 86.0, 36.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 154.0, 123.0, 40.0, 19.0 ],
                    "text": "noise"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 11.0,
                    "id": "obj-22",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 295.0, 86.0, 60.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 162.0, 34.0, 47.0, 19.0 ],
                    "text": "freq. Hz"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 11.0,
                    "id": "obj-21",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 260.0, 141.0, 36.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 135.00000000000003, 79.25, 28.0, 19.0 ],
                    "text": "1.->"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 11.0,
                    "id": "obj-20",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 260.0, 111.0, 36.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 135.00000000000003, 55.5, 28.0, 19.0 ],
                    "text": "0.->"
                }
            },
            {
                "box": {
                    "comment": "volume [float]",
                    "id": "obj-16",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 483.0, 9.0, 25.0, 25.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "live.toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 109.0, 86.0, 15.0, 15.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 140.0, 125.0, 15.0, 15.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "off", "on" ],
                            "parameter_initial": [ 0.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "noise",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "noise",
                            "parameter_type": 2
                        }
                    },
                    "varname": "noise"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 28.0, 173.0, 176.0, 22.0 ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 28.0, 132.0, 100.0, 22.0 ],
                    "text": "*~ 1."
                }
            },
            {
                "box": {
                    "channels": 1,
                    "id": "obj-2",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 28.0, 384.0, 48.0, 91.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 204.0, 0.0, 38.0, 124.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_linknames": 1,
                            "parameter_longname": "ogain",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 0,
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
                    "comment": "Audio output",
                    "id": "obj-14",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 28.0, 509.0, 25.0, 25.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Helvetica Neue",
                    "fontsize": 12.0,
                    "id": "obj-61",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 6.0, 4.0, 154.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1.910827875137329, 0.0, 196.08917212486267, 20.0 ],
                    "text": "Filter"
                }
            },
            {
                "box": {
                    "comment": "frequency [float]",
                    "id": "obj-7",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 236.0, 9.0, 25.0, 25.0 ]
                }
            },
            {
                "box": {
                    "comment": "Audio input",
                    "id": "obj-1",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 205.0, 9.0, 25.0, 25.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.156862745098039, 0.156862745098039, 0.156862745098039, 1.0 ],
                    "curvecolor": [ 0.0, 0.854901960784314, 0.282352941176471, 1.0 ],
                    "fontface": 0,
                    "fontsize": 6.0,
                    "hcurvecolor": [ 1.0, 0.725490196078431, 0.003921568627451, 1.0 ],
                    "id": "obj-81",
                    "linmarkers": [ 0.0, 11025.0, 16537.5 ],
                    "markercolor": [ 0.30196078431372547, 0.33725490196078434, 0.403921568627451, 1.0 ],
                    "maxclass": "filtergraph~",
                    "nfilters": 1,
                    "numdisplay": 0,
                    "numinlets": 8,
                    "numoutlets": 7,
                    "outlettype": [ "list", "float", "float", "float", "float", "list", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 50.0, 256.0, 279.40000000000003, 58.5 ],
                    "presentation": 1,
                    "presentation_rect": [ 2.0, 22.0, 131.0, 98.0 ],
                    "saved_attribute_attributes": {
                        "bgcolor": {
                            "expression": "themecolor.live_meter_bg"
                        },
                        "curvecolor": {
                            "expression": "themecolor.live_macro_assignment"
                        },
                        "hcurvecolor": {
                            "expression": "themecolor.live_gain_reduction_line_color"
                        }
                    },
                    "setfilter": [ 0, 3, 1, 1, 0, 303.4654846191406, 1.0, 2.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 ],
                    "varname": "filtergraph~"
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-149",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 236.0, 174.0, 117.0, 21.0 ],
                    "text": "scale 0. 1. 50. 8000."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 11.0,
                    "format": 6,
                    "id": "obj-148",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 236.0, 205.0, 55.0, 21.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-143",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 28.0, 328.0, 149.0, 21.0 ],
                    "text": "biquad~"
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-142",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 28.0, 86.0, 37.0, 21.0 ],
                    "text": "pink~"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-8", 1 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-35", 0 ],
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-142", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "source": [ "obj-143", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-81", 5 ],
                    "source": [ "obj-148", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-148", 0 ],
                    "source": [ "obj-149", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "order": 0,
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 1 ],
                    "order": 1,
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-149", 3 ],
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-149", 4 ],
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "order": 1,
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-24", 0 ],
                    "order": 0,
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-81", 0 ],
                    "source": [ "obj-29", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-81", 0 ],
                    "source": [ "obj-3", 1 ]
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
                    "destination": [ "obj-2", 0 ],
                    "midpoints": [ 492.5, 362.3125, 37.5, 362.3125 ],
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 0 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-149", 0 ],
                    "source": [ "obj-6", 0 ]
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
                    "destination": [ "obj-9", 1 ],
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-143", 0 ],
                    "source": [ "obj-81", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-143", 0 ],
                    "source": [ "obj-9", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-15": [ "noise", "noise", 0 ],
            "obj-18": [ "minF", "minF", 0 ],
            "obj-19": [ "maxF", "maxF", 0 ],
            "obj-2": [ "ogain", "ogain", 0 ],
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
        "toolbaradditions": [ "s2n", "Modalys" ]
    }
}