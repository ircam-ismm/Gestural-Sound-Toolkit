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
        "rect": [ 134.0, 172.0, 807.0, 667.0 ],
        "openinpresentation": 1,
        "gridsize": [ 2.0, 2.0 ],
        "boxes": [
            {
                "box": {
                    "comment": "Sound Index to be played (starting from 1)",
                    "id": "obj-1",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 446.75, 76.5, 25.0, 25.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Helvetica Light",
                    "fontsize": 10.0,
                    "id": "obj-14",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 148.0, 258.0, 124.0, 16.0 ],
                    "text": "DROP SOUNDS",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "obj-12",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "bang", "bang", "bang", "bang" ],
                    "patching_rect": [ 446.75, 407.0, 260.5, 20.0 ],
                    "text": "t b b b b"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 10.0,
                    "id": "obj-9",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 446.75, 444.0, 54.0, 20.0 ],
                    "text": "delay 200"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 10.0,
                    "id": "obj-22",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 446.75, 475.0, 31.0, 20.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 207.0, 592.5, 93.0, 33.0 ],
                    "text": "use mubu for \nconcatenator"
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 207.0, 371.0, 93.0, 33.0 ],
                    "text": "load playlist of \nsounds"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-42",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 307.25, 600.5, 121.0, 22.0 ],
                    "saved_object_attributes": {
                        "dirtypatcher": 1,
                        "embed": 0,
                        "externalfiles": 1,
                        "maintrack": -1,
                        "parameter_enable": 0,
                        "parameter_mappable": 0,
                        "resamplefiles": 0,
                        "ringmaster": -1,
                        "savegui": 0,
                        "snaprate": 1000.0,
                        "verbose": 1
                    },
                    "text": "mubu shared-playlist"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 10.0,
                    "id": "obj-23",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 688.25, 444.0, 32.0, 20.0 ],
                    "text": "clear"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-20",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 449.25, 555.0, 108.0, 23.0 ],
                    "text": "prepend append"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-30",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 449.25, 527.0, 49.0, 22.0 ],
                    "text": "zl nth 2"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 10.0,
                    "id": "obj-31",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 607.75, 444.0, 72.0, 20.0 ],
                    "text": "getshortname"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-34",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 307.25, 486.0, 131.0, 22.0 ],
                    "text": "route count shortname"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 10.0,
                    "id": "obj-36",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 527.25, 444.0, 49.0, 20.0 ],
                    "text": "getcount"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-47",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 307.25, 527.0, 86.0, 22.0 ],
                    "text": "numbuffers $1"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-43",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "patching_rect": [ 307.25, 379.0, 151.0, 22.0 ],
                    "text": "polybuffer~ shared-playlist"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-58",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 307.25, 318.0, 87.0, 23.0 ],
                    "text": "readfolder $1"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 181.0, 183.0, 91.0, 22.0 ],
                    "text": "loadmess clear"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-86",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 27.0, 53.0, 32.5, 22.0 ],
                    "text": "- 1"
                }
            },
            {
                "box": {
                    "comment": "Sound Index to be played (starting from 1)",
                    "id": "obj-85",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 27.0, 20.0, 25.0, 25.0 ]
                }
            },
            {
                "box": {
                    "comment": "Sound index to play (starting from 1)",
                    "id": "obj-80",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 113.25, 628.0, 25.0, 25.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-76",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 113.25, 255.0, 32.5, 22.0 ],
                    "text": "+ 1"
                }
            },
            {
                "box": {
                    "border": 1,
                    "id": "obj-52",
                    "maxclass": "panel",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 307.25, 76.5, 132.0, 35.0 ],
                    "rounded": 0
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_color": [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 1.0 ],
                    "bgfillcolor_color1": [ 0.3764705882352941, 0.3843137254901961, 0.4, 1.0 ],
                    "bgfillcolor_color2": [ 0.2901960784313726, 0.30980392156862746, 0.30196078431372547, 1.0 ],
                    "bgfillcolor_proportion": 0.39,
                    "bgfillcolor_type": "color",
                    "fontname": "Helvetica Neue Light",
                    "fontsize": 18.0,
                    "id": "obj-3",
                    "items": "<empty>",
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 113.25, 222.0, 146.0, 30.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 2.2140220999717712, 1.8450184166431427, 242.0, 30.0 ],
                    "saved_attribute_attributes": {
                        "bgfillcolor": {
                            "expression": "themecolor.live_control_text_bg"
                        },
                        "textcolor": {
                            "expression": "themecolor.live_control_fg"
                        }
                    },
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "border": 0.0,
                    "bordercolor": [ 0.086275, 0.309804, 0.52549, 1.0 ],
                    "id": "obj-35",
                    "maxclass": "dropfile",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 307.25, 76.5, 132.0, 35.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 0.0, 0.0, 242.0, 31.0 ],
                    "rounded": 0.0
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
                    "patching_rect": [ 608.0, 50.0, 128.0, 128.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 0.0, 0.0, 246.30630208551884, 34.05405655503273 ],
                    "proportion": 0.5,
                    "rounded": 0
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-58", 0 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 0 ],
                    "source": [ "obj-12", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 0 ],
                    "source": [ "obj-12", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-36", 0 ],
                    "source": [ "obj-12", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 0 ],
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "midpoints": [ 458.75, 587.0, 58.625, 587.0, 58.625, 211.0, 122.75, 211.0 ],
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "midpoints": [ 697.75, 474.0, 753.25, 474.0, 753.25, 211.0, 122.75, 211.0 ],
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-76", 0 ],
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "source": [ "obj-30", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-43", 0 ],
                    "midpoints": [ 617.25, 474.0, 299.0, 474.0, 299.0, 368.0, 316.75, 368.0 ],
                    "source": [ "obj-31", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-30", 0 ],
                    "midpoints": [ 372.75, 517.0, 458.75, 517.0 ],
                    "source": [ "obj-34", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-47", 0 ],
                    "source": [ "obj-34", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-58", 0 ],
                    "source": [ "obj-35", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-43", 0 ],
                    "midpoints": [ 536.75, 474.0, 293.75, 474.0, 293.75, 368.0, 316.75, 368.0 ],
                    "source": [ "obj-36", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "source": [ "obj-43", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-34", 0 ],
                    "source": [ "obj-43", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-42", 0 ],
                    "source": [ "obj-47", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-43", 0 ],
                    "source": [ "obj-58", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-80", 0 ],
                    "source": [ "obj-76", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-86", 0 ],
                    "source": [ "obj-85", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "midpoints": [ 36.5, 207.0, 122.75, 207.0 ],
                    "source": [ "obj-86", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-22", 0 ],
                    "source": [ "obj-9", 0 ]
                }
            }
        ],
        "parameters": {
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