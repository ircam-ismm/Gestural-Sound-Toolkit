{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 2,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 310.0, 96.0, 258.0, 140.0 ],
        "openinpresentation": 1,
        "boxes": [
            {
                "box": {
                    "id": "obj-31",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 393.0, 211.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 169.0, 51.0, 19.0, 19.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 636.0, 93.95385034929177, 29.5, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 636.0, 36.95385034929177, 46.0, 22.0 ],
                    "text": "route 0"
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patching_rect": [ 636.0, 63.95385034929177, 63.0, 22.0 ],
                    "text": "sel resync"
                }
            },
            {
                "box": {
                    "color": [ 1.0, 0.0, 0.0, 1.0 ],
                    "fontsize": 12.0,
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 636.0, 10.95385034929177, 95.0, 22.0 ],
                    "text": "r gst.clock-mess"
                }
            },
            {
                "box": {
                    "id": "obj-42",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 636.0, 187.0, 75.0, 22.0 ],
                    "text": "set clock int."
                }
            },
            {
                "box": {
                    "id": "obj-41",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "bang", "bang", "" ],
                    "patching_rect": [ 586.0, 128.0, 120.0, 22.0 ],
                    "text": "sel 0 1"
                }
            },
            {
                "box": {
                    "id": "obj-39",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 586.0, 160.0, 78.0, 22.0 ],
                    "text": "set clock ext."
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-29",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 205.0, 31.0, 138.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 217.0, 29.0, 23.0, 19.0 ],
                    "text": "ms"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.501961, 0.501961, 0.501961, 1.0 ],
                    "fontsize": 11.0,
                    "format": 6,
                    "hint": "current frameperiod",
                    "id": "obj-28",
                    "ignoreclick": 1,
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 463.0, 181.0, 50.0, 21.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 169.0, 28.0, 46.0, 21.0 ],
                    "saved_attribute_attributes": {
                        "bgcolor": {
                            "expression": "themecolor.theme_accentcolor"
                        }
                    },
                    "triangle": 0
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-14",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 586.0, 221.0, 138.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 190.0, 7.0, 54.0, 19.0 ],
                    "text": "clock ext."
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 586.0, 62.95385034929177, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 169.0, 7.0, 19.0, 19.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "off", "on" ],
                            "parameter_initial": [ 0.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "#0-id-clock",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "#0-id-clock",
                            "parameter_type": 2
                        }
                    },
                    "varname": "#0-id-clock"
                }
            },
            {
                "box": {
                    "comment": "riot type",
                    "id": "obj-2",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 451.0, 19.45385034929177, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Helvetica Neue Light",
                    "id": "obj-140",
                    "items": [ "RIoT-Bitalino", ",", "RIoT-Ircam" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 451.0, 62.45385034929177, 100.0, 23.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 6.849976003170013, 5.0, 90.0, 23.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 175.84997600317, 7.0, 101.0, 22.0 ],
                    "text": "loadmess 8888"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 10.0,
                    "id": "obj-17",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 77.84997600317001, 8.5, 51.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 98.84997600317001, 8.0, 29.28700275, 18.0 ],
                    "text": "Port"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.231372549019608, 0.231372549019608, 0.231372549019608, 0.501960784313725 ],
                    "fontname": "Arial",
                    "fontsize": 9.0,
                    "htricolor": [ 0.87, 0.82, 0.24, 1.0 ],
                    "id": "obj-16",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 127.84997600317001, 8.5, 46.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 127.84997600317001, 7.0, 39.0, 19.0 ],
                    "textcolor": [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
                    "tricolor": [ 0.733333333333333, 0.737254901960784, 0.72156862745098, 1.0 ]
                }
            },
            {
                "box": {
                    "comment": "sampling period [ms]",
                    "id": "obj-3",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 528.0, 140.45385034929177, 25.0, 25.0 ]
                }
            },
            {
                "box": {
                    "comment": "magnetometer [m1 m2 m3]",
                    "id": "obj-5",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 360.44444444444446, 140.45385034929177, 25.0, 25.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Helvetica Neue",
                    "fontsize": 12.0,
                    "id": "obj-6",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 126.84997600317001, 40.45385034929177, 37.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 122.67407300317001, 40.45385034929177, 37.0, 20.0 ],
                    "text": "Mag."
                }
            },
            {
                "box": {
                    "candicane2": [ 1.0, 0.435294117647059, 0.427450980392157, 1.0 ],
                    "candicane3": [ 0.784314, 0.145098, 0.023529, 1.0 ],
                    "candycane": 7,
                    "id": "obj-7",
                    "maxclass": "multislider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 118.67407300317001, 62.45385034929177, 45.0, 67.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 119.0, 62.0, 45.0, 68.0 ],
                    "setstyle": 1,
                    "size": 3,
                    "slidercolor": [ 0.90294361114502, 0.69563353061676, 0.608093023300171, 1.0 ]
                }
            },
            {
                "box": {
                    "comment": "on/off [1/0]",
                    "id": "obj-8",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 528.0, 22.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "sampling period (resampling)",
                    "id": "obj-10",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 412.6666666666667, 22.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "port",
                    "id": "obj-11",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 354.6666666666667, 22.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "Id number",
                    "id": "obj-13",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 296.6666666666667, 22.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Helvetica Neue",
                    "fontsize": 12.0,
                    "id": "obj-21",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 73.13697875317001, 40.45385034929177, 37.0, 34.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 71.13697875317001, 40.45385034929177, 38.0, 20.0 ],
                    "text": "Gyro."
                }
            },
            {
                "box": {
                    "candicane2": [ 0.658823529411765, 0.925490196078431, 0.67843137254902, 1.0 ],
                    "candicane3": [ 0.0, 0.533333, 0.168627, 1.0 ],
                    "candycane": 7,
                    "id": "obj-22",
                    "maxclass": "multislider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 63.13697875317001, 62.45385034929177, 50.0, 67.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 65.0, 62.0, 50.0, 68.0 ],
                    "setminmax": [ -3.0, 3.0 ],
                    "setstyle": 1,
                    "size": 3,
                    "slidercolor": [ 0.552731156349182, 0.704448342323303, 0.50989842414856, 1.0 ]
                }
            },
            {
                "box": {
                    "candycane": 7,
                    "id": "obj-23",
                    "maxclass": "multislider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 10.0, 62.45385034929177, 50.0, 68.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 11.0, 62.45385034929177, 50.0, 68.0 ],
                    "setminmax": [ -3.0, 3.0 ],
                    "setstyle": 1,
                    "size": 2
                }
            },
            {
                "box": {
                    "fontname": "Helvetica Neue",
                    "fontsize": 12.0,
                    "id": "obj-24",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 13.425994500000002, 40.45385034929177, 47.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 12.5, 40.45385034929177, 47.0, 20.0 ],
                    "text": "Accel."
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 12,
                    "outlettype": [ "", "", "", "", "", "int", "int", "", "", "", "int", "" ],
                    "patching_rect": [ 296.0, 97.45385034929177, 309.0, 22.0 ],
                    "text": "gst.riotbitalino"
                }
            },
            {
                "box": {
                    "comment": "gyroscope [g1 g2 g3]",
                    "id": "obj-26",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 328.22222222222223, 140.45385034929177, 25.0, 25.0 ]
                }
            },
            {
                "box": {
                    "comment": "accelerometer [a1 a2 a3]",
                    "id": "obj-27",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 296.0, 140.45385034929177, 25.0, 25.0 ]
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-16", 0 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 2 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 1 ],
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 0 ],
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 3 ],
                    "source": [ "obj-140", 0 ]
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
                    "destination": [ "obj-25", 1 ],
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 0 ],
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-140", 0 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-22", 0 ],
                    "hidden": 1,
                    "order": 1,
                    "source": [ "obj-25", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 0 ],
                    "hidden": 1,
                    "order": 1,
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "order": 0,
                    "source": [ "obj-25", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-27", 0 ],
                    "order": 0,
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-28", 0 ],
                    "order": 1,
                    "source": [ "obj-25", 8 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "order": 0,
                    "source": [ "obj-25", 8 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 0 ],
                    "source": [ "obj-25", 11 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-41", 0 ],
                    "source": [ "obj-25", 10 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "order": 0,
                    "source": [ "obj-25", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "hidden": 1,
                    "order": 1,
                    "source": [ "obj-25", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "source": [ "obj-39", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-39", 0 ],
                    "source": [ "obj-41", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-42", 0 ],
                    "source": [ "obj-41", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "source": [ "obj-42", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 4 ],
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 5 ],
                    "source": [ "obj-9", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-9": [ "#0-id-clock", "#0-id-clock", 0 ],
            "inherited_shortname": 1
        },
        "autosave": 0,
        "toolbaradditions": [ "s2n", "Modalys" ]
    }
}