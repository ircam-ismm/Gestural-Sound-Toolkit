{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 1,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 34.0, 87.0, 138.0, 119.0 ],
        "openinpresentation": 1,
        "boxes": [
            {
                "box": {
                    "bubble": 1,
                    "fontsize": 10.0,
                    "id": "obj-3",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 523.0, 8.0, 87.0, 33.0 ],
                    "text": "mubu.scroll configuration"
                }
            },
            {
                "box": {
                    "comment": "mubu.scroll configuration",
                    "id": "obj-6",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 490.0, 11.0, 25.0, 25.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-82",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 786.0, 92.0, 106.0, 20.0 ],
                    "text": "Compression ratio"
                }
            },
            {
                "box": {
                    "fontname": "Helvetica Light",
                    "fontsize": 13.0,
                    "id": "obj-81",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 128.0, 130.0, 204.0, 19.0 ],
                    "text": "Min/Max from acc riot v3 = 80."
                }
            },
            {
                "box": {
                    "id": "obj-75",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 39.0, 129.0, 86.0, 22.0 ],
                    "text": "vexpr ($f1/80.)"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 11.0,
                    "id": "obj-69",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 61.0, 255.0, 76.0, 21.0 ],
                    "text": "loadmess 0.1"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 11.0,
                    "format": 6,
                    "id": "obj-70",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 61.0, 278.0, 49.0, 21.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-71",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 18.0, 305.0, 192.0, 21.0 ],
                    "text": "zmap 0.1 1. 0. 1."
                }
            },
            {
                "box": {
                    "id": "obj-66",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ -25.0, 228.0, 35.0, 22.0 ],
                    "text": "reset"
                }
            },
            {
                "box": {
                    "id": "obj-35",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 357.0, 291.0, 110.0, 33.0 ],
                    "text": "hack waiting for autobounds bug fix"
                }
            },
            {
                "box": {
                    "id": "obj-38",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 386.0, 245.0, 53.0, 22.0 ],
                    "text": "clip 0. 1."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 10.0,
                    "id": "obj-42",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 490.0, 198.0, 108.0, 20.0 ],
                    "text": "r #0-lower-value"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 10.0,
                    "id": "obj-51",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 593.0, 198.0, 110.0, 20.0 ],
                    "text": "r #0-upper-value"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-52",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 490.0, 229.0, 122.0, 22.0 ],
                    "text": "pak 0. 0."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-53",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 490.0, 262.0, 81.0, 22.0 ],
                    "text": "bounds $1 $2"
                }
            },
            {
                "box": {
                    "autobounds": 0,
                    "autoupdate": 120.0,
                    "bgcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "bgcolordefault": 1,
                    "bounds": [ 0.0, 1.0 ],
                    "colormode": "fgcolor",
                    "colorpattern": [ "red", "green", "blue", "" ],
                    "domainruler": 0,
                    "domainruler_size": 15,
                    "fgcolor": [ 0.129412, 0.129412, 0.129412, 1.0 ],
                    "fgcolordefault": 1,
                    "first_cursor_color": [ 1.0, 0.0, 0.0, 1.0 ],
                    "first_cursor_size": 3,
                    "first_cursor_value": 0.0,
                    "first_cursor_visible": 0,
                    "id": "obj-62",
                    "inversed": 0,
                    "layout": "juxtaposed",
                    "length": 256,
                    "matrix": 0,
                    "maxclass": "mubu.scroll",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 490.0, 293.0, 194.0, 150.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 0.0, 23.0, 128.0, 89.0 ],
                    "rangeruler": 0,
                    "rangeruler_size": 30,
                    "sampleperiod": 10.0,
                    "second_cursor_color": [ 1.0, 0.0, 0.0, 1.0 ],
                    "second_cursor_size": 3,
                    "second_cursor_value": 0.0,
                    "second_cursor_visible": 0,
                    "shape": "lines",
                    "varname": "scroll[1]",
                    "windresize": 0
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 10.0,
                    "id": "obj-29",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 581.0, 92.0, 86.0, 20.0 ],
                    "text": "r #0-gain"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 10.0,
                    "id": "obj-34",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 348.0, 94.0, 97.0, 20.0 ],
                    "text": "r #0-feedback"
                }
            },
            {
                "box": {
                    "id": "obj-28",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 18.0, 350.0, 343.0, 22.0 ],
                    "text": "pack f f"
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 5,
                    "outlettype": [ "float", "float", "float", "float", "float" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 1,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "dsp.gen",
                        "rect": [ 1290.0, 436.0, 621.0, 532.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 434.75, 483.0, 35.0, 22.0 ],
                                    "text": "out 4"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 298.5, 483.0, 35.0, 22.0 ],
                                    "text": "out 3"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 162.0, 483.0, 35.0, 22.0 ],
                                    "text": "out 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 571.0, 483.0, 35.0, 22.0 ],
                                    "text": "out 5"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 571.0, 14.0, 28.0, 22.0 ],
                                    "text": "in 3"
                                }
                            },
                            {
                                "box": {
                                    "code": "//Intensity gen integration\r\nHistory o1_prev, o2_prev, o3_prev, out1_prev;\r\n\r\n//input variables declaration\r\nParam fb(0.9, min=0., max=1.);//feedback integration\r\nParam gain(0.1, min=0.01, max=100);//output gain\r\nParam ratio(0.25, min=0.1, max=0.5);//compression ratio\r\n\r\n//integration\r\no1_prev = abs(in1)+fb*o1_prev;\r\no2_prev = abs(in2)+fb*o2_prev;\r\no3_prev = abs(in3)+fb*o3_prev;\r\n\r\n//gain\r\no1_1 = gain*o1_prev;\r\no2_1 = gain*o2_prev;\r\no3_1 = gain*o3_prev;\r\no1_1 = o1_1*o1_1;\r\no2_1 = o2_1*o2_1;\r\no3_1 = o3_1*o3_1;\r\n\r\nout2 = o1_1;\r\nout3 = o2_1;\r\nout4 = o3_1;\r\n\r\n//intensity <=> quadratic sum\r\nout1_prev = o1_1 + o2_1 + o3_1;\r\nout5 = out1_prev;\r\n\r\n//clip and compression\r\nout1_prev = clip(out1_prev,0,1);\r\nout1 = pow(out1_prev,ratio);\r\n",
                                    "fontface": 0,
                                    "fontname": "<Monospaced>",
                                    "fontsize": 12.0,
                                    "id": "obj-5",
                                    "maxclass": "codebox",
                                    "numinlets": 3,
                                    "numoutlets": 5,
                                    "outlettype": [ "", "", "", "", "" ],
                                    "patching_rect": [ 26.0, 45.0, 564.0, 428.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 26.0, 14.0, 28.0, 22.0 ],
                                    "text": "in 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 298.5, 14.0, 28.0, 22.0 ],
                                    "text": "in 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 26.0, 483.0, 35.0, 22.0 ],
                                    "text": "out 1"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 1 ],
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-5", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "source": [ "obj-5", 4 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-5", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "source": [ "obj-5", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 2 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 18.0, 228.0, 343.0, 22.0 ],
                    "text": "gen"
                }
            },
            {
                "box": {
                    "comment": "gain [float]",
                    "id": "obj-60",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 249.0, 11.0, 25.0, 25.0 ]
                }
            },
            {
                "box": {
                    "comment": "integration feedback",
                    "id": "obj-61",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 153.0, 11.0, 25.0, 25.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-59",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 212.0, 306.0, 94.0, 20.0 ],
                    "text": "(linear) intensity"
                }
            },
            {
                "box": {
                    "id": "obj-58",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 145.0, 261.0, 138.0, 33.0 ],
                    "text": "threshold on compressed intensity"
                }
            },
            {
                "box": {
                    "id": "obj-56",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 669.0, 92.0, 81.0, 20.0 ],
                    "text": "overall gain"
                }
            },
            {
                "box": {
                    "id": "obj-55",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 447.0, 94.0, 125.0, 20.0 ],
                    "text": "feedback (integration)"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 11.0,
                    "id": "obj-40",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 3,
                    "outlettype": [ "", "float", "" ],
                    "patching_rect": [ 18.0, 98.0, 128.0, 21.0 ],
                    "text": "pipo delta @delta.size 3"
                }
            },
            {
                "box": {
                    "comment": "intensity z axis",
                    "id": "obj-5",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 261.0, 398.0, 25.0, 25.0 ]
                }
            },
            {
                "box": {
                    "comment": "intensity y axis",
                    "id": "obj-4",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 180.0, 398.0, 25.0, 25.0 ]
                }
            },
            {
                "box": {
                    "comment": "intensity x axis",
                    "id": "obj-43",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 99.0, 398.0, 25.0, 25.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 11.0,
                    "id": "obj-20",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "float", "float", "float" ],
                    "patching_rect": [ 18.0, 164.5, 343.0, 21.0 ],
                    "text": "unpack f f f"
                }
            },
            {
                "box": {
                    "comment": "compressed and linear intensity",
                    "id": "obj-1",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 18.0, 398.0, 25.0, 25.0 ]
                }
            },
            {
                "box": {
                    "comment": "aaccelerometer data [list of 3 floats]",
                    "id": "obj-91",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 18.0, 61.0, 25.0, 25.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Helvetica Neue Light",
                    "fontsize": 11.0,
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 1,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 241.0, 87.0, 223.0, 341.0 ],
                        "openinpresentation": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "", "", "" ],
                                    "patching_rect": [ 337.0, 231.0, 56.0, 22.0 ],
                                    "restore": {
                                        "feedback": [ 0.9 ],
                                        "gain": [ 0.1 ],
                                        "maxMonitor": [ 1.0 ],
                                        "minMonitor": [ 0.0 ]
                                    },
                                    "text": "autopattr",
                                    "varname": "u599006157"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 11.0,
                                    "id": "obj-20",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 206.0, 37.0, 87.0, 21.0 ],
                                    "text": "loadmess 0.1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 11.0,
                                    "id": "obj-17",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 40.0, 37.0, 87.0, 21.0 ],
                                    "text": "loadmess 0.9"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-60",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 176.5, 37.0, 20.0, 20.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-61",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 9.5, 37.0, 20.0, 20.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 10.0,
                                    "id": "obj-16",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 176.5, 92.0, 86.0, 20.0 ],
                                    "text": "s #0-gain"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 10.0,
                                    "id": "obj-15",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 10.0, 92.0, 113.0, 20.0 ],
                                    "text": "s #0-feedback"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 10.0,
                                    "id": "obj-6",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 224.5, 64.0, 97.0, 18.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 63.0, 48.0, 148.0, 18.0 ],
                                    "text": "overall gain"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 9.0,
                                    "format": 6,
                                    "id": "obj-21",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 176.5, 64.0, 46.0, 19.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 5.0, 48.0, 45.0, 19.0 ],
                                    "varname": "gain"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 10.0,
                                    "id": "obj-10",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 57.5, 64.0, 110.0, 18.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 63.0, 27.0, 157.0, 18.0 ],
                                    "text": "feddback paramter"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.683403, 0.543763, 0.321212, 0.11 ],
                                    "fontname": "Helvetica Light",
                                    "fontsize": 14.0,
                                    "id": "obj-9",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 9.5, 11.0, 239.0, 20.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 5.0, 5.0, 209.0, 20.0 ],
                                    "text": "accelerometer \"intensity\""
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 9.0,
                                    "format": 6,
                                    "id": "obj-48",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 9.5, 64.0, 46.0, 19.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 5.0, 27.0, 45.0, 19.0 ],
                                    "varname": "feedback"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 10.0,
                                    "id": "obj-4",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 394.0, 134.0, 155.0, 18.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 85.0, 112.0, 105.0, 18.0 ],
                                    "text": "Max value for display"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 10.0,
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 345.0, 164.0, 113.0, 20.0 ],
                                    "text": "s #0-upper-value"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 10.0,
                                    "id": "obj-7",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 345.0, 84.0, 111.0, 20.0 ],
                                    "text": "s #0-lower-value"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 11.0,
                                    "id": "obj-19",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 345.0, 32.0, 87.0, 21.0 ],
                                    "text": "loadmess 0."
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 11.0,
                                    "id": "obj-18",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 345.0, 106.0, 83.0, 21.0 ],
                                    "text": "loadmess 1."
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 10.0,
                                    "format": 6,
                                    "id": "obj-14",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 345.0, 134.0, 45.0, 20.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 5.0, 110.0, 45.0, 20.0 ],
                                    "varname": "maxMonitor"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 10.0,
                                    "format": 6,
                                    "id": "obj-13",
                                    "maxclass": "flonum",
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 345.0, 59.0, 45.0, 20.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 5.0, 132.0, 45.0, 20.0 ],
                                    "varname": "minMonitor"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 10.0,
                                    "id": "obj-1",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 394.0, 59.0, 157.0, 18.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 85.0, 133.0, 105.0, 18.0 ],
                                    "text": "Min value for display"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.683403, 0.543763, 0.321212, 0.11 ],
                                    "fontname": "Helvetica Light",
                                    "fontsize": 14.0,
                                    "id": "obj-8",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 19.0, 122.0, 230.0, 20.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 5.0, 164.0, 210.0, 20.0 ],
                                    "text": "Help [accelerometer \"intensity\"]"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-3",
                                    "linecount": 10,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 19.0, 154.0, 284.0, 154.0 ],
                                    "presentation": 1,
                                    "presentation_linecount": 10,
                                    "presentation_rect": [ 5.0, 184.0, 212.0, 154.0 ],
                                    "text": "Compute an intensity, based on the raw acceleremeter data\nDerivate and integrate.\n\n@input: \n    -accelerometer [list]\n\n@output: \n    -  linear intensitu (high values)\n    - compressed intensity (low values)\n",
                                    "textcolor": [ 0.501859, 0.501859, 0.501859, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.683403, 0.543763, 0.321212, 0.11 ],
                                    "fontname": "Helvetica Light",
                                    "fontsize": 14.0,
                                    "id": "obj-11",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 345.0, 6.0, 77.0, 20.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 5.0, 79.0, 210.0, 20.0 ],
                                    "text": "Monitoring"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-14", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-48", 0 ],
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "source": [ "obj-19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-21", 0 ],
                                    "source": [ "obj-20", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "source": [ "obj-21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "source": [ "obj-48", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-21", 0 ],
                                    "source": [ "obj-60", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-48", 0 ],
                                    "source": [ "obj-61", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "s2n", "Modalys" ]
                    },
                    "patching_rect": [ 153.0, 52.0, 115.0, 21.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 80.0, 1.5, 48.0, 21.0 ],
                    "text": "p more",
                    "varname": "more"
                }
            },
            {
                "box": {
                    "fontname": "Helvetica Neue Light",
                    "fontsize": 13.0,
                    "id": "obj-57",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 12.5, 11.0, 88.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 0.0, 1.0, 80.0, 22.0 ],
                    "text": "Acc.Intensity"
                }
            },
            {
                "box": {
                    "attr": "fb",
                    "id": "obj-18",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 348.0, 122.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "gain",
                    "id": "obj-24",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 581.0, 122.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "ratio",
                    "id": "obj-26",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 770.0, 122.0, 150.0, 22.0 ]
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-28", 1 ],
                    "source": [ "obj-17", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "source": [ "obj-17", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-43", 0 ],
                    "source": [ "obj-17", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-17", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-71", 0 ],
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 2 ],
                    "source": [ "obj-20", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 1 ],
                    "source": [ "obj-20", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "order": 1,
                    "source": [ "obj-28", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "order": 0,
                    "source": [ "obj-28", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-24", 0 ],
                    "source": [ "obj-29", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 0 ],
                    "source": [ "obj-34", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-62", 0 ],
                    "source": [ "obj-38", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "source": [ "obj-40", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 1 ],
                    "order": 1,
                    "source": [ "obj-42", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-52", 0 ],
                    "order": 0,
                    "source": [ "obj-42", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 2 ],
                    "order": 1,
                    "source": [ "obj-51", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-52", 1 ],
                    "order": 0,
                    "source": [ "obj-51", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-53", 0 ],
                    "source": [ "obj-52", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-62", 0 ],
                    "source": [ "obj-53", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-62", 0 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 1 ],
                    "source": [ "obj-60", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "source": [ "obj-61", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "source": [ "obj-66", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-70", 0 ],
                    "source": [ "obj-69", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-71", 1 ],
                    "source": [ "obj-70", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-28", 0 ],
                    "source": [ "obj-71", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "source": [ "obj-75", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "source": [ "obj-91", 0 ]
                }
            }
        ],
        "autosave": 0,
        "toolbaradditions": [ "s2n", "Modalys" ]
    }
}