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
        "rect": [ 100.0, 100.0, 493.0, 890.0 ],
        "boxes": [
            {
                "box": {
                    "fontsize": 8.0,
                    "hidden": 1,
                    "id": "obj-19",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 459.0, 295.0, 29.0, 17.0 ],
                    "text": "thru"
                }
            },
            {
                "box": {
                    "fontsize": 8.0,
                    "hidden": 1,
                    "id": "obj-17",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 376.0, 295.0, 49.0, 17.0 ],
                    "text": "loadmess 1"
                }
            },
            {
                "box": {
                    "fontsize": 8.0,
                    "hidden": 1,
                    "id": "obj-37",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 459.0, 234.0, 126.0, 17.0 ],
                    "text": "loadmess readall overview.mubu"
                }
            },
            {
                "box": {
                    "fontsize": 8.0,
                    "hidden": 1,
                    "id": "obj-40",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 494.0, 295.0, 39.0, 17.0 ],
                    "text": "deferlow"
                }
            },
            {
                "box": {
                    "fontsize": 8.0,
                    "hidden": 1,
                    "id": "obj-44",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 494.0, 274.0, 121.0, 17.0 ],
                    "text": "loadmess resizetowindowrect 4"
                }
            },
            {
                "box": {
                    "fontsize": 8.0,
                    "hidden": 1,
                    "id": "obj-46",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 477.0, 253.0, 90.0, 17.0 ],
                    "text": "loadmess windresize 1"
                }
            },
            {
                "box": {
                    "fontname": "Arial Italic",
                    "fontsize": 14.0,
                    "id": "obj-9",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 217.0, 594.0, 261.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 29.0, 231.0, 264.0, 22.0 ],
                    "text": "embeded <bpatcher> saves parameters."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 14.0,
                    "id": "obj-8",
                    "linecount": 13,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 25.0, 97.0, 472.0, 210.0 ],
                    "presentation": 1,
                    "presentation_linecount": 15,
                    "presentation_rect": [ 14.0, 216.0, 264.0, 241.0 ],
                    "text": "To minimize jitter and lag when tracking human motion.\n\nadaptive frequency low-pass filter of incoming data\n\ninput:\n     - data values [list]\n     - beta : frequency speed factor\n     - cutoff frequency to reach\n     - bypass\n     - sampling rate (Hz)\n\noutput:\n     - [1]: filtered data [list]"
                }
            },
            {
                "box": {
                    "fontname": "Helvetica Neue Medium",
                    "fontsize": 30.0,
                    "id": "obj-1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 99.0, 53.0, 195.0, 42.0 ],
                    "text": "sn.1euro"
                }
            },
            {
                "box": {
                    "fontname": "Helvetica Neue Medium",
                    "fontsize": 20.0,
                    "id": "obj-56",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 21.0, 259.0, 30.0 ],
                    "text": "Gestural Sound Toolkit V2 "
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
                    "patching_rect": [ 44.0, 320.0, 434.0, 259.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 47.0, 257.0, 434.0, 259.0 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.819608, 0.819608, 0.819608, 0.0 ],
                    "bgmode": 2,
                    "border": 1,
                    "clickthrough": 0,
                    "embed": 1,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-31",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "sn.1euro.maxpat",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "" ],
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
                        "rect": [ 34.0, 95.0, 133.0, 119.0 ],
                        "openinpresentation": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-40",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 263.0, 108.0, 35.0, 22.0 ],
                                    "text": "open"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 263.0, 138.0, 51.0, 22.0 ],
                                    "text": "pcontrol"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-37",
                                    "maxclass": "live.text",
                                    "mode": 0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "parameter_enable": 1,
                                    "parameter_mappable": 0,
                                    "patching_rect": [ 263.0, 87.0, 54.0, 15.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 90.0, 5.0, 32.918452501297, 15.021459460258484 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "val1", "val2" ],
                                            "parameter_initial": [ 0.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_invisible": 4,
                                            "parameter_longname": "live.text[3]",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "live.text",
                                            "parameter_type": 2
                                        }
                                    },
                                    "text": "More",
                                    "texton": "Norm. Acc.",
                                    "varname": "live.text[3]"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "obj-11",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 616.0, 494.0, 50.0, 21.0 ],
                                    "text": "deferlow"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "obj-12",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 616.0, 472.0, 161.0, 21.0 ],
                                    "text": "loadmess resizetowindowrect 4"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "obj-26",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 601.0, 449.0, 120.0, 21.0 ],
                                    "text": "loadmess windresize 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 135.0, 125.0, 29.0, 22.0 ],
                                    "text": "thru"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 135.0, 53.0, 183.0, 22.0 ],
                                    "text": "routepass frameperiod framerate"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 677.0, 134.0, 97.0, 22.0 ],
                                    "text": "getattr framerate"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-38",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 9.0, 99.0, 41.0, 22.0 ],
                                    "text": "set $1"
                                }
                            },
                            {
                                "box": {
                                    "annotation": "bypass",
                                    "annotation_name": "bypass",
                                    "hint": "bypass",
                                    "id": "obj-34",
                                    "maxclass": "live.toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 9.0, 129.0, 15.0, 15.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 61.0, 4.0, 15.0, 15.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "off", "on" ],
                                            "parameter_invisible": 2,
                                            "parameter_linknames": 1,
                                            "parameter_longname": "live.toggle",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "bypass",
                                            "parameter_type": 2
                                        }
                                    },
                                    "varname": "live.toggle"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-36",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 9.0, 70.0, 84.0, 22.0 ],
                                    "text": "getattr bypass"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 587.0, 134.0, 84.0, 22.0 ],
                                    "text": "getattr bypass"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-76",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 408.0, 134.0, 69.0, 22.0 ],
                                    "text": "getattr beta"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-35",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 502.0, 134.0, 75.0, 22.0 ],
                                    "text": "getattr fcmin"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-157",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 182.0, 210.0, 119.0, 22.0 ],
                                    "text": "r #0-oneEuroFilter"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 291.0, 513.0, 54.0, 22.0 ],
                                    "text": "deferlow"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-27",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 291.0, 484.0, 109.0, 22.0 ],
                                    "text": "r #0-mubu-scroll"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-197",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 785.0, 134.0, 85.0, 22.0 ],
                                    "text": "getattr bounds"
                                }
                            },
                            {
                                "box": {
                                    "autobounds": 0,
                                    "autoupdate": 120.0,
                                    "bgcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "bgcolordefault": 1,
                                    "bounds": [ -1.3300000429153442, 3.4000000953674316 ],
                                    "colormode": "fgcolor",
                                    "colorpattern": [ "black", "steelblue", "blue" ],
                                    "domainruler": 0,
                                    "domainruler_size": 32,
                                    "fgcolor": [ 0.129412, 0.129412, 0.129412, 1.0 ],
                                    "fgcolordefault": 1,
                                    "first_cursor_color": [ 1.0, 0.0, 0.0, 1.0 ],
                                    "first_cursor_size": 3,
                                    "first_cursor_value": 0.0,
                                    "first_cursor_visible": 0,
                                    "id": "obj-101",
                                    "inversed": 0,
                                    "layout": "juxtaposed",
                                    "length": 256,
                                    "matrix": 0,
                                    "maxclass": "mubu.scroll",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 381.0, 570.0, 49.0, 10.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 0.0, 23.0, 430.0, 225.0 ],
                                    "rangeruler": 1,
                                    "rangeruler_size": 30,
                                    "sampleperiod": 10.0,
                                    "second_cursor_color": [ 1.0, 0.0, 0.0, 1.0 ],
                                    "second_cursor_size": 3,
                                    "second_cursor_value": 0.0,
                                    "second_cursor_visible": 0,
                                    "shape": "lines",
                                    "windresize": 1
                                }
                            },
                            {
                                "box": {
                                    "comment": "aaccelerometer data [list of 3 floats]",
                                    "id": "obj-91",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 135.0, 5.0, 25.0, 25.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-7",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 75.0, 439.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "fontsize": 11.0,
                                    "id": "obj-18",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 420.0, 1.0, 148.0, 23.0 ],
                                    "text": "mubu.scroll configuration"
                                }
                            },
                            {
                                "box": {
                                    "comment": "mubu.scroll configuration",
                                    "id": "obj-17",
                                    "index": 4,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 381.0, 5.0, 25.0, 25.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-57",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 9.0, 8.0, 89.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 0.0, 1.0, 57.0, 21.0 ],
                                    "text": "1€ Filter"
                                }
                            },
                            {
                                "box": {
                                    "comment": "gain [float]",
                                    "id": "obj-60",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 329.6666666666667, 5.0, 25.0, 25.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "integration feedback",
                                    "id": "obj-61",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 247.0, 5.0, 25.0, 25.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 11.0,
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 7,
                                    "numoutlets": 0,
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
                                        "rect": [ 236.0, 93.0, 457.0, 364.0 ],
                                        "openinpresentation": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-11",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 976.0, 130.5, 92.0, 19.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 61.0, 81.5, 92.0, 19.0 ],
                                                    "text": "framerate"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-13",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 924.0, 159.5, 77.0, 22.0 ],
                                                    "text": "framerate $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-14",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 924.0, 94.5, 41.0, 22.0 ],
                                                    "text": "set $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "obj-15",
                                                    "maxclass": "live.numbox",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "float" ],
                                                    "parameter_enable": 1,
                                                    "patching_rect": [ 924.0, 128.5, 53.0, 18.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 9.0, 82.0, 53.0, 18.0 ],
                                                    "saved_attribute_attributes": {
                                                        "valueof": {
                                                            "parameter_linknames": 1,
                                                            "parameter_longname": "framerate",
                                                            "parameter_mmax": 1000.0,
                                                            "parameter_modmode": 3,
                                                            "parameter_shortname": "framerate",
                                                            "parameter_type": 0,
                                                            "parameter_unitstyle": 1
                                                        }
                                                    },
                                                    "varname": "framerate"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-16",
                                                    "index": 6,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 924.0, 33.5, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "obj-46",
                                                    "linecount": 7,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 5.0, 192.5, 284.0, 100.0 ],
                                                    "presentation": 1,
                                                    "presentation_linecount": 10,
                                                    "presentation_rect": [ 230.0, 26.0, 212.0, 141.0 ],
                                                    "text": "\"First beta is set to 0 and fcmin (mincutoff) to a reasonable middle-ground value such as 1 Hz. Then the body part is held steady or moved at a very low speed while fcmin is adjusted to remove jitter and preserve an acceptable lag during these slow movements (decreasing fcmin reduces jitter but increases lag, fcmin must be > 0).\""
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.683403, 0.543763, 0.321212, 0.11 ],
                                                    "fontname": "Arial",
                                                    "fontsize": 14.0,
                                                    "id": "obj-45",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 5.0, 170.5, 230.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 231.0, 4.0, 210.0, 22.0 ],
                                                    "text": "more"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-5",
                                                    "linecount": 11,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 5.0, 32.5, 310.0, 142.0 ],
                                                    "presentation": 1,
                                                    "presentation_linecount": 12,
                                                    "presentation_rect": [ 3.0, 211.0, 209.0, 154.0 ],
                                                    "text": "adaptive frequency low-pass filter of incoming data\n\ninput:\n     - data values [list]\n     - beta : frequency speed factor\n     - cutoff frequency to reach\n     - bypass\n     - sampling rate (Hz)\n\noutput:\n     - [1]: filtered data [list]"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.683403, 0.543763, 0.321212, 0.11 ],
                                                    "fontname": "Arial",
                                                    "fontsize": 14.0,
                                                    "id": "obj-7",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 5.0, 5.5, 120.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 3.0, 191.0, 209.0, 22.0 ],
                                                    "text": "Help [1€ Filter]"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-44",
                                                    "justification": 1,
                                                    "linecolor": [ 0.156862745098039, 0.156862745098039, 0.156862745098039, 1.0 ],
                                                    "maxclass": "live.line",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 302.0, 192.5, 5.0, 100.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 216.0, 4.0, 13.0, 348.0 ],
                                                    "saved_attribute_attributes": {
                                                        "linecolor": {
                                                            "expression": "themecolor.live_meter_bg"
                                                        }
                                                    }
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-36",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 816.0, 130.5, 92.0, 19.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 140.0, 6.0, 27.0, 19.0 ],
                                                    "text": "byp"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-37",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 782.0, 158.5, 63.0, 22.0 ],
                                                    "text": "bypass $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-38",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 782.0, 93.5, 41.0, 22.0 ],
                                                    "text": "set $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-39",
                                                    "maxclass": "live.toggle",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "parameter_enable": 1,
                                                    "patching_rect": [ 782.0, 127.5, 15.0, 15.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 120.0, 6.0, 15.0, 15.0 ],
                                                    "saved_attribute_attributes": {
                                                        "valueof": {
                                                            "parameter_enum": [ "off", "on" ],
                                                            "parameter_linknames": 1,
                                                            "parameter_longname": "bypass",
                                                            "parameter_mmax": 1,
                                                            "parameter_modmode": 0,
                                                            "parameter_shortname": "bypass",
                                                            "parameter_type": 2
                                                        }
                                                    },
                                                    "varname": "bypass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-40",
                                                    "index": 5,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 782.0, 32.5, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-27",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 1057.0, 191.5, 84.0, 22.0 ],
                                                    "text": "pak bounds f f"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-24",
                                                    "linecount": 2,
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 1057.0, 232.5, 94.0, 33.0 ],
                                                    "text": "s #0-mubu-scroll"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-23",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 4,
                                                    "outlettype": [ "", "", "", "" ],
                                                    "patching_rect": [ 377.0, 270.5, 56.0, 22.0 ],
                                                    "restore": {
                                                        "beta": [ 0.904093619210862 ],
                                                        "bypass": [ 0.0 ],
                                                        "fcmin": [ 1.0000000000000004 ],
                                                        "framerate": [ 100.0 ],
                                                        "maxMonitor": [ 3.4000000953674316 ],
                                                        "minMonitor": [ -1.3300000429153442 ]
                                                    },
                                                    "text": "autopattr",
                                                    "varname": "u933006469"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-28",
                                                    "index": 7,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 1089.0, 33.5, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-202",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 1250.0, 94.5, 41.0, 22.0 ],
                                                    "text": "set $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-201",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 1089.0, 94.5, 41.0, 22.0 ],
                                                    "text": "set $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-198",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "float", "float" ],
                                                    "patching_rect": [ 1089.0, 68.5, 180.0, 22.0 ],
                                                    "text": "unpack f f"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-29",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 511.0, 129.5, 101.0, 19.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 59.0, 29.5, 101.0, 19.0 ],
                                                    "text": "beta"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-2",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 681.0, 129.5, 92.0, 19.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 61.0, 55.5, 92.0, 19.0 ],
                                                    "text": "fcmin"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.683403, 0.543763, 0.321212, 0.11 ],
                                                    "fontname": "Arial",
                                                    "fontsize": 14.0,
                                                    "id": "obj-30",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 364.0, 6.5, 239.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 5.0, 4.0, 209.0, 22.0 ],
                                                    "text": "One Euro Filter"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-31",
                                                    "linecount": 2,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 1299.0, 128.5, 102.0, 31.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 58.5, 136.5, 112.0, 19.0 ],
                                                    "text": "Max value for display"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "obj-32",
                                                    "maxclass": "live.numbox",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "float" ],
                                                    "parameter_enable": 1,
                                                    "patching_rect": [ 1250.0, 128.5, 53.0, 18.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 6.0, 137.0, 53.0, 18.0 ],
                                                    "saved_attribute_attributes": {
                                                        "valueof": {
                                                            "parameter_linknames": 1,
                                                            "parameter_longname": "maxMonitor",
                                                            "parameter_mmax": 100.0,
                                                            "parameter_mmin": -100.0,
                                                            "parameter_modmode": 3,
                                                            "parameter_shortname": "maxMonitor",
                                                            "parameter_type": 0,
                                                            "parameter_unitstyle": 1
                                                        }
                                                    },
                                                    "varname": "maxMonitor"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "obj-33",
                                                    "maxclass": "live.numbox",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "float" ],
                                                    "parameter_enable": 1,
                                                    "patching_rect": [ 1089.0, 128.5, 53.0, 18.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 6.0, 162.0, 53.0, 18.0 ],
                                                    "saved_attribute_attributes": {
                                                        "valueof": {
                                                            "parameter_linknames": 1,
                                                            "parameter_longname": "minMonitor",
                                                            "parameter_mmax": 100.0,
                                                            "parameter_mmin": -100.0,
                                                            "parameter_modmode": 3,
                                                            "parameter_shortname": "minMonitor",
                                                            "parameter_type": 0,
                                                            "parameter_unitstyle": 1
                                                        }
                                                    },
                                                    "varname": "minMonitor"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-34",
                                                    "linecount": 2,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 1143.0, 129.5, 100.0, 31.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 60.0, 161.5, 109.0, 19.0 ],
                                                    "text": "Min value for display"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.683403, 0.543763, 0.321212, 0.11 ],
                                                    "fontname": "Arial",
                                                    "fontsize": 14.0,
                                                    "id": "obj-35",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 1087.0, 7.5, 77.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 2.0, 111.0, 210.0, 22.0 ],
                                                    "text": "Monitoring"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-160",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 459.0, 158.5, 49.0, 22.0 ],
                                                    "text": "beta $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-159",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 629.0, 158.5, 54.0, 22.0 ],
                                                    "text": "fcmin $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-157",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 536.0, 218.0, 121.0, 22.0 ],
                                                    "text": "s #0-oneEuroFilter"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "obj-82",
                                                    "maxclass": "live.numbox",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "float" ],
                                                    "parameter_enable": 1,
                                                    "patching_rect": [ 459.0, 130.0, 53.0, 18.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 9.0, 30.0, 53.0, 18.0 ],
                                                    "saved_attribute_attributes": {
                                                        "valueof": {
                                                            "parameter_exponent": 3.0,
                                                            "parameter_linknames": 1,
                                                            "parameter_longname": "beta",
                                                            "parameter_mmax": 10.0,
                                                            "parameter_modmode": 3,
                                                            "parameter_shortname": "beta",
                                                            "parameter_type": 0,
                                                            "parameter_unitstyle": 1
                                                        }
                                                    },
                                                    "varname": "beta"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-81",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 459.0, 94.5, 41.0, 22.0 ],
                                                    "text": "set $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-74",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 629.0, 93.5, 41.0, 22.0 ],
                                                    "text": "set $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "obj-42",
                                                    "maxclass": "live.numbox",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "float" ],
                                                    "parameter_enable": 1,
                                                    "patching_rect": [ 629.0, 127.5, 53.0, 18.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 9.0, 56.0, 53.0, 18.0 ],
                                                    "saved_attribute_attributes": {
                                                        "valueof": {
                                                            "parameter_exponent": 3.0,
                                                            "parameter_linknames": 1,
                                                            "parameter_longname": "fcmin",
                                                            "parameter_mmax": 1000.0,
                                                            "parameter_mmin": 0.001,
                                                            "parameter_modmode": 3,
                                                            "parameter_shortname": "fcmin",
                                                            "parameter_type": 0,
                                                            "parameter_unitstyle": 1
                                                        }
                                                    },
                                                    "varname": "fcmin"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-178",
                                                    "index": 4,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 629.0, 32.5, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-179",
                                                    "index": 3,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 459.0, 32.5, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-180",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 366.0, 32.5, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-185",
                                                    "index": 2,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 407.0, 32.5, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.683403, 0.543763, 0.321212, 0.11 ],
                                                    "fontname": "Arial",
                                                    "fontsize": 14.0,
                                                    "id": "obj-8",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 13.0, 304.0, 230.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 230.0, 205.0, 210.0, 22.0 ],
                                                    "text": "References"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "obj-3",
                                                    "linecount": 6,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 13.0, 336.0, 284.0, 87.0 ],
                                                    "presentation": 1,
                                                    "presentation_linecount": 9,
                                                    "presentation_rect": [ 230.0, 225.0, 212.0, 127.0 ],
                                                    "text": "Casiez, G., Roussel, N. and Vogel, D. (2012). 1€ Filter: A Simple Speed-based Low-pass Filter for Noisy Input in Interactive Systems. Proceedings of the ACM Conference on Human Factors in Computing Systems (CHI '12). Austin, Texas (May 5-12, 2012). New York: ACM Press, pp. 2527-2530."
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-157", 0 ],
                                                    "midpoints": [ 933.5, 203.75, 545.5, 203.75 ],
                                                    "source": [ "obj-13", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-15", 0 ],
                                                    "source": [ "obj-14", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-13", 0 ],
                                                    "source": [ "obj-15", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-157", 0 ],
                                                    "midpoints": [ 638.5, 203.25, 545.5, 203.25 ],
                                                    "source": [ "obj-159", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-14", 0 ],
                                                    "source": [ "obj-16", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-157", 0 ],
                                                    "midpoints": [ 468.5, 203.25, 545.5, 203.25 ],
                                                    "source": [ "obj-160", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-74", 0 ],
                                                    "source": [ "obj-178", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-81", 0 ],
                                                    "source": [ "obj-179", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-82", 0 ],
                                                    "source": [ "obj-180", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-42", 0 ],
                                                    "source": [ "obj-185", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-201", 0 ],
                                                    "source": [ "obj-198", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-202", 0 ],
                                                    "source": [ "obj-198", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-33", 0 ],
                                                    "source": [ "obj-201", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-32", 0 ],
                                                    "source": [ "obj-202", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-24", 0 ],
                                                    "source": [ "obj-27", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-198", 0 ],
                                                    "source": [ "obj-28", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-27", 2 ],
                                                    "source": [ "obj-32", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-27", 1 ],
                                                    "source": [ "obj-33", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-157", 0 ],
                                                    "midpoints": [ 791.5, 203.25, 545.5, 203.25 ],
                                                    "source": [ "obj-37", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-39", 0 ],
                                                    "source": [ "obj-38", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-37", 0 ],
                                                    "source": [ "obj-39", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-38", 0 ],
                                                    "source": [ "obj-40", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-159", 0 ],
                                                    "source": [ "obj-42", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-42", 0 ],
                                                    "source": [ "obj-74", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-82", 0 ],
                                                    "source": [ "obj-81", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-160", 0 ],
                                                    "source": [ "obj-82", 0 ]
                                                }
                                            }
                                        ],
                                        "toolbaradditions": [ "s2n", "Modalys" ]
                                    },
                                    "patching_rect": [ 247.0, 173.0, 515.0, 21.0 ],
                                    "text": "p more",
                                    "varname": "more"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 135.0, 362.0, 241.0, 22.0 ],
                                    "text": "pack f f f"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "float", "float", "float" ],
                                    "patching_rect": [ 135.0, 306.0, 241.0, 22.0 ],
                                    "text": "unpack f f f"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-42",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 3,
                                    "outlettype": [ "float", "float", "float" ],
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 1,
                                            "revision": 4,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "dsp.gen",
                                        "rect": [ 983.0, 266.0, 1039.0, 1129.0 ],
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-8",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 902.5, 1090.0, 35.0, 22.0 ],
                                                    "text": "out 3"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-7",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 461.5, 1090.0, 35.0, 22.0 ],
                                                    "text": "out 2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-6",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 902.0, 12.0, 28.0, 22.0 ],
                                                    "text": "in 3"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-5",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 461.5, 12.0, 28.0, 22.0 ],
                                                    "text": "in 2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "code": "//smoothing factor calculation : alpha\r\n//samplerate = 1 / Te\r\nAlpha(f)\r\n{\r\n\twTe = twopi * f / samplerate;\r\n\treturn wTe / (1 + wTe);\r\n}\r\n\r\nHistory flag_2nd, dx_prev1, out_prev1, dx_prev2, out_prev2, dx_prev3, out_prev3;\r\nHistory out_prev11, out_prev12, out_prev13, out_prev21, out_prev22, out_prev23, out_prev31, out_prev32, out_prev33;\r\n\r\n//input variables declaration\r\nParam fcd(1., max=100, min=0.0);\r\nParam fcmin(1., max=100, min=0.0); //minimum Frequency of the Lowpass filter\r\nParam beta(1., max=100, min=0.0);  //speed\r\nParam framerate(100, min=0.0001);\r\nParam bypass(0, max=1, min=0);\r\n\r\nif(bypass) {\r\n    out_prev1 = in1;\r\n    out_prev2 = in2;\r\n    out_prev3 = in3;\r\n    }\r\nelse {\r\n    if(flag_2nd != 0) //next times\r\n        {\r\n\t    alpha = Alpha(fcd);\r\n\t    dx = (in1 - out_prev11) * samplerate; //rate of change : derivative from input with output\r\n\t    edx = alpha * dx + (1. - alpha) * dx_prev1;//filtered rate of change\r\n\t    dx_prev1 = edx;\r\n\t    fc = fcmin + beta * abs(edx);//adaptative cut-off\r\n\t    alpha = Alpha(fc);\r\n\t    out_prev11 = alpha * in1 + (1. - alpha) * out_prev11;//filter input\r\n\t    out_prev12 = alpha * out_prev11 + (1. - alpha) * out_prev12;\r\n\t    out_prev13 = alpha * out_prev12 + (1. - alpha) * out_prev13;\r\n\t    out_prev1 = alpha * out_prev13 + (1. - alpha) * out_prev1;\r\n\t\r\n\t    dx = (in2 - out_prev21) * samplerate; //rate of change : derivative from input with output\r\n\t    edx = alpha * dx + (1. - alpha) * dx_prev2;//filtered rate of change\r\n\t    dx_prev2 = edx;\r\n\t    fc = fcmin + beta * abs(edx);//adaptative cut-off\r\n\t    alpha = Alpha(fc);\r\n\t    out_prev21 = alpha * in2 + (1. - alpha) * out_prev21;//filter input\r\n\t    out_prev22 = alpha * out_prev21 + (1. - alpha) * out_prev22;\r\n\t    out_prev23 = alpha * out_prev22 + (1. - alpha) * out_prev23;\r\n\t    out_prev2 = alpha * out_prev23 + (1. - alpha) * out_prev2;\r\n\t\r\n\t    dx = (in3 - out_prev31) * samplerate; //rate of change : derivative from input with output\r\n\t    edx = alpha * dx + (1. - alpha) * dx_prev3;//filtered rate of change\r\n\t    dx_prev3 = edx;\r\n\t    fc = fcmin + beta * abs(edx);//adaptative cut-off\r\n\t    alpha = Alpha(fc);\r\n\t    out_prev31 = alpha * in3 + (1. - alpha) * out_prev31;//filter input\r\n\t    out_prev32 = alpha * out_prev31 + (1. - alpha) * out_prev32;\r\n\t    out_prev33 = alpha * out_prev32 + (1. - alpha) * out_prev33;\r\n\t    out_prev3 = alpha * out_prev33 + (1. - alpha) * out_prev3;\r\n        }\r\n    else //the first time in the loop\r\n        {\r\n\t    flag_2nd = 1;\r\n//\t    dx_prev1 = 0.;\r\n\t    out_prev1 = in1;\r\n\t    out_prev11 = in1;\r\n//\t    dx_prev2 = 0.;\r\n\t    out_prev2 = in2;\r\n\t    out_prev21 = in2;\r\n//\t    dx_prev3 = 0.;\r\n\t    out_prev3 = in3;\r\n\t    out_prev31 = in3;\r\n        }\r\n    }\r\nout1 = out_prev1;\r\nout2 = out_prev2;\r\nout3 = out_prev3;",
                                                    "fontface": 0,
                                                    "fontname": "<Monospaced>",
                                                    "fontsize": 12.0,
                                                    "id": "obj-2",
                                                    "maxclass": "codebox",
                                                    "numinlets": 3,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "", "" ],
                                                    "patching_rect": [ 21.0, 45.0, 900.0, 1025.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 21.0, 12.0, 28.0, 22.0 ],
                                                    "text": "in 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-4",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 21.5, 1090.0, 35.0, 22.0 ],
                                                    "text": "out 1"
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-2", 0 ],
                                                    "source": [ "obj-1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-4", 0 ],
                                                    "source": [ "obj-2", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-7", 0 ],
                                                    "source": [ "obj-2", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-8", 0 ],
                                                    "source": [ "obj-2", 2 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-2", 1 ],
                                                    "source": [ "obj-5", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-2", 2 ],
                                                    "source": [ "obj-6", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 135.0, 334.0, 241.0, 22.0 ],
                                    "text": "gen @title oneEuroFilter"
                                }
                            },
                            {
                                "box": {
                                    "attr": "beta",
                                    "id": "obj-1",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 196.0, 243.0, 87.0, 22.0 ],
                                    "text_width": 38.0
                                }
                            },
                            {
                                "box": {
                                    "attr": "fcmin",
                                    "id": "obj-2",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 285.0, 243.0, 87.0, 22.0 ],
                                    "text_width": 39.0
                                }
                            },
                            {
                                "box": {
                                    "attr": "bypass",
                                    "id": "obj-23",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 381.0, 243.0, 81.0, 22.0 ],
                                    "text_width": 48.0
                                }
                            },
                            {
                                "box": {
                                    "attr": "framerate",
                                    "id": "obj-8",
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 468.0, 243.0, 150.0, 22.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-42", 0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-10", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-42", 0 ],
                                    "order": 1,
                                    "source": [ "obj-10", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "order": 0,
                                    "source": [ "obj-10", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-101", 0 ],
                                    "source": [ "obj-11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-101", 0 ],
                                    "source": [ "obj-14", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-42", 0 ],
                                    "source": [ "obj-157", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-101", 0 ],
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-101", 0 ],
                                    "midpoints": [ 827.5, 560.11328125, 390.5, 560.11328125 ],
                                    "source": [ "obj-197", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 6 ],
                                    "source": [ "obj-197", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-42", 0 ],
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-42", 0 ],
                                    "source": [ "obj-23", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-42", 0 ],
                                    "source": [ "obj-24", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 4 ],
                                    "source": [ "obj-24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-101", 0 ],
                                    "source": [ "obj-26", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "source": [ "obj-27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-42", 2 ],
                                    "source": [ "obj-3", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-42", 1 ],
                                    "source": [ "obj-3", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-42", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-23", 0 ],
                                    "source": [ "obj-34", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-42", 0 ],
                                    "source": [ "obj-35", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 3 ],
                                    "source": [ "obj-35", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-38", 0 ],
                                    "source": [ "obj-36", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-42", 0 ],
                                    "source": [ "obj-36", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-40", 0 ],
                                    "source": [ "obj-37", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-34", 0 ],
                                    "source": [ "obj-38", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-101", 0 ],
                                    "order": 0,
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "order": 1,
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "source": [ "obj-40", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 2 ],
                                    "source": [ "obj-42", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 1 ],
                                    "source": [ "obj-42", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-42", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-42", 0 ],
                                    "source": [ "obj-6", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 5 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 1 ],
                                    "source": [ "obj-60", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-61", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-42", 0 ],
                                    "source": [ "obj-76", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 2 ],
                                    "source": [ "obj-76", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-42", 0 ],
                                    "source": [ "obj-8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "source": [ "obj-9", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-91", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "s2n", "Modalys" ]
                    },
                    "patching_rect": [ 44.0, 618.0, 434.0, 252.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 47.0, 555.0, 434.0, 229.0 ],
                    "varname": "sn.1euro",
                    "viewvisibility": 1
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-48", 4 ],
                    "hidden": 1,
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-48", 5 ],
                    "hidden": 1,
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "hidden": 1,
                    "source": [ "obj-37", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "hidden": 1,
                    "source": [ "obj-40", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "hidden": 1,
                    "source": [ "obj-44", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "hidden": 1,
                    "source": [ "obj-46", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 0 ],
                    "source": [ "obj-48", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-31::obj-34": [ "live.toggle", "bypass", 0 ],
            "obj-31::obj-37": [ "live.text[3]", "live.text", 0 ],
            "obj-31::obj-5::obj-15": [ "framerate", "framerate", 0 ],
            "obj-31::obj-5::obj-32": [ "maxMonitor", "maxMonitor", 0 ],
            "obj-31::obj-5::obj-33": [ "minMonitor", "minMonitor", 0 ],
            "obj-31::obj-5::obj-39": [ "bypass", "bypass", 0 ],
            "obj-31::obj-5::obj-42": [ "fcmin", "fcmin", 0 ],
            "obj-31::obj-5::obj-82": [ "beta", "beta", 0 ],
            "obj-48::obj-15": [ "live.text[4]", "live.text", 0 ],
            "obj-48::obj-16": [ "loop", "loop", 0 ],
            "obj-48::obj-18": [ "live.text[7]", "live.text", 0 ],
            "obj-48::obj-4": [ "live.text[5]", "live.text", 0 ],
            "obj-48::obj-40": [ "live.toggle[3]", "live.toggle", 0 ],
            "obj-48::obj-50": [ "live.numbox", "live.numbox", 0 ],
            "obj-48::obj-57": [ "live.toggle[2]", "autoscale", 0 ],
            "obj-48::obj-6": [ "live.text[6]", "live.text", 0 ],
            "obj-48::obj-71": [ "live.toggle[1]", "live.toggle", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "parameter_overrides": {
                "obj-48::obj-40": {
                    "parameter_longname": "live.toggle[3]"
                },
                "obj-48::obj-57": {
                    "parameter_longname": "live.toggle[2]"
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0,
        "toolbaradditions": [ "s2n", "Modalys" ]
    }
}