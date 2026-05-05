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
        "rect": [ 100.0, 100.0, 487.0, 877.0 ],
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
                    "patching_rect": [ 455.0, 296.0, 29.0, 17.0 ],
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
                    "patching_rect": [ 372.0, 296.0, 49.0, 17.0 ],
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
                    "patching_rect": [ 455.0, 235.0, 126.0, 17.0 ],
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
                    "patching_rect": [ 490.0, 296.0, 39.0, 17.0 ],
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
                    "patching_rect": [ 490.0, 275.0, 121.0, 17.0 ],
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
                    "patching_rect": [ 473.0, 254.0, 90.0, 17.0 ],
                    "text": "loadmess windresize 1"
                }
            },
            {
                "box": {
                    "fontname": "Arial Italic",
                    "fontsize": 14.0,
                    "id": "obj-11",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 213.0, 595.0, 261.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 29.0, 231.0, 264.0, 22.0 ],
                    "text": "embeded <bpatcher> saves parameters."
                }
            },
            {
                "box": {
                    "fontface": 2,
                    "fontname": "Arial",
                    "fontsize": 14.0,
                    "id": "obj-9",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 58.0, 237.0, 305.0, 38.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 5.0, 306.0, 322.0, 38.0 ],
                    "text": "Note: uses PiPo from ISMM team at IRCAM Centre Pompidou http://ismm.ircam.fr/pipo/"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 14.0,
                    "id": "obj-10",
                    "linecount": 8,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 63.0, 99.0, 308.0, 132.0 ],
                    "presentation": 1,
                    "presentation_linecount": 8,
                    "presentation_rect": [ 5.0, 186.0, 289.0, 132.0 ],
                    "text": "Bandpass filtering of incoming data (biquad)\n\ninput: \n     - data values [list]\n     - bandpass frequency\n     - sampling rate\noutput:\n     - [1]: filtered data [list]"
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
                    "patching_rect": [ 99.0, 53.0, 197.0, 42.0 ],
                    "text": "gst.bandpass"
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
                    "patching_rect": [ 40.0, 321.0, 434.0, 259.0 ],
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
                    "name": "gst.bandpass.maxpat",
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
                        "rect": [ 34.0, 93.0, 134.0, 117.0 ],
                        "openinpresentation": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 116.0, 157.0, 91.0, 22.0 ],
                                    "text": "route framerate"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 441.0, 469.0, 50.0, 21.0 ],
                                    "text": "deferlow"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "obj-18",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 441.0, 447.0, 161.0, 21.0 ],
                                    "text": "loadmess resizetowindowrect 4"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "obj-19",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 426.0, 424.0, 120.0, 21.0 ],
                                    "text": "loadmess windresize 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-40",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 520.0, 229.0, 35.0, 22.0 ],
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
                                    "patching_rect": [ 520.0, 259.0, 51.0, 22.0 ],
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
                                    "patching_rect": [ 520.0, 208.0, 54.0, 15.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 91.0, 3.989270269870758, 32.918452501297, 15.021459460258484 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "val1", "val2" ],
                                            "parameter_initial": [ 0.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_invisible": 4,
                                            "parameter_longname": "live.text[28]",
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
                                    "id": "obj-12",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 34.0, 175.5, 29.0, 22.0 ],
                                    "text": "thru"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-17",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 34.0, 112.0, 183.0, 22.0 ],
                                    "text": "routepass frameperiod framerate"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 249.0, 430.0, 54.0, 22.0 ],
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
                                    "patching_rect": [ 249.0, 401.0, 109.0, 22.0 ],
                                    "text": "r #0-mubu-scroll"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-157",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 250.0, 318.0, 83.0, 22.0 ],
                                    "text": "r #0-biquad"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-197",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 1145.0, 124.0, 85.0, 22.0 ],
                                    "text": "getattr bounds"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 11.0,
                                    "id": "obj-195",
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
                                        "rect": [ 237.0, 93.0, 463.0, 358.0 ],
                                        "openinpresentation": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-8",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "int", "int" ],
                                                    "patching_rect": [ 310.0, 175.0, 61.0, 22.0 ],
                                                    "text": "change 0."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-29",
                                                    "justification": 1,
                                                    "maxclass": "live.line",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 326.0, 341.0, 5.0, 100.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 220.0, 7.0, 13.0, 345.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-27",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 775.0, 207.0, 84.0, 22.0 ],
                                                    "text": "pak bounds f f"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 10.0,
                                                    "id": "obj-24",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 775.0, 248.0, 94.0, 20.0 ],
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
                                                    "patching_rect": [ 400.0, 277.0, 56.0, 22.0 ],
                                                    "restore": {
                                                        "Q": [ 1.0 ],
                                                        "cut-frequency": [ 5.000000000000002 ],
                                                        "frame-rate": [ 100.0 ],
                                                        "gain": [ 1.0 ],
                                                        "maxMonitor": [ 1.0 ],
                                                        "minMonitor": [ -1.0 ]
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
                                                    "patching_rect": [ 807.0, 49.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-202",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 968.0, 110.0, 41.0, 22.0 ],
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
                                                    "patching_rect": [ 807.0, 110.0, 41.0, 22.0 ],
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
                                                    "patching_rect": [ 807.0, 84.0, 180.0, 22.0 ],
                                                    "text": "unpack f f"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 1.0, 1.0, 1.0, 0.4 ],
                                                    "fontname": "Arial",
                                                    "fontsize": 14.0,
                                                    "id": "obj-26",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 468.0, 23.0, 239.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 232.0, 7.0, 223.0, 22.0 ],
                                                    "text": "more"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-12",
                                                    "linecount": 2,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 639.0, 146.0, 70.0, 31.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 94.0, 59.5, 98.0, 19.0 ],
                                                    "text": "Bandpass width Q"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-10",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 520.0, 145.0, 67.0, 19.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 284.0, 35.5, 67.0, 19.0 ],
                                                    "text": "gain (linear)"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 11.0,
                                                    "id": "obj-6",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 192.0, 146.0, 87.0, 19.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 94.0, 34.5, 87.0, 19.0 ],
                                                    "text": "cutoff frequency"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 11.0,
                                                    "id": "obj-2",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 362.0, 146.0, 59.0, 19.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 94.0, 84.5, 59.0, 19.0 ],
                                                    "text": "frame rate"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 1.0, 1.0, 1.0, 0.4 ],
                                                    "fontname": "Arial",
                                                    "fontsize": 14.0,
                                                    "id": "obj-9",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 45.5, 23.0, 239.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 7.0, 7.0, 209.0, 22.0 ],
                                                    "text": "Bandpass Filtering"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-4",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 1017.0, 144.0, 112.0, 19.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 94.0, 139.0, 116.0, 19.0 ],
                                                    "text": "Max value for display"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "obj-14",
                                                    "maxclass": "live.numbox",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "float" ],
                                                    "parameter_enable": 1,
                                                    "patching_rect": [ 968.0, 144.0, 53.0, 18.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 9.5, 137.0, 53.0, 18.0 ],
                                                    "saved_attribute_attributes": {
                                                        "valueof": {
                                                            "parameter_linknames": 1,
                                                            "parameter_longname": "maxMonitor",
                                                            "parameter_mmax": 180.0,
                                                            "parameter_mmin": -180.0,
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
                                                    "id": "obj-13",
                                                    "maxclass": "live.numbox",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "float" ],
                                                    "parameter_enable": 1,
                                                    "patching_rect": [ 807.0, 144.0, 53.0, 18.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 9.5, 162.0, 53.0, 18.0 ],
                                                    "saved_attribute_attributes": {
                                                        "valueof": {
                                                            "parameter_linknames": 1,
                                                            "parameter_longname": "minMonitor",
                                                            "parameter_mmax": 180.0,
                                                            "parameter_mmin": -180.0,
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
                                                    "id": "obj-1",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 861.0, 145.0, 109.0, 19.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 94.0, 164.0, 115.0, 19.0 ],
                                                    "text": "Min value for display"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 1.0, 1.0, 1.0, 0.4 ],
                                                    "fontname": "Arial",
                                                    "fontsize": 14.0,
                                                    "id": "obj-11",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 805.0, 23.0, 77.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 8.0, 111.0, 210.0, 22.0 ],
                                                    "text": "Monitoring"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-162",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 587.0, 175.0, 74.0, 22.0 ],
                                                    "text": "biquad.Q $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-161",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 468.0, 175.0, 87.0, 22.0 ],
                                                    "text": "biquad.gain $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-160",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 140.0, 175.0, 117.0, 22.0 ],
                                                    "text": "biquad.frequency $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-159",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 310.0, 204.0, 77.0, 22.0 ],
                                                    "text": "framerate $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-157",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 217.0, 305.0, 85.0, 22.0 ],
                                                    "text": "s #0-biquad"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "obj-125",
                                                    "maxclass": "live.numbox",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "float" ],
                                                    "parameter_enable": 1,
                                                    "patching_rect": [ 587.0, 143.0, 50.0, 18.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 9.5, 58.0, 53.0, 18.0 ],
                                                    "saved_attribute_attributes": {
                                                        "valueof": {
                                                            "parameter_initial": [ 1 ],
                                                            "parameter_linknames": 1,
                                                            "parameter_longname": "Q",
                                                            "parameter_mmax": 10.0,
                                                            "parameter_mmin": 0.001,
                                                            "parameter_modmode": 3,
                                                            "parameter_shortname": "Q",
                                                            "parameter_type": 0,
                                                            "parameter_unitstyle": 1
                                                        }
                                                    },
                                                    "varname": "Q"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-126",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 587.0, 109.0, 41.0, 22.0 ],
                                                    "text": "set $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "obj-86",
                                                    "maxclass": "live.numbox",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "float" ],
                                                    "parameter_enable": 1,
                                                    "patching_rect": [ 468.0, 143.0, 50.0, 18.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 232.0, 35.5, 53.0, 18.0 ],
                                                    "saved_attribute_attributes": {
                                                        "valueof": {
                                                            "parameter_initial": [ 1 ],
                                                            "parameter_linknames": 1,
                                                            "parameter_longname": "gain",
                                                            "parameter_mmax": 40.0,
                                                            "parameter_modmode": 3,
                                                            "parameter_shortname": "gain",
                                                            "parameter_type": 0,
                                                            "parameter_unitstyle": 1
                                                        }
                                                    },
                                                    "varname": "gain"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-97",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 468.0, 109.0, 41.0, 22.0 ],
                                                    "text": "set $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "annotation": "",
                                                    "appearance": 2,
                                                    "fontsize": 12.0,
                                                    "id": "obj-82",
                                                    "maxclass": "live.numbox",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "float" ],
                                                    "parameter_enable": 1,
                                                    "patching_rect": [ 140.0, 144.0, 53.0, 18.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 9.5, 35.0, 53.0, 18.0 ],
                                                    "prototypename": "freq",
                                                    "saved_attribute_attributes": {
                                                        "valueof": {
                                                            "parameter_exponent": 3.333333,
                                                            "parameter_initial": [ 10.999999999999995 ],
                                                            "parameter_initial_enable": 1,
                                                            "parameter_linknames": 1,
                                                            "parameter_longname": "cut-frequency",
                                                            "parameter_mmax": 1000.0,
                                                            "parameter_mmin": 0.1,
                                                            "parameter_modmode": 0,
                                                            "parameter_shortname": "fcut",
                                                            "parameter_type": 0,
                                                            "parameter_unitstyle": 3
                                                        }
                                                    },
                                                    "varname": "cut-frequency"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-81",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 140.0, 111.0, 41.0, 22.0 ],
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
                                                    "patching_rect": [ 310.0, 110.0, 41.0, 22.0 ],
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
                                                    "patching_rect": [ 310.0, 144.0, 53.0, 18.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 9.5, 83.0, 53.0, 18.0 ],
                                                    "saved_attribute_attributes": {
                                                        "valueof": {
                                                            "parameter_linknames": 1,
                                                            "parameter_longname": "frame-rate",
                                                            "parameter_mmax": 1000.0,
                                                            "parameter_modmode": 3,
                                                            "parameter_shortname": "framerate",
                                                            "parameter_type": 0,
                                                            "parameter_unitstyle": 1
                                                        }
                                                    },
                                                    "varname": "frame-rate"
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
                                                    "patching_rect": [ 310.0, 49.0, 30.0, 30.0 ]
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
                                                    "patching_rect": [ 140.0, 49.0, 30.0, 30.0 ]
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
                                                    "patching_rect": [ 47.0, 49.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-184",
                                                    "index": 5,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 468.0, 49.0, 30.0, 30.0 ]
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
                                                    "patching_rect": [ 88.0, 49.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-186",
                                                    "index": 6,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 587.0, 49.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 2,
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-3",
                                                    "linecount": 2,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 1.0, 475.0, 231.0, 31.0 ],
                                                    "presentation": 1,
                                                    "presentation_linecount": 2,
                                                    "presentation_rect": [ 232.0, 321.0, 226.0, 31.0 ],
                                                    "text": "Note: uses PiPo from ISMM team at IRCAM Centre Pompidou http://ismm.ircam.fr/pipo/"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "obj-5",
                                                    "linecount": 9,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 3.0, 355.0, 370.0, 127.0 ],
                                                    "presentation": 1,
                                                    "presentation_linecount": 10,
                                                    "presentation_rect": [ 8.0, 211.0, 209.0, 141.0 ],
                                                    "text": "Bandpass filtering of incoming data (biquad)\n\ninput: \n     - data values [list]\n     - bandpass frequency\n     - sampling rate\n\noutput:\n     - [1]: filtered data [list]"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 1.0, 1.0, 1.0, 0.4 ],
                                                    "fontname": "Arial",
                                                    "fontsize": 14.0,
                                                    "id": "obj-7",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 3.0, 328.0, 120.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 8.0, 191.0, 209.0, 22.0 ],
                                                    "text": "Help [Bandpass]"
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-162", 0 ],
                                                    "source": [ "obj-125", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-125", 0 ],
                                                    "source": [ "obj-126", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-27", 1 ],
                                                    "source": [ "obj-13", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-27", 2 ],
                                                    "source": [ "obj-14", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-157", 0 ],
                                                    "midpoints": [ 319.5, 240.0, 226.5, 240.0 ],
                                                    "source": [ "obj-159", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-157", 0 ],
                                                    "midpoints": [ 149.5, 240.0, 226.5, 240.0 ],
                                                    "source": [ "obj-160", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-157", 0 ],
                                                    "midpoints": [ 477.5, 240.0, 226.5, 240.0 ],
                                                    "source": [ "obj-161", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-157", 0 ],
                                                    "midpoints": [ 596.5, 240.0, 226.5, 240.0 ],
                                                    "source": [ "obj-162", 0 ]
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
                                                    "destination": [ "obj-97", 0 ],
                                                    "source": [ "obj-184", 0 ]
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
                                                    "destination": [ "obj-126", 0 ],
                                                    "source": [ "obj-186", 0 ]
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
                                                    "destination": [ "obj-13", 0 ],
                                                    "source": [ "obj-201", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-14", 0 ],
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
                                                    "destination": [ "obj-8", 0 ],
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
                                                    "destination": [ "obj-159", 0 ],
                                                    "source": [ "obj-8", 0 ]
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
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-161", 0 ],
                                                    "source": [ "obj-86", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-86", 0 ],
                                                    "source": [ "obj-97", 0 ]
                                                }
                                            }
                                        ],
                                        "toolbaradditions": [ "s2n", "Modalys" ],
                                        "saved_attribute_attributes": {
                                            "editing_bgcolor": {
                                                "expression": "themecolor.theme_editing_bgcolor"
                                            },
                                            "locked_bgcolor": {
                                                "expression": "themecolor.theme_locked_bgcolor"
                                            }
                                        }
                                    },
                                    "patching_rect": [ 514.0, 176.0, 635.0, 21.0 ],
                                    "saved_attribute_attributes": {
                                        "editing_bgcolor": {
                                            "expression": "themecolor.theme_editing_bgcolor"
                                        },
                                        "locked_bgcolor": {
                                            "expression": "themecolor.theme_locked_bgcolor"
                                        }
                                    },
                                    "text": "p more",
                                    "varname": "more"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-127",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 1048.0, 124.0, 95.0, 22.0 ],
                                    "text": "getattr biquad.Q"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-124",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 929.0, 124.0, 108.0, 22.0 ],
                                    "text": "getattr biquad.gain"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-76",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 681.0, 124.0, 138.0, 22.0 ],
                                    "text": "getattr biquad.frequency"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-35",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 825.0, 124.0, 97.0, 22.0 ],
                                    "text": "getattr framerate"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-14",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 667.0, 60.0, 94.0, 37.0 ],
                                    "text": "mubu.scroll configuration"
                                }
                            },
                            {
                                "box": {
                                    "comment": "mubu.scroll configuration",
                                    "id": "obj-5",
                                    "index": 4,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 637.0, 66.0, 25.0, 25.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 389.0, 530.0, 110.0, 33.0 ],
                                    "text": "hack waiting for autobounds bug fix"
                                }
                            },
                            {
                                "box": {
                                    "comment": "Sampling Rate (Hz)",
                                    "id": "obj-26",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 569.0, 66.0, 25.0, 25.0 ]
                                }
                            },
                            {
                                "box": {
                                    "attr": "framerate",
                                    "id": "obj-38",
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 228.0, 278.0, 211.0, 22.0 ],
                                    "text_width": 121.0
                                }
                            },
                            {
                                "box": {
                                    "attr": "biquad.Q",
                                    "id": "obj-22",
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 228.0, 221.0, 211.0, 22.0 ],
                                    "text_width": 121.0
                                }
                            },
                            {
                                "box": {
                                    "attr": "biquad.frequency",
                                    "id": "obj-16",
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 228.0, 168.0, 211.0, 22.0 ],
                                    "text_width": 121.0
                                }
                            },
                            {
                                "box": {
                                    "attr": "biquad.gain",
                                    "id": "obj-15",
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 228.0, 112.0, 211.0, 22.0 ],
                                    "text_width": 121.0
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "float", "" ],
                                    "patching_rect": [ 192.0, 368.0, 516.0, 22.0 ],
                                    "text": "pipo biquad @framerate 100 @biquad.filtermode bandpass @biquad.frequency 5 @biquad.Q 1"
                                }
                            },
                            {
                                "box": {
                                    "comment": "Cutoff Frequency (Hz)",
                                    "id": "obj-9",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 514.0, 66.0, 25.0, 25.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 11.0,
                                    "id": "obj-60",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
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
                                        "rect": [ 134.0, 159.0, 342.0, 193.0 ],
                                        "boxes": [
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 10.0,
                                                    "id": "obj-2",
                                                    "linecount": 10,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 10.0, 25.0, 310.0, 118.0 ],
                                                    "presentation": 1,
                                                    "presentation_linecount": 12,
                                                    "presentation_rect": [ 80.0, 101.0, 156.0, 141.0 ],
                                                    "text": "Lowpass filtering of incoming data\n\ninput: \n     - data values [list]\n     - cutoff frequency (cut out \n       frequencies higher  than this value)\n     - sampling rate\n\noutput:\n     - [1]: filtered data [list]",
                                                    "textcolor": [ 0.501859, 0.501859, 0.501859, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 14.0,
                                                    "id": "obj-1",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 10.0, 6.0, 309.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 65.0, 86.0, 203.0, 22.0 ],
                                                    "text": "Lowpass filtering",
                                                    "textcolor": [ 0.501859, 0.501859, 0.501859, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 10.0,
                                                    "id": "obj-59",
                                                    "linecount": 3,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 507.0, 190.0, 146.0, 40.0 ],
                                                    "presentation": 1,
                                                    "presentation_linecount": 4,
                                                    "presentation_rect": [ 20.0, 53.0, 128.0, 51.0 ],
                                                    "text": "output: \n   - left: values [list] if open\n   - right: 0/1 close or open [int]",
                                                    "textcolor": [ 0.501859, 0.501859, 0.501859, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 10.0,
                                                    "id": "obj-58",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 507.0, 173.0, 153.0, 18.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 20.0, 41.0, 153.0, 18.0 ],
                                                    "text": "input: data values [list]",
                                                    "textcolor": [ 0.501859, 0.501859, 0.501859, 1.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [],
                                        "toolbaradditions": [ "s2n" ]
                                    },
                                    "patching_rect": [ 317.0, 69.0, 44.0, 21.0 ],
                                    "text": "p help"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-24",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 34.0, 13.0, 66.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 0.0, 1.0, 66.0, 21.0 ],
                                    "text": "Bandpass"
                                }
                            },
                            {
                                "box": {
                                    "autobounds": 0,
                                    "autoupdate": 120.0,
                                    "bgcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "bgcolordefault": 1,
                                    "bounds": [ -1.0, 1.0 ],
                                    "colormode": "fgcolor",
                                    "colorpattern": [ "black", "steelblue", "blue" ],
                                    "domainruler": 0,
                                    "domainruler_size": 15,
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
                                    "patching_rect": [ 295.0, 576.0, 135.0, 10.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 0.0, 23.0, 430.0, 203.0 ],
                                    "rangeruler": 0,
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
                                    "comment": "filtered data",
                                    "id": "obj-2",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 192.0, 612.0, 25.0, 25.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "input [List]",
                                    "id": "obj-1",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 192.0, 68.0, 25.0, 25.0 ]
                                }
                            },
                            {
                                "box": {
                                    "attr": "bounds",
                                    "id": "obj-3",
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 501.0, 515.0, 218.0, 22.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-101", 0 ],
                                    "order": 0,
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "order": 1,
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
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "midpoints": [ 983.0, 354.0, 201.5, 354.0 ],
                                    "source": [ "obj-124", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-195", 4 ],
                                    "source": [ "obj-124", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "midpoints": [ 1095.5, 354.0, 201.5, 354.0 ],
                                    "source": [ "obj-127", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-195", 5 ],
                                    "source": [ "obj-127", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-195", 0 ],
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-157", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-17", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "order": 1,
                                    "source": [ "obj-17", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "order": 0,
                                    "source": [ "obj-17", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-101", 0 ],
                                    "source": [ "obj-19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-101", 0 ],
                                    "midpoints": [ 1187.5, 571.3359375, 304.5, 571.3359375 ],
                                    "source": [ "obj-197", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-195", 6 ],
                                    "source": [ "obj-197", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-22", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-195", 1 ],
                                    "source": [ "obj-26", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "source": [ "obj-27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-101", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "midpoints": [ 873.5, 354.0, 201.5, 354.0 ],
                                    "source": [ "obj-35", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-195", 3 ],
                                    "source": [ "obj-35", 0 ]
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
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-38", 0 ]
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
                                    "destination": [ "obj-101", 0 ],
                                    "midpoints": [ 646.5, 570.39453125, 304.5, 570.39453125 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-195", 1 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "midpoints": [ 750.0, 354.0, 201.5, 354.0 ],
                                    "source": [ "obj-76", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-195", 2 ],
                                    "source": [ "obj-76", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-101", 0 ],
                                    "source": [ "obj-8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-195", 0 ],
                                    "source": [ "obj-9", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "s2n", "Modalys" ]
                    },
                    "patching_rect": [ 40.0, 619.0, 434.0, 230.0 ],
                    "varname": "gst.bandpass",
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
            "obj-31::obj-195::obj-125": [ "Q", "Q", 0 ],
            "obj-31::obj-195::obj-13": [ "minMonitor", "minMonitor", 0 ],
            "obj-31::obj-195::obj-14": [ "maxMonitor", "maxMonitor", 0 ],
            "obj-31::obj-195::obj-42": [ "frame-rate", "framerate", 0 ],
            "obj-31::obj-195::obj-82": [ "cut-frequency", "fcut", 0 ],
            "obj-31::obj-195::obj-86": [ "gain", "gain", 0 ],
            "obj-31::obj-37": [ "live.text[28]", "live.text", 0 ],
            "obj-48::obj-15": [ "live.text[4]", "live.text", 0 ],
            "obj-48::obj-16": [ "loop", "loop", 0 ],
            "obj-48::obj-18": [ "live.text[7]", "live.text", 0 ],
            "obj-48::obj-4": [ "live.text[5]", "live.text", 0 ],
            "obj-48::obj-40": [ "live.toggle", "live.toggle", 0 ],
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