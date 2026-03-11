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
        "rect": [ 406.0, 560.0, 1072.0, 454.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-161",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 982.2857581973076, 197.14286595582962, 55.0, 22.0 ],
                    "text": "pipe 100"
                }
            },
            {
                "box": {
                    "id": "obj-158",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 921.4058476388454, 222.85715281963348, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-318",
                    "maxclass": "number",
                    "minimum": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 683.9058439433575, 169.88636201620102, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-317",
                    "maxclass": "number",
                    "minimum": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 602.8409033417702, 173.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-315",
                    "maxclass": "number",
                    "minimum": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 461.0, 173.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-314",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 235.15625, 161.71875, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-311",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1236.6665922403336, 78.37837314605713, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-312",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 1236.6665922403336, 113.51350593566895, 80.0, 22.0 ],
                    "text": "metro 30000"
                }
            },
            {
                "box": {
                    "id": "obj-delay",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 1236.6665922403336, 172.97296142578125, 67.0, 22.0 ],
                    "text": "delay 1000"
                }
            },
            {
                "box": {
                    "id": "obj-tbb",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "bang" ],
                    "patching_rect": [ 1236.6665922403336, 143.2432336807251, 32.0, 22.0 ],
                    "text": "t b b"
                }
            },
            {
                "box": {
                    "id": "obj-open",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1236.6665922403336, 204.05404043197632, 20.0, 22.0 ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "id": "obj-close",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1297.4773989915848, 204.05404043197632, 20.0, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-310",
                    "maxclass": "flonum",
                    "maximum": 1000.0,
                    "minimum": 1.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 789.5876608788967, 241.90871664881706, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-308",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 271.40584763884544, 238.6666737794876, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-306",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 399.81493732333183, 238.6666737794876, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-304",
                    "maxclass": "flonum",
                    "maximum": 1000.0,
                    "minimum": 1.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 658.9058439433575, 238.6666737794876, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-300",
                    "maxclass": "flonum",
                    "maximum": 1000.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 531.6331178843975, 238.6666737794876, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-261",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 763.0952308177948, 381.50286197662354, 28.0, 22.0 ],
                    "text": "s t5"
                }
            },
            {
                "box": {
                    "id": "obj-262",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 639.457450012366, 378.96453911066055, 28.0, 22.0 ],
                    "text": "s t4"
                }
            },
            {
                "box": {
                    "id": "obj-263",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 519.4999544620514, 378.96453911066055, 28.0, 22.0 ],
                    "text": "s t3"
                }
            },
            {
                "box": {
                    "id": "obj-264",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 386.8647096951803, 381.50286197662354, 28.0, 22.0 ],
                    "text": "s t2"
                }
            },
            {
                "box": {
                    "id": "obj-265",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 253.7572066783905, 381.50286197662354, 28.0, 22.0 ],
                    "text": "s t1"
                }
            },
            {
                "box": {
                    "id": "obj-270",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 521.4058476388454, 100.0, 110.0, 22.0 ],
                    "text": "udpreceive 8000"
                }
            },
            {
                "box": {
                    "id": "obj-271",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 6,
                    "outlettype": [ "", "", "", "", "", "" ],
                    "patching_rect": [ 435.00584763884547, 134.65908962488174, 260.0, 22.0 ],
                    "text": "route /chan1 /chan2 /chan3 /chan4 /chan5"
                }
            },
            {
                "box": {
                    "id": "obj-272",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 921.4058476388454, 100.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-273",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 921.4058476388454, 140.0, 56.0, 22.0 ],
                    "text": "metro 50"
                }
            },
            {
                "box": {
                    "id": "obj-274",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "int", "int" ],
                    "patching_rect": [ 921.4058476388454, 180.0, 32.0, 22.0 ],
                    "text": "t 1 0"
                }
            },
            {
                "box": {
                    "id": "obj-275",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 271.40584763884544, 200.0, 42.0, 22.0 ],
                    "text": "gate 0"
                }
            },
            {
                "box": {
                    "id": "obj-276",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 399.40584763884544, 200.0, 42.0, 22.0 ],
                    "text": "gate 0"
                }
            },
            {
                "box": {
                    "id": "obj-277",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 531.4058476388454, 200.0, 42.0, 22.0 ],
                    "text": "gate 0"
                }
            },
            {
                "box": {
                    "id": "obj-278",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 659.4058476388454, 200.0, 42.0, 22.0 ],
                    "text": "gate 0"
                }
            },
            {
                "box": {
                    "id": "obj-279",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 789.4058476388454, 200.0, 42.0, 22.0 ],
                    "text": "gate 0"
                }
            },
            {
                "box": {
                    "id": "obj-280",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 271.40584763884544, 278.4090882539749, 103.0, 22.0 ],
                    "text": "scale 0 10 2 1000"
                }
            },
            {
                "box": {
                    "id": "obj-281",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 399.81493732333183, 278.4090882539749, 121.0, 22.0 ],
                    "text": "scale -100 10 2 4000"
                }
            },
            {
                "box": {
                    "id": "obj-282",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 531.6331178843975, 278.4090882539749, 103.0, 22.0 ],
                    "text": "scale 0 10 2 6000"
                }
            },
            {
                "box": {
                    "id": "obj-283",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 658.9058439433575, 278.4090882539749, 103.0, 22.0 ],
                    "text": "scale 0 10 2 8000"
                }
            },
            {
                "box": {
                    "id": "obj-284",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 789.5876608788967, 278.4090882539749, 121.0, 22.0 ],
                    "text": "scale -100 10 2 8000"
                }
            },
            {
                "box": {
                    "id": "obj-285",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 789.5876608788967, 307.95454251766205, 60.0, 22.0 ],
                    "text": "clip 2 32"
                }
            },
            {
                "box": {
                    "id": "obj-286",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "patching_rect": [ 271.40584763884544, 318.1818151473999, 60.0, 22.0 ],
                    "text": "line 3000"
                }
            },
            {
                "box": {
                    "id": "obj-287",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "patching_rect": [ 399.81493732333183, 318.1818151473999, 60.0, 22.0 ],
                    "text": "line 3000"
                }
            },
            {
                "box": {
                    "id": "obj-288",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "patching_rect": [ 531.6331178843975, 318.1818151473999, 60.0, 22.0 ],
                    "text": "line 3000"
                }
            },
            {
                "box": {
                    "id": "obj-289",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "patching_rect": [ 658.9058439433575, 318.1818151473999, 60.0, 22.0 ],
                    "text": "line 3000"
                }
            },
            {
                "box": {
                    "id": "obj-290",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "patching_rect": [ 789.5876608788967, 348.86363303661346, 60.0, 22.0 ],
                    "text": "line 3000"
                }
            },
            {
                "box": {
                    "id": "obj-291",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 263.40584763884544, 416.18494033813477, 55.0, 22.0 ],
                    "text": "pak 0. 0."
                }
            },
            {
                "box": {
                    "id": "obj-292",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 399.81493732333183, 416.18494033813477, 55.0, 22.0 ],
                    "text": "pak 1. 0."
                }
            },
            {
                "box": {
                    "id": "obj-293",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 531.6331178843975, 416.18494033813477, 55.0, 22.0 ],
                    "text": "pak 2. 0."
                }
            },
            {
                "box": {
                    "id": "obj-294",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 658.9058439433575, 416.18494033813477, 55.0, 22.0 ],
                    "text": "pak 3. 0."
                }
            },
            {
                "box": {
                    "id": "obj-295",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 789.5876608788967, 416.18494033813477, 55.0, 22.0 ],
                    "text": "pak 4. 0."
                }
            },
            {
                "box": {
                    "id": "obj-269",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 117.49998545646667, 368.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-267",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 117.49998545646667, 421.0, 76.0, 22.0 ],
                    "text": "metro 30000"
                }
            },
            {
                "box": {
                    "id": "obj-256",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1603.6666023731232, 850.6666920185089, 26.0, 22.0 ],
                    "text": "r t5"
                }
            },
            {
                "box": {
                    "id": "obj-257",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1263.6665922403336, 857.3333588838577, 26.0, 22.0 ],
                    "text": "r t4"
                }
            },
            {
                "box": {
                    "id": "obj-258",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 920.9999153614044, 853.7143238782883, 26.0, 22.0 ],
                    "text": "r t3"
                }
            },
            {
                "box": {
                    "id": "obj-259",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 576.9058476388454, 853.7143238782883, 26.0, 22.0 ],
                    "text": "r t2"
                }
            },
            {
                "box": {
                    "id": "obj-260",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 223.49998688697815, 850.6666920185089, 26.0, 22.0 ],
                    "text": "r t1"
                }
            },
            {
                "box": {
                    "id": "obj-157",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 229.70710811018944, 1271.9665002822876, 96.0, 22.0 ],
                    "text": "rate~ 4 @sync 1"
                }
            },
            {
                "box": {
                    "data": {
                        "patcher": {
                            "fileversion": 1,
                            "appversion": {
                                "major": 9,
                                "minor": 1,
                                "revision": 2,
                                "architecture": "x64",
                                "modernui": 1
                            },
                            "classnamespace": "dsp.gen",
                            "rect": [ 59.0, 107.0, 1086.0, 596.0 ],
                            "boxes": [
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "* 0.4",
                                        "patching_rect": [ 518.0, 292.0, 33.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-27",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "mix",
                                        "patching_rect": [ 50.0, 351.0, 40.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-26",
                                        "numinlets": 3
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "history",
                                        "patching_rect": [ 570.0, 136.0, 44.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-20",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "latch",
                                        "patching_rect": [ 570.0, 171.0, 34.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-21",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "abs",
                                        "patching_rect": [ 621.0, 204.0, 28.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-22",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "latch",
                                        "patching_rect": [ 621.0, 171.0, 34.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-23",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "noise",
                                        "patching_rect": [ 621.0, 136.0, 37.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-24",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "interp @mode cosine",
                                        "patching_rect": [ 518.0, 239.0, 122.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-25",
                                        "numinlets": 3
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "* 256",
                                        "patching_rect": [ 346.0, 267.0, 37.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-19",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "history",
                                        "patching_rect": [ 397.5, 136.0, 44.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-17",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "latch",
                                        "patching_rect": [ 397.5, 171.0, 34.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-16",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "abs",
                                        "patching_rect": [ 449.0, 204.0, 28.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-15",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "latch",
                                        "patching_rect": [ 449.0, 171.0, 34.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-14",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "noise",
                                        "patching_rect": [ 449.0, 136.0, 37.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-13",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "< 0",
                                        "patching_rect": [ 280.0, 84.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-12",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "delta",
                                        "patching_rect": [ 280.0, 53.0, 35.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-11",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "interp @mode cosine",
                                        "patching_rect": [ 346.0, 239.0, 122.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-10",
                                        "numinlets": 3
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "*",
                                        "patching_rect": [ 246.0, 204.0, 29.5, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-9",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "max 1",
                                        "patching_rect": [ 246.0, 235.0, 41.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-8",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "pow 2",
                                        "patching_rect": [ 246.0, 172.0, 41.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-7",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "sin",
                                        "patching_rect": [ 246.0, 140.0, 24.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-6",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "* pi",
                                        "patching_rect": [ 246.0, 114.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-5",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 1",
                                        "patching_rect": [ 50.0, 14.0, 28.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-1",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 2",
                                        "patching_rect": [ 246.0, 14.0, 28.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-2",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "delay @interp cosine",
                                        "patching_rect": [ 144.0, 267.0, 121.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-3",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "out 1",
                                        "patching_rect": [ 50.0, 420.0, 35.0, 22.0 ],
                                        "numoutlets": 0,
                                        "id": "obj-4",
                                        "numinlets": 1
                                    }
                                }
                            ],
                            "lines": [
                                {
                                    "patchline": {
                                        "source": [ "obj-10", 0 ],
                                        "destination": [ "obj-19", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-19", 0 ],
                                        "destination": [ "obj-9", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-27", 0 ],
                                        "destination": [ "obj-26", 2 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-25", 0 ],
                                        "destination": [ "obj-27", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-12", 0 ],
                                        "destination": [ "obj-23", 1 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-12", 0 ],
                                        "destination": [ "obj-21", 1 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-2", 0 ],
                                        "destination": [ "obj-25", 0 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-26", 0 ],
                                        "destination": [ "obj-4", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-3", 0 ],
                                        "destination": [ "obj-26", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-1", 0 ],
                                        "destination": [ "obj-26", 0 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-24", 0 ],
                                        "destination": [ "obj-23", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-23", 0 ],
                                        "destination": [ "obj-22", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-22", 0 ],
                                        "destination": [ "obj-25", 2 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-20", 0 ],
                                        "destination": [ "obj-21", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-22", 0 ],
                                        "destination": [ "obj-20", 0 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-21", 0 ],
                                        "destination": [ "obj-25", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-6", 0 ],
                                        "destination": [ "obj-7", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-7", 0 ],
                                        "destination": [ "obj-9", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-9", 0 ],
                                        "destination": [ "obj-8", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-2", 0 ],
                                        "destination": [ "obj-10", 0 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-12", 0 ],
                                        "destination": [ "obj-14", 1 ],
                                        "order": 2
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-12", 0 ],
                                        "destination": [ "obj-16", 1 ],
                                        "order": 3
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-16", 0 ],
                                        "destination": [ "obj-10", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-15", 0 ],
                                        "destination": [ "obj-17", 0 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-17", 0 ],
                                        "destination": [ "obj-16", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-15", 0 ],
                                        "destination": [ "obj-10", 2 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-14", 0 ],
                                        "destination": [ "obj-15", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-13", 0 ],
                                        "destination": [ "obj-14", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-11", 0 ],
                                        "destination": [ "obj-12", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-2", 0 ],
                                        "destination": [ "obj-11", 0 ],
                                        "order": 2
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-8", 0 ],
                                        "destination": [ "obj-3", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-5", 0 ],
                                        "destination": [ "obj-6", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-2", 0 ],
                                        "destination": [ "obj-5", 0 ],
                                        "order": 3
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-1", 0 ],
                                        "destination": [ "obj-3", 0 ],
                                        "order": 0
                                    }
                                }
                            ]
                        }
                    },
                    "id": "obj-156",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 194.97907537221909, 1297.0711022615433, 55.0, 22.0 ],
                    "text": "mc.gen~",
                    "wrapper_uniquekey": "u549010229"
                }
            },
            {
                "box": {
                    "id": "obj-159",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "float", "float", "float", "float", "float" ],
                    "patching_rect": [ 1874.9998211860657, 554.9999470710754, 81.0, 22.0 ],
                    "text": "unpack f f f f f"
                }
            },
            {
                "box": {
                    "id": "obj-154",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1842.4998242855072, 502.4999520778656, 150.0, 22.0 ],
                    "text": "loadmess 0.1 0.3 0.5 0.7 1"
                }
            },
            {
                "box": {
                    "id": "obj-148",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1739.7489171624184, 1087.4476757347584, 93.0, 22.0 ],
                    "text": "loadmess 1000."
                }
            },
            {
                "box": {
                    "id": "obj-177",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 1547.6987120211124, 1174.8953726291656, 29.5, 22.0 ],
                    "text": "* 4."
                }
            },
            {
                "box": {
                    "id": "obj-178",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "multichannelsignal", "multichannelsignal" ],
                    "patching_rect": [ 1502.5104284584522, 1197.0711043775082, 64.0, 22.0 ],
                    "text": "mc.cross~"
                }
            },
            {
                "box": {
                    "id": "obj-175",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 1207.531355202198, 1174.8953726291656, 29.5, 22.0 ],
                    "text": "* 8."
                }
            },
            {
                "box": {
                    "id": "obj-176",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "multichannelsignal", "multichannelsignal" ],
                    "patching_rect": [ 1159.8326114416122, 1197.0711043775082, 64.0, 22.0 ],
                    "text": "mc.cross~"
                }
            },
            {
                "box": {
                    "id": "obj-173",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 862.3430779874325, 1174.8953726291656, 33.0, 22.0 ],
                    "text": "* 16."
                }
            },
            {
                "box": {
                    "id": "obj-174",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "multichannelsignal", "multichannelsignal" ],
                    "patching_rect": [ 817.5732044577599, 1197.0711043775082, 64.0, 22.0 ],
                    "text": "mc.cross~"
                }
            },
            {
                "box": {
                    "id": "obj-171",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 525.1045913994312, 1174.8953726291656, 33.0, 22.0 ],
                    "text": "* 32."
                }
            },
            {
                "box": {
                    "id": "obj-172",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "multichannelsignal", "multichannelsignal" ],
                    "patching_rect": [ 477.40584763884544, 1197.0711043775082, 64.0, 22.0 ],
                    "text": "mc.cross~"
                }
            },
            {
                "box": {
                    "id": "obj-170",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 182.42677438259125, 1174.8953726291656, 33.0, 22.0 ],
                    "text": "* 64."
                }
            },
            {
                "box": {
                    "id": "obj-169",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "multichannelsignal", "multichannelsignal" ],
                    "patching_rect": [ 137.65690085291862, 1197.0711043775082, 64.0, 22.0 ],
                    "text": "mc.cross~"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-168",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1739.7489171624184, 1112.1338676810265, 70.0, 22.0 ]
                }
            },
            {
                "box": {
                    "data": {
                        "patcher": {
                            "fileversion": 1,
                            "appversion": {
                                "major": 9,
                                "minor": 1,
                                "revision": 2,
                                "architecture": "x64",
                                "modernui": 1
                            },
                            "classnamespace": "dsp.gen",
                            "rect": [ 59.0, 107.0, 1120.0, 690.0 ],
                            "boxes": [
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "pow 8",
                                        "patching_rect": [ 333.0, 512.0, 41.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-21",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "wrap 0 1",
                                        "patching_rect": [ 333.0, 480.0, 55.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-20",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "!- 1",
                                        "patching_rect": [ 333.0, 444.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-2",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "* 2",
                                        "patching_rect": [ 254.0, 112.0, 23.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-40",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "clip 0 1",
                                        "patching_rect": [ 254.0, 221.0, 47.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-39",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "exp",
                                        "patching_rect": [ 254.0, 190.0, 28.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-38",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "* -twopi/samplerate",
                                        "patching_rect": [ 254.0, 154.0, 111.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-37",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "abs",
                                        "patching_rect": [ 254.0, 71.0, 28.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-35",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 4 freq @default 65",
                                        "patching_rect": [ 254.0, 14.0, 120.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-34",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "clamp -1 1",
                                        "patching_rect": [ 176.0, 401.0, 65.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-33",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "* 8",
                                        "patching_rect": [ 176.0, 370.0, 23.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-32",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "-",
                                        "patching_rect": [ 176.0, 336.0, 29.5, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-31",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "history",
                                        "patching_rect": [ 197.5, 274.0, 44.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-30",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "mix",
                                        "patching_rect": [ 187.0, 308.0, 40.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-29",
                                        "numinlets": 3
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "/ 12",
                                        "patching_rect": [ 176.0, 239.0, 29.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-6",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "round",
                                        "patching_rect": [ 176.0, 191.0, 39.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-5",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "* 12",
                                        "patching_rect": [ 176.0, 149.0, 30.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-3",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "> 1",
                                        "patching_rect": [ 514.0, 93.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-24",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "delta",
                                        "patching_rect": [ 514.0, 149.0, 35.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-13",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "clip 0 1",
                                        "patching_rect": [ 514.0, 390.0, 47.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-8",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 3 decay @default 2000",
                                        "patching_rect": [ 611.0, 27.0, 145.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-9",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "wrap",
                                        "patching_rect": [ 514.0, 317.0, 40.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-36",
                                        "numinlets": 3
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "mstosamps",
                                        "patching_rect": [ 611.0, 204.0, 70.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-12",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "/",
                                        "patching_rect": [ 514.0, 356.0, 29.5, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-11",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "history",
                                        "patching_rect": [ 531.0, 196.0, 44.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-10",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "history",
                                        "patching_rect": [ 603.0, 327.0, 44.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-14",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "< 0",
                                        "patching_rect": [ 603.0, 294.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-15",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "delta",
                                        "patching_rect": [ 603.0, 263.0, 35.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-16",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "accum",
                                        "patching_rect": [ 514.0, 278.0, 44.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-17",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 2",
                                        "patching_rect": [ 514.0, 27.0, 28.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-18",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "> 0",
                                        "patching_rect": [ 514.0, 232.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-19",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "mix",
                                        "patching_rect": [ 55.0, 515.0, 40.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-7",
                                        "numinlets": 3
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 1",
                                        "patching_rect": [ 50.0, 14.0, 28.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-1",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "out 1",
                                        "patching_rect": [ 55.0, 612.0, 35.0, 22.0 ],
                                        "numoutlets": 0,
                                        "id": "obj-4",
                                        "numinlets": 1
                                    }
                                }
                            ],
                            "lines": [
                                {
                                    "patchline": {
                                        "source": [ "obj-32", 0 ],
                                        "destination": [ "obj-33", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-31", 0 ],
                                        "destination": [ "obj-32", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-20", 0 ],
                                        "destination": [ "obj-21", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-21", 0 ],
                                        "destination": [ "obj-7", 2 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-8", 0 ],
                                        "destination": [ "obj-2", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-2", 0 ],
                                        "destination": [ "obj-20", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-35", 0 ],
                                        "destination": [ "obj-40", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-40", 0 ],
                                        "destination": [ "obj-37", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-3", 0 ],
                                        "destination": [ "obj-5", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-1", 0 ],
                                        "destination": [ "obj-3", 0 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-6", 0 ],
                                        "destination": [ "obj-29", 0 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-5", 0 ],
                                        "destination": [ "obj-6", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-6", 0 ],
                                        "destination": [ "obj-31", 0 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-33", 0 ],
                                        "destination": [ "obj-7", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-34", 0 ],
                                        "destination": [ "obj-35", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-37", 0 ],
                                        "destination": [ "obj-38", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-38", 0 ],
                                        "destination": [ "obj-39", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-29", 0 ],
                                        "destination": [ "obj-31", 1 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-29", 0 ],
                                        "destination": [ "obj-30", 0 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-30", 0 ],
                                        "destination": [ "obj-29", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-39", 0 ],
                                        "destination": [ "obj-29", 2 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-24", 0 ],
                                        "destination": [ "obj-13", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-9", 0 ],
                                        "destination": [ "obj-12", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-18", 0 ],
                                        "destination": [ "obj-24", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-13", 0 ],
                                        "destination": [ "obj-19", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-10", 0 ],
                                        "destination": [ "obj-19", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-19", 0 ],
                                        "destination": [ "obj-17", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-36", 0 ],
                                        "destination": [ "obj-10", 0 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-36", 0 ],
                                        "destination": [ "obj-11", 0 ],
                                        "order": 2
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-36", 0 ],
                                        "destination": [ "obj-16", 0 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-17", 0 ],
                                        "destination": [ "obj-36", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-16", 0 ],
                                        "destination": [ "obj-15", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-15", 0 ],
                                        "destination": [ "obj-14", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-14", 0 ],
                                        "destination": [ "obj-17", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-12", 0 ],
                                        "destination": [ "obj-11", 1 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-12", 0 ],
                                        "destination": [ "obj-36", 2 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-11", 0 ],
                                        "destination": [ "obj-8", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-7", 0 ],
                                        "destination": [ "obj-4", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-1", 0 ],
                                        "destination": [ "obj-7", 0 ],
                                        "order": 1
                                    }
                                }
                            ]
                        }
                    },
                    "id": "obj-166",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 1502.5104284584522, 1149.3723606169224, 90.0, 22.0 ],
                    "text": "mc.gen~",
                    "wrapper_uniquekey": "u212010243"
                }
            },
            {
                "box": {
                    "data": {
                        "patcher": {
                            "fileversion": 1,
                            "appversion": {
                                "major": 9,
                                "minor": 1,
                                "revision": 2,
                                "architecture": "x64",
                                "modernui": 1
                            },
                            "classnamespace": "dsp.gen",
                            "rect": [ 59.0, 107.0, 1120.0, 690.0 ],
                            "boxes": [
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "pow 8",
                                        "patching_rect": [ 349.0, 490.0, 41.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-21",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "wrap 0 1",
                                        "patching_rect": [ 349.0, 458.0, 55.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-20",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "!- 1",
                                        "patching_rect": [ 349.0, 422.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-2",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "* 4",
                                        "patching_rect": [ 270.0, 117.0, 23.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-40",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "clip 0 1",
                                        "patching_rect": [ 270.0, 226.0, 47.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-39",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "exp",
                                        "patching_rect": [ 270.0, 195.0, 28.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-38",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "* -twopi/samplerate",
                                        "patching_rect": [ 270.0, 159.0, 111.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-37",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "abs",
                                        "patching_rect": [ 270.0, 76.0, 28.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-35",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 4 freq @default 65",
                                        "patching_rect": [ 270.0, 19.0, 120.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-34",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "clamp -1 1",
                                        "patching_rect": [ 176.0, 401.0, 65.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-33",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "* 8",
                                        "patching_rect": [ 176.0, 370.0, 23.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-32",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "-",
                                        "patching_rect": [ 176.0, 336.0, 29.5, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-31",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "history",
                                        "patching_rect": [ 197.5, 274.0, 44.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-30",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "mix",
                                        "patching_rect": [ 187.0, 308.0, 40.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-29",
                                        "numinlets": 3
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "/ 12",
                                        "patching_rect": [ 176.0, 239.0, 29.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-6",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "round",
                                        "patching_rect": [ 176.0, 191.0, 39.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-5",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "* 12",
                                        "patching_rect": [ 176.0, 149.0, 30.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-3",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "> 1",
                                        "patching_rect": [ 514.0, 93.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-24",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "delta",
                                        "patching_rect": [ 514.0, 149.0, 35.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-13",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "clip 0 1",
                                        "patching_rect": [ 514.0, 390.0, 47.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-8",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 3 decay @default 2000",
                                        "patching_rect": [ 611.0, 27.0, 145.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-9",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "wrap",
                                        "patching_rect": [ 514.0, 317.0, 40.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-36",
                                        "numinlets": 3
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "mstosamps",
                                        "patching_rect": [ 611.0, 204.0, 70.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-12",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "/",
                                        "patching_rect": [ 514.0, 356.0, 29.5, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-11",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "history",
                                        "patching_rect": [ 531.0, 196.0, 44.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-10",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "history",
                                        "patching_rect": [ 603.0, 327.0, 44.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-14",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "< 0",
                                        "patching_rect": [ 603.0, 294.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-15",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "delta",
                                        "patching_rect": [ 603.0, 263.0, 35.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-16",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "accum",
                                        "patching_rect": [ 514.0, 278.0, 44.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-17",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 2",
                                        "patching_rect": [ 514.0, 27.0, 28.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-18",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "> 0",
                                        "patching_rect": [ 514.0, 232.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-19",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "mix",
                                        "patching_rect": [ 50.0, 538.0, 40.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-7",
                                        "numinlets": 3
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 1",
                                        "patching_rect": [ 50.0, 14.0, 28.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-1",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "out 1",
                                        "patching_rect": [ 50.0, 635.0, 35.0, 22.0 ],
                                        "numoutlets": 0,
                                        "id": "obj-4",
                                        "numinlets": 1
                                    }
                                }
                            ],
                            "lines": [
                                {
                                    "patchline": {
                                        "source": [ "obj-32", 0 ],
                                        "destination": [ "obj-33", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-31", 0 ],
                                        "destination": [ "obj-32", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-21", 0 ],
                                        "destination": [ "obj-7", 2 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-20", 0 ],
                                        "destination": [ "obj-21", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-8", 0 ],
                                        "destination": [ "obj-2", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-2", 0 ],
                                        "destination": [ "obj-20", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-35", 0 ],
                                        "destination": [ "obj-40", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-40", 0 ],
                                        "destination": [ "obj-37", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-3", 0 ],
                                        "destination": [ "obj-5", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-1", 0 ],
                                        "destination": [ "obj-3", 0 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-6", 0 ],
                                        "destination": [ "obj-29", 0 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-5", 0 ],
                                        "destination": [ "obj-6", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-6", 0 ],
                                        "destination": [ "obj-31", 0 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-33", 0 ],
                                        "destination": [ "obj-7", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-34", 0 ],
                                        "destination": [ "obj-35", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-37", 0 ],
                                        "destination": [ "obj-38", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-38", 0 ],
                                        "destination": [ "obj-39", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-29", 0 ],
                                        "destination": [ "obj-31", 1 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-29", 0 ],
                                        "destination": [ "obj-30", 0 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-30", 0 ],
                                        "destination": [ "obj-29", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-39", 0 ],
                                        "destination": [ "obj-29", 2 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-1", 0 ],
                                        "destination": [ "obj-7", 0 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-7", 0 ],
                                        "destination": [ "obj-4", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-11", 0 ],
                                        "destination": [ "obj-8", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-12", 0 ],
                                        "destination": [ "obj-36", 2 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-12", 0 ],
                                        "destination": [ "obj-11", 1 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-14", 0 ],
                                        "destination": [ "obj-17", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-15", 0 ],
                                        "destination": [ "obj-14", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-16", 0 ],
                                        "destination": [ "obj-15", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-17", 0 ],
                                        "destination": [ "obj-36", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-36", 0 ],
                                        "destination": [ "obj-16", 0 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-36", 0 ],
                                        "destination": [ "obj-11", 0 ],
                                        "order": 2
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-36", 0 ],
                                        "destination": [ "obj-10", 0 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-19", 0 ],
                                        "destination": [ "obj-17", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-10", 0 ],
                                        "destination": [ "obj-19", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-13", 0 ],
                                        "destination": [ "obj-19", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-18", 0 ],
                                        "destination": [ "obj-24", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-9", 0 ],
                                        "destination": [ "obj-12", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-24", 0 ],
                                        "destination": [ "obj-13", 0 ]
                                    }
                                }
                            ]
                        }
                    },
                    "id": "obj-164",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 1159.8326114416122, 1149.3723606169224, 90.0, 22.0 ],
                    "text": "mc.gen~",
                    "wrapper_uniquekey": "u389010240"
                }
            },
            {
                "box": {
                    "data": {
                        "patcher": {
                            "fileversion": 1,
                            "appversion": {
                                "major": 9,
                                "minor": 1,
                                "revision": 2,
                                "architecture": "x64",
                                "modernui": 1
                            },
                            "classnamespace": "dsp.gen",
                            "rect": [ 59.0, 107.0, 1120.0, 690.0 ],
                            "boxes": [
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "pow 8",
                                        "patching_rect": [ 299.0, 529.0, 41.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-21",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "wrap 0 1",
                                        "patching_rect": [ 299.0, 497.0, 55.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-20",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "!- 1",
                                        "patching_rect": [ 299.0, 461.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-2",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "* 8",
                                        "patching_rect": [ 313.0, 117.0, 23.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-40",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "clip 0 1",
                                        "patching_rect": [ 313.0, 226.0, 47.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-39",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "exp",
                                        "patching_rect": [ 313.0, 195.0, 28.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-38",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "* -twopi/samplerate",
                                        "patching_rect": [ 313.0, 159.0, 111.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-37",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "abs",
                                        "patching_rect": [ 313.0, 76.0, 28.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-35",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 4 freq @default 65",
                                        "patching_rect": [ 313.0, 19.0, 120.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-34",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "clamp -1 1",
                                        "patching_rect": [ 176.0, 401.0, 65.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-33",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "* 8",
                                        "patching_rect": [ 176.0, 370.0, 23.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-32",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "-",
                                        "patching_rect": [ 176.0, 336.0, 29.5, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-31",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "history",
                                        "patching_rect": [ 197.5, 274.0, 44.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-30",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "mix",
                                        "patching_rect": [ 187.0, 308.0, 40.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-29",
                                        "numinlets": 3
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "/ 12",
                                        "patching_rect": [ 176.0, 239.0, 29.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-6",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "round",
                                        "patching_rect": [ 176.0, 191.0, 39.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-5",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "* 12",
                                        "patching_rect": [ 176.0, 149.0, 30.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-3",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "> 1",
                                        "patching_rect": [ 514.0, 93.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-24",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "delta",
                                        "patching_rect": [ 514.0, 149.0, 35.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-13",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "clip 0 1",
                                        "patching_rect": [ 514.0, 390.0, 47.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-8",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 3 decay @default 2000",
                                        "patching_rect": [ 611.0, 27.0, 145.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-9",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "wrap",
                                        "patching_rect": [ 514.0, 317.0, 40.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-36",
                                        "numinlets": 3
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "mstosamps",
                                        "patching_rect": [ 611.0, 204.0, 70.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-12",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "/",
                                        "patching_rect": [ 514.0, 356.0, 29.5, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-11",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "history",
                                        "patching_rect": [ 531.0, 196.0, 44.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-10",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "history",
                                        "patching_rect": [ 603.0, 327.0, 44.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-14",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "< 0",
                                        "patching_rect": [ 603.0, 294.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-15",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "delta",
                                        "patching_rect": [ 603.0, 263.0, 35.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-16",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "accum",
                                        "patching_rect": [ 514.0, 278.0, 44.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-17",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 2",
                                        "patching_rect": [ 514.0, 27.0, 28.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-18",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "> 0",
                                        "patching_rect": [ 514.0, 232.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-19",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "mix",
                                        "patching_rect": [ 46.5, 541.0, 40.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-7",
                                        "numinlets": 3
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 1",
                                        "patching_rect": [ 50.0, 14.0, 28.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-1",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "out 1",
                                        "patching_rect": [ 46.5, 638.0, 35.0, 22.0 ],
                                        "numoutlets": 0,
                                        "id": "obj-4",
                                        "numinlets": 1
                                    }
                                }
                            ],
                            "lines": [
                                {
                                    "patchline": {
                                        "source": [ "obj-21", 0 ],
                                        "destination": [ "obj-7", 2 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-20", 0 ],
                                        "destination": [ "obj-21", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-32", 0 ],
                                        "destination": [ "obj-33", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-31", 0 ],
                                        "destination": [ "obj-32", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-8", 0 ],
                                        "destination": [ "obj-2", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-2", 0 ],
                                        "destination": [ "obj-20", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-35", 0 ],
                                        "destination": [ "obj-40", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-40", 0 ],
                                        "destination": [ "obj-37", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-3", 0 ],
                                        "destination": [ "obj-5", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-1", 0 ],
                                        "destination": [ "obj-3", 0 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-6", 0 ],
                                        "destination": [ "obj-29", 0 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-5", 0 ],
                                        "destination": [ "obj-6", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-6", 0 ],
                                        "destination": [ "obj-31", 0 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-33", 0 ],
                                        "destination": [ "obj-7", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-34", 0 ],
                                        "destination": [ "obj-35", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-37", 0 ],
                                        "destination": [ "obj-38", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-38", 0 ],
                                        "destination": [ "obj-39", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-29", 0 ],
                                        "destination": [ "obj-31", 1 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-29", 0 ],
                                        "destination": [ "obj-30", 0 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-30", 0 ],
                                        "destination": [ "obj-29", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-39", 0 ],
                                        "destination": [ "obj-29", 2 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-24", 0 ],
                                        "destination": [ "obj-13", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-9", 0 ],
                                        "destination": [ "obj-12", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-18", 0 ],
                                        "destination": [ "obj-24", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-13", 0 ],
                                        "destination": [ "obj-19", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-10", 0 ],
                                        "destination": [ "obj-19", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-19", 0 ],
                                        "destination": [ "obj-17", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-36", 0 ],
                                        "destination": [ "obj-10", 0 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-36", 0 ],
                                        "destination": [ "obj-11", 0 ],
                                        "order": 2
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-36", 0 ],
                                        "destination": [ "obj-16", 0 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-17", 0 ],
                                        "destination": [ "obj-36", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-16", 0 ],
                                        "destination": [ "obj-15", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-15", 0 ],
                                        "destination": [ "obj-14", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-14", 0 ],
                                        "destination": [ "obj-17", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-12", 0 ],
                                        "destination": [ "obj-11", 1 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-12", 0 ],
                                        "destination": [ "obj-36", 2 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-11", 0 ],
                                        "destination": [ "obj-8", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-7", 0 ],
                                        "destination": [ "obj-4", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-1", 0 ],
                                        "destination": [ "obj-7", 0 ],
                                        "order": 1
                                    }
                                }
                            ]
                        }
                    },
                    "id": "obj-162",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 817.5732044577599, 1149.3723606169224, 90.0, 22.0 ],
                    "text": "mc.gen~",
                    "wrapper_uniquekey": "u553010255"
                }
            },
            {
                "box": {
                    "data": {
                        "patcher": {
                            "fileversion": 1,
                            "appversion": {
                                "major": 9,
                                "minor": 1,
                                "revision": 2,
                                "architecture": "x64",
                                "modernui": 1
                            },
                            "classnamespace": "dsp.gen",
                            "rect": [ 59.0, 107.0, 1120.0, 690.0 ],
                            "boxes": [
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "pow 8",
                                        "patching_rect": [ 349.0, 490.0, 41.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-21",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "wrap 0 1",
                                        "patching_rect": [ 349.0, 458.0, 55.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-20",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "!- 1",
                                        "patching_rect": [ 349.0, 422.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-2",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "* 16",
                                        "patching_rect": [ 305.0, 123.0, 30.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-40",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "clip 0 1",
                                        "patching_rect": [ 305.0, 232.0, 47.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-39",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "exp",
                                        "patching_rect": [ 305.0, 201.0, 28.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-38",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "* -twopi/samplerate",
                                        "patching_rect": [ 305.0, 165.0, 111.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-37",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "abs",
                                        "patching_rect": [ 305.0, 82.0, 28.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-35",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 4 freq @default 65",
                                        "patching_rect": [ 305.0, 25.0, 120.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-34",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "clamp -1 1",
                                        "patching_rect": [ 191.0, 416.0, 65.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-33",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "* 8",
                                        "patching_rect": [ 191.0, 385.0, 23.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-32",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "-",
                                        "patching_rect": [ 191.0, 351.0, 29.5, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-31",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "history",
                                        "patching_rect": [ 212.5, 289.0, 44.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-30",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "mix",
                                        "patching_rect": [ 202.0, 323.0, 40.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-29",
                                        "numinlets": 3
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "/ 12",
                                        "patching_rect": [ 191.0, 254.0, 29.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-6",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "round",
                                        "patching_rect": [ 191.0, 206.0, 39.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-5",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "* 12",
                                        "patching_rect": [ 191.0, 164.0, 30.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-3",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "> 1",
                                        "patching_rect": [ 514.0, 93.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-24",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "delta",
                                        "patching_rect": [ 514.0, 149.0, 35.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-13",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "clip 0 1",
                                        "patching_rect": [ 514.0, 390.0, 47.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-8",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 3 decay @default 2000",
                                        "patching_rect": [ 611.0, 27.0, 145.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-9",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "wrap",
                                        "patching_rect": [ 514.0, 317.0, 40.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-36",
                                        "numinlets": 3
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "mstosamps",
                                        "patching_rect": [ 611.0, 204.0, 70.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-12",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "/",
                                        "patching_rect": [ 514.0, 356.0, 29.5, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-11",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "history",
                                        "patching_rect": [ 531.0, 196.0, 44.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-10",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "history",
                                        "patching_rect": [ 603.0, 327.0, 44.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-14",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "< 0",
                                        "patching_rect": [ 603.0, 294.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-15",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "delta",
                                        "patching_rect": [ 603.0, 263.0, 35.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-16",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "accum",
                                        "patching_rect": [ 514.0, 278.0, 44.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-17",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 2",
                                        "patching_rect": [ 514.0, 27.0, 28.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-18",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "> 0",
                                        "patching_rect": [ 514.0, 232.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-19",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "mix",
                                        "patching_rect": [ 50.0, 518.0, 40.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-7",
                                        "numinlets": 3
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 1",
                                        "patching_rect": [ 50.0, 14.0, 28.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-1",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "out 1",
                                        "patching_rect": [ 50.0, 615.0, 35.0, 22.0 ],
                                        "numoutlets": 0,
                                        "id": "obj-4",
                                        "numinlets": 1
                                    }
                                }
                            ],
                            "lines": [
                                {
                                    "patchline": {
                                        "source": [ "obj-21", 0 ],
                                        "destination": [ "obj-7", 2 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-20", 0 ],
                                        "destination": [ "obj-21", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-32", 0 ],
                                        "destination": [ "obj-33", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-31", 0 ],
                                        "destination": [ "obj-32", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-8", 0 ],
                                        "destination": [ "obj-2", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-2", 0 ],
                                        "destination": [ "obj-20", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-35", 0 ],
                                        "destination": [ "obj-40", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-40", 0 ],
                                        "destination": [ "obj-37", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-3", 0 ],
                                        "destination": [ "obj-5", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-1", 0 ],
                                        "destination": [ "obj-3", 0 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-6", 0 ],
                                        "destination": [ "obj-29", 0 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-5", 0 ],
                                        "destination": [ "obj-6", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-6", 0 ],
                                        "destination": [ "obj-31", 0 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-33", 0 ],
                                        "destination": [ "obj-7", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-34", 0 ],
                                        "destination": [ "obj-35", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-37", 0 ],
                                        "destination": [ "obj-38", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-38", 0 ],
                                        "destination": [ "obj-39", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-29", 0 ],
                                        "destination": [ "obj-31", 1 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-29", 0 ],
                                        "destination": [ "obj-30", 0 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-30", 0 ],
                                        "destination": [ "obj-29", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-39", 0 ],
                                        "destination": [ "obj-29", 2 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-1", 0 ],
                                        "destination": [ "obj-7", 0 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-7", 0 ],
                                        "destination": [ "obj-4", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-11", 0 ],
                                        "destination": [ "obj-8", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-12", 0 ],
                                        "destination": [ "obj-36", 2 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-12", 0 ],
                                        "destination": [ "obj-11", 1 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-14", 0 ],
                                        "destination": [ "obj-17", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-15", 0 ],
                                        "destination": [ "obj-14", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-16", 0 ],
                                        "destination": [ "obj-15", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-17", 0 ],
                                        "destination": [ "obj-36", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-36", 0 ],
                                        "destination": [ "obj-16", 0 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-36", 0 ],
                                        "destination": [ "obj-11", 0 ],
                                        "order": 2
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-36", 0 ],
                                        "destination": [ "obj-10", 0 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-19", 0 ],
                                        "destination": [ "obj-17", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-10", 0 ],
                                        "destination": [ "obj-19", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-13", 0 ],
                                        "destination": [ "obj-19", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-18", 0 ],
                                        "destination": [ "obj-24", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-9", 0 ],
                                        "destination": [ "obj-12", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-24", 0 ],
                                        "destination": [ "obj-13", 0 ]
                                    }
                                }
                            ]
                        }
                    },
                    "id": "obj-160",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 477.40584763884544, 1149.3723606169224, 90.0, 22.0 ],
                    "text": "mc.gen~",
                    "wrapper_uniquekey": "u314010258"
                }
            },
            {
                "box": {
                    "data": {
                        "patcher": {
                            "fileversion": 1,
                            "appversion": {
                                "major": 9,
                                "minor": 1,
                                "revision": 2,
                                "architecture": "x64",
                                "modernui": 1
                            },
                            "classnamespace": "dsp.gen",
                            "rect": [ 59.0, 107.0, 1120.0, 690.0 ],
                            "boxes": [
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "pow 8",
                                        "patching_rect": [ 349.0, 490.0, 41.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-21",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "wrap 0 1",
                                        "patching_rect": [ 349.0, 458.0, 55.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-20",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "!- 1",
                                        "patching_rect": [ 349.0, 422.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-2",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "* 32",
                                        "patching_rect": [ 307.0, 135.0, 30.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-40",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "clip 0 1",
                                        "patching_rect": [ 307.0, 244.0, 47.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-39",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "exp",
                                        "patching_rect": [ 307.0, 213.0, 28.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-38",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "* -twopi/samplerate",
                                        "patching_rect": [ 307.0, 177.0, 111.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-37",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "abs",
                                        "patching_rect": [ 307.0, 94.0, 28.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-35",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 4 freq @default 65",
                                        "patching_rect": [ 307.0, 37.0, 120.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-34",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "clamp -1 1",
                                        "patching_rect": [ 176.0, 401.0, 65.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-33",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "* 8",
                                        "patching_rect": [ 176.0, 370.0, 23.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-32",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "-",
                                        "patching_rect": [ 176.0, 336.0, 29.5, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-31",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "history",
                                        "patching_rect": [ 197.5, 274.0, 44.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-30",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "mix",
                                        "patching_rect": [ 187.0, 308.0, 40.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-29",
                                        "numinlets": 3
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "> 1",
                                        "patching_rect": [ 514.0, 93.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-24",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "delta",
                                        "patching_rect": [ 514.0, 149.0, 35.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-13",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "clip 0 1",
                                        "patching_rect": [ 514.0, 390.0, 47.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-8",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 3 decay @default 2000",
                                        "patching_rect": [ 611.0, 27.0, 145.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-9",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "wrap",
                                        "patching_rect": [ 514.0, 317.0, 40.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-36",
                                        "numinlets": 3
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "mstosamps",
                                        "patching_rect": [ 611.0, 204.0, 70.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-12",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "/",
                                        "patching_rect": [ 514.0, 356.0, 29.5, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-11",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "history",
                                        "patching_rect": [ 531.0, 196.0, 44.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-10",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "history",
                                        "patching_rect": [ 603.0, 327.0, 44.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-14",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "< 0",
                                        "patching_rect": [ 603.0, 294.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-15",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "delta",
                                        "patching_rect": [ 603.0, 263.0, 35.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-16",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "accum",
                                        "patching_rect": [ 514.0, 278.0, 44.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-17",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 2",
                                        "patching_rect": [ 514.0, 27.0, 28.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-18",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "> 0",
                                        "patching_rect": [ 514.0, 232.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-19",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "mix",
                                        "patching_rect": [ 50.0, 538.0, 40.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-7",
                                        "numinlets": 3
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "/ 12",
                                        "patching_rect": [ 176.0, 239.0, 29.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-6",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "round",
                                        "patching_rect": [ 176.0, 191.0, 39.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-5",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 1",
                                        "patching_rect": [ 50.0, 14.0, 28.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-1",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "* 12",
                                        "patching_rect": [ 176.0, 149.0, 30.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-3",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "out 1",
                                        "patching_rect": [ 50.0, 635.0, 35.0, 22.0 ],
                                        "numoutlets": 0,
                                        "id": "obj-4",
                                        "numinlets": 1
                                    }
                                }
                            ],
                            "lines": [
                                {
                                    "patchline": {
                                        "source": [ "obj-21", 0 ],
                                        "destination": [ "obj-7", 2 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-20", 0 ],
                                        "destination": [ "obj-21", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-32", 0 ],
                                        "destination": [ "obj-33", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-31", 0 ],
                                        "destination": [ "obj-32", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-8", 0 ],
                                        "destination": [ "obj-2", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-2", 0 ],
                                        "destination": [ "obj-20", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-35", 0 ],
                                        "destination": [ "obj-40", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-40", 0 ],
                                        "destination": [ "obj-37", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-3", 0 ],
                                        "destination": [ "obj-5", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-1", 0 ],
                                        "destination": [ "obj-3", 0 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-6", 0 ],
                                        "destination": [ "obj-31", 0 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-5", 0 ],
                                        "destination": [ "obj-6", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-6", 0 ],
                                        "destination": [ "obj-29", 0 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-7", 0 ],
                                        "destination": [ "obj-4", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-39", 0 ],
                                        "destination": [ "obj-29", 2 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-30", 0 ],
                                        "destination": [ "obj-29", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-29", 0 ],
                                        "destination": [ "obj-30", 0 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-29", 0 ],
                                        "destination": [ "obj-31", 1 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-38", 0 ],
                                        "destination": [ "obj-39", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-37", 0 ],
                                        "destination": [ "obj-38", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-34", 0 ],
                                        "destination": [ "obj-35", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-33", 0 ],
                                        "destination": [ "obj-7", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-24", 0 ],
                                        "destination": [ "obj-13", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-9", 0 ],
                                        "destination": [ "obj-12", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-18", 0 ],
                                        "destination": [ "obj-24", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-13", 0 ],
                                        "destination": [ "obj-19", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-10", 0 ],
                                        "destination": [ "obj-19", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-19", 0 ],
                                        "destination": [ "obj-17", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-36", 0 ],
                                        "destination": [ "obj-10", 0 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-36", 0 ],
                                        "destination": [ "obj-11", 0 ],
                                        "order": 2
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-36", 0 ],
                                        "destination": [ "obj-16", 0 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-17", 0 ],
                                        "destination": [ "obj-36", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-16", 0 ],
                                        "destination": [ "obj-15", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-15", 0 ],
                                        "destination": [ "obj-14", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-14", 0 ],
                                        "destination": [ "obj-17", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-12", 0 ],
                                        "destination": [ "obj-11", 1 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-12", 0 ],
                                        "destination": [ "obj-36", 2 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-11", 0 ],
                                        "destination": [ "obj-8", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-1", 0 ],
                                        "destination": [ "obj-7", 0 ],
                                        "order": 1
                                    }
                                }
                            ]
                        }
                    },
                    "id": "obj-147",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 137.65690085291862, 1149.3723606169224, 90.0, 22.0 ],
                    "text": "mc.gen~",
                    "wrapper_uniquekey": "u695010264"
                }
            },
            {
                "box": {
                    "id": "obj-146",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 207.53137636184692, 992.0501882135868, 173.0, 22.0 ],
                    "text": "mc.*~ @values 1 0.5 0.33 0.25"
                }
            },
            {
                "box": {
                    "id": "obj-145",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 549.7907833456993, 992.0501882135868, 173.0, 22.0 ],
                    "text": "mc.*~ @values 1 0.5 0.33 0.25"
                }
            },
            {
                "box": {
                    "id": "obj-144",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 889.9581401646137, 992.0501882135868, 173.0, 22.0 ],
                    "text": "mc.*~ @values 1 0.5 0.33 0.25"
                }
            },
            {
                "box": {
                    "id": "obj-143",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 1232.6359571814537, 992.0501882135868, 173.0, 22.0 ],
                    "text": "mc.*~ @values 1 0.5 0.33 0.25"
                }
            },
            {
                "box": {
                    "id": "obj-142",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 1572.3849039673805, 992.0501882135868, 173.0, 22.0 ],
                    "text": "mc.*~ @values 1 0.5 0.33 0.25"
                }
            },
            {
                "box": {
                    "id": "obj-138",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 1502.5104284584522, 939.7489340901375, 173.0, 22.0 ],
                    "text": "mc.*~ @values 1 0.5 0.33 0.25"
                }
            },
            {
                "box": {
                    "id": "obj-137",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 1159.8326114416122, 939.7489340901375, 173.0, 22.0 ],
                    "text": "mc.*~ @values 1 0.5 0.33 0.25"
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 820.0836646556854, 939.7489340901375, 173.0, 22.0 ],
                    "text": "mc.*~ @values 1 0.5 0.33 0.25"
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 477.40584763884544, 939.7489340901375, 173.0, 22.0 ],
                    "text": "mc.*~ @values 1 0.5 0.33 0.25"
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 137.65690085291862, 939.7489340901375, 173.0, 22.0 ],
                    "text": "mc.*~ @values 1 0.5 0.33 0.25"
                }
            },
            {
                "box": {
                    "id": "obj-153",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 174.99998331069946, 659.9999370574951, 29.5, 22.0 ],
                    "text": "+ 1"
                }
            },
            {
                "box": {
                    "id": "obj-152",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 174.99998331069946, 634.9999394416809, 59.0, 22.0 ],
                    "text": "random 8"
                }
            },
            {
                "box": {
                    "id": "obj-151",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 174.99998331069946, 607.4999420642853, 22.0, 22.0 ],
                    "text": "t b"
                }
            },
            {
                "box": {
                    "id": "obj-150",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "int" ],
                    "patching_rect": [ 152.49998545646667, 582.4999444484711, 41.0, 22.0 ],
                    "text": "what~"
                }
            },
            {
                "box": {
                    "id": "obj-149",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 152.49998545646667, 552.499947309494, 103.0, 22.0 ],
                    "text": "rate~ 32 @sync 1"
                }
            },
            {
                "box": {
                    "id": "obj-141",
                    "maxclass": "preset",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "preset", "int", "preset", "int", "" ],
                    "patching_rect": [ 477.4999544620514, 552.499947309494, 100.0, 40.0 ],
                    "preset_data": [
                        {
                            "number": 1,
                            "data": [ 5, "obj-122", "number", "int", 58, 5, "obj-98", "number", "int", 51, 5, "obj-73", "number", "int", 48, 5, "obj-42", "number", "int", 43, 5, "obj-50", "number", "int", 36 ]
                        },
                        {
                            "number": 2,
                            "data": [ 5, "obj-122", "number", "int", 63, 5, "obj-98", "number", "int", 56, 5, "obj-73", "number", "int", 53, 5, "obj-42", "number", "int", 48, 5, "obj-50", "number", "int", 41 ]
                        },
                        {
                            "number": 3,
                            "data": [ 5, "obj-122", "number", "int", 61, 5, "obj-98", "number", "int", 55, 5, "obj-73", "number", "int", 51, 5, "obj-42", "number", "int", 46, 5, "obj-50", "number", "int", 39 ]
                        },
                        {
                            "number": 4,
                            "data": [ 5, "obj-122", "number", "int", 67, 5, "obj-98", "number", "int", 60, 5, "obj-73", "number", "int", 56, 5, "obj-42", "number", "int", 51, 5, "obj-50", "number", "int", 44 ]
                        },
                        {
                            "number": 5,
                            "data": [ 5, "obj-122", "number", "int", 70, 5, "obj-98", "number", "int", 63, 5, "obj-73", "number", "int", 60, 5, "obj-42", "number", "int", 55, 5, "obj-50", "number", "int", 36 ]
                        },
                        {
                            "number": 6,
                            "data": [ 5, "obj-122", "number", "int", 75, 5, "obj-98", "number", "int", 68, 5, "obj-73", "number", "int", 65, 5, "obj-42", "number", "int", 60, 5, "obj-50", "number", "int", 41 ]
                        },
                        {
                            "number": 7,
                            "data": [ 5, "obj-122", "number", "int", 73, 5, "obj-98", "number", "int", 67, 5, "obj-73", "number", "int", 63, 5, "obj-42", "number", "int", 58, 5, "obj-50", "number", "int", 39 ]
                        },
                        {
                            "number": 8,
                            "data": [ 5, "obj-122", "number", "int", 79, 5, "obj-98", "number", "int", 72, 5, "obj-73", "number", "int", 68, 5, "obj-42", "number", "int", 63, 5, "obj-50", "number", "int", 44 ]
                        }
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-140",
                    "logfreq": 1,
                    "maxclass": "spectroscope~",
                    "monochrome": 0,
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1002.5104390382767, 1271.9665002822876, 313.0, 159.0 ],
                    "scroll": 2,
                    "sono": 1
                }
            },
            {
                "box": {
                    "id": "obj-139",
                    "logfreq": 1,
                    "maxclass": "spectroscope~",
                    "monochrome": 0,
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 687.4476841986179, 1271.9665002822876, 313.0, 159.0 ],
                    "scroll": 3,
                    "sono": 1
                }
            },
            {
                "box": {
                    "id": "obj-136",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 1502.5104284584522, 1224.6861665546894, 60.0, 22.0 ],
                    "text": "mc.*~ 0.8"
                }
            },
            {
                "box": {
                    "calccount": 8,
                    "id": "obj-112",
                    "maxclass": "scope~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 1594.9790457487106, 1169.456042200327, 152.0, 76.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-113",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 1502.5104284584522, 1112.1338676810265, 90.0, 22.0 ],
                    "text": "mc.combine~ 2"
                }
            },
            {
                "box": {
                    "id": "obj-114",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 1572.3849039673805, 1017.1547901928425, 173.0, 22.0 ],
                    "text": "mc.*~ @values 1 0.5 0.33 0.25"
                }
            },
            {
                "box": {
                    "id": "obj-115",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 1572.3849039673805, 1039.7489319741726, 173.0, 22.0 ],
                    "text": "mc.mixdown~ 1 @autogain 0"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-116",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1759.832598745823, 884.518809735775, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "data": {
                        "patcher": {
                            "fileversion": 1,
                            "appversion": {
                                "major": 9,
                                "minor": 1,
                                "revision": 2,
                                "architecture": "x64",
                                "modernui": 1
                            },
                            "classnamespace": "dsp.gen",
                            "rect": [ 655.0, 161.0, 1172.0, 709.0 ],
                            "boxes": [
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "history",
                                        "patching_rect": [ 324.0, 352.0, 44.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-32",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "*",
                                        "patching_rect": [ 324.0, 320.0, 29.5, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-31",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "* 0.5",
                                        "patching_rect": [ 324.0, 281.0, 33.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-30",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "latch",
                                        "patching_rect": [ 324.0, 251.0, 34.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-29",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "noise",
                                        "patching_rect": [ 324.0, 146.0, 37.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-28",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "< 0",
                                        "patching_rect": [ 339.0, 214.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-16",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "delta",
                                        "patching_rect": [ 339.0, 177.0, 35.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-15",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 4 detune @default 1",
                                        "patching_rect": [ 441.0, 15.0, 129.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-14",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "delta",
                                        "patching_rect": [ 33.0, 104.0, 35.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-13",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "*",
                                        "patching_rect": [ 33.0, 626.0, 29.5, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-27",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "pow 2",
                                        "patching_rect": [ 13.0, 520.0, 41.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-26",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "sin",
                                        "patching_rect": [ 299.0, 469.0, 24.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-25",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "* twopi",
                                        "patching_rect": [ 299.0, 433.0, 45.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-24",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "wrap 0 1",
                                        "patching_rect": [ 33.0, 437.0, 55.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-23",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "!- 1",
                                        "patching_rect": [ 33.0, 408.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-22",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "> 0",
                                        "patching_rect": [ 136.0, 456.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-20",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "delta",
                                        "patching_rect": [ 136.0, 425.0, 35.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-21",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "phasor",
                                        "patching_rect": [ 299.0, 382.0, 45.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-19",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "latch",
                                        "patching_rect": [ 299.0, 115.0, 34.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-18",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 3 freq @default 65",
                                        "patching_rect": [ 299.0, 15.0, 120.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-17",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "clip 0 1",
                                        "patching_rect": [ 33.0, 378.0, 47.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-4",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 2 decay @default 500",
                                        "patching_rect": [ 129.5, 15.0, 138.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-2",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "out 1",
                                        "patching_rect": [ 33.0, 670.0, 35.0, 22.0 ],
                                        "numoutlets": 0,
                                        "id": "obj-6",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "wrap",
                                        "patching_rect": [ 33.0, 305.0, 40.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-36",
                                        "numinlets": 3
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "mstosamps",
                                        "patching_rect": [ 129.5, 192.0, 70.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-12",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "/",
                                        "patching_rect": [ 33.0, 344.0, 29.5, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-11",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "history",
                                        "patching_rect": [ 50.0, 184.0, 44.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-10",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "history",
                                        "patching_rect": [ 122.0, 315.0, 44.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-9",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "< 0",
                                        "patching_rect": [ 122.0, 282.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-8",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "delta",
                                        "patching_rect": [ 122.0, 251.0, 35.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-7",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "accum",
                                        "patching_rect": [ 33.0, 266.0, 44.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-5",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 1",
                                        "patching_rect": [ 31.0, 15.0, 28.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-1",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "> 0",
                                        "patching_rect": [ 33.0, 220.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-3",
                                        "numinlets": 1
                                    }
                                }
                            ],
                            "lines": [
                                {
                                    "patchline": {
                                        "source": [ "obj-32", 0 ],
                                        "destination": [ "obj-19", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-31", 0 ],
                                        "destination": [ "obj-32", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-14", 0 ],
                                        "destination": [ "obj-31", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-30", 0 ],
                                        "destination": [ "obj-31", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-16", 0 ],
                                        "destination": [ "obj-29", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-29", 0 ],
                                        "destination": [ "obj-30", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-28", 0 ],
                                        "destination": [ "obj-29", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-19", 0 ],
                                        "destination": [ "obj-15", 0 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-15", 0 ],
                                        "destination": [ "obj-16", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-25", 0 ],
                                        "destination": [ "obj-27", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-27", 0 ],
                                        "destination": [ "obj-6", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-23", 0 ],
                                        "destination": [ "obj-26", 0 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-24", 0 ],
                                        "destination": [ "obj-25", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-19", 0 ],
                                        "destination": [ "obj-24", 0 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-20", 0 ],
                                        "destination": [ "obj-18", 1 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-20", 0 ],
                                        "destination": [ "obj-19", 1 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-21", 0 ],
                                        "destination": [ "obj-20", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-23", 0 ],
                                        "destination": [ "obj-21", 0 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-22", 0 ],
                                        "destination": [ "obj-23", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-4", 0 ],
                                        "destination": [ "obj-22", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-18", 0 ],
                                        "destination": [ "obj-19", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-17", 0 ],
                                        "destination": [ "obj-18", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-11", 0 ],
                                        "destination": [ "obj-4", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-12", 0 ],
                                        "destination": [ "obj-36", 2 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-12", 0 ],
                                        "destination": [ "obj-11", 1 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-9", 0 ],
                                        "destination": [ "obj-5", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-8", 0 ],
                                        "destination": [ "obj-9", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-7", 0 ],
                                        "destination": [ "obj-8", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-5", 0 ],
                                        "destination": [ "obj-36", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-36", 0 ],
                                        "destination": [ "obj-7", 0 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-36", 0 ],
                                        "destination": [ "obj-11", 0 ],
                                        "order": 2
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-36", 0 ],
                                        "destination": [ "obj-10", 0 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-3", 0 ],
                                        "destination": [ "obj-5", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-10", 0 ],
                                        "destination": [ "obj-3", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-2", 0 ],
                                        "destination": [ "obj-12", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-26", 0 ],
                                        "destination": [ "obj-27", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-1", 0 ],
                                        "destination": [ "obj-13", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-13", 0 ],
                                        "destination": [ "obj-3", 0 ]
                                    }
                                }
                            ]
                        }
                    },
                    "id": "obj-117",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 1572.3849039673805, 967.3639962673187, 207.33333333333337, 22.0 ],
                    "text": "mc.gen~ @chans 4",
                    "wrapper_uniquekey": "u697010204"
                }
            },
            {
                "box": {
                    "id": "obj-118",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 1502.5104284584522, 1064.8535339534283, 173.0, 22.0 ],
                    "text": "mc.*~ @values 1 0.5 0.33 0.25"
                }
            },
            {
                "box": {
                    "id": "obj-119",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1569.9998502731323, 822.4999215602875, 90.0, 22.0 ],
                    "text": "loadmess 1200"
                }
            },
            {
                "box": {
                    "id": "obj-120",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1874.9998211860657, 582.4999444484711, 77.0, 22.0 ],
                    "text": "loadmess 58"
                }
            },
            {
                "box": {
                    "id": "obj-121",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1687.499839067459, 792.4999244213104, 73.0, 22.0 ],
                    "text": "loadmess 1."
                }
            },
            {
                "box": {
                    "format": 5,
                    "id": "obj-122",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1874.9998211860657, 607.4999420642853, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-123",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1734.999834537506, 822.4999215602875, 32.0, 22.0 ],
                    "text": "mtof"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-124",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1687.499839067459, 822.4999215602875, 41.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-125",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1637.6568691134453, 884.518809735775, 114.0, 22.0 ],
                    "text": "pak harmonic 1. 65."
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-126",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1569.874443769455, 884.518809735775, 65.5, 22.0 ]
                }
            },
            {
                "box": {
                    "columns": 16,
                    "id": "obj-127",
                    "maxclass": "gridmeter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 1502.499856710434, 792.4999244213104, 74.0, 16.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-128",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 1537.4998533725739, 712.499932050705, 52.0, 22.0 ],
                    "text": "mc.>~ 0"
                }
            },
            {
                "box": {
                    "id": "obj-129",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 1537.4998533725739, 737.4999296665192, 92.0, 22.0 ],
                    "text": "mc.mixdown~ 1"
                }
            },
            {
                "box": {
                    "data": {
                        "patcher": {
                            "fileversion": 1,
                            "appversion": {
                                "major": 9,
                                "minor": 1,
                                "revision": 2,
                                "architecture": "x64",
                                "modernui": 1
                            },
                            "classnamespace": "dsp.gen",
                            "rect": [ 59.0, 107.0, 600.0, 450.0 ],
                            "boxes": [
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "*",
                                        "patching_rect": [ 50.0, 283.5, 29.5, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-6",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "<= 1",
                                        "patching_rect": [ 305.0, 153.0, 33.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-5",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 1",
                                        "patching_rect": [ 50.0, 14.0, 28.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-1",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 2",
                                        "patching_rect": [ 305.0, 14.0, 28.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-2",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "> 0",
                                        "patching_rect": [ 50.0, 153.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-3",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "out 1",
                                        "patching_rect": [ 50.0, 414.0, 35.0, 22.0 ],
                                        "numoutlets": 0,
                                        "id": "obj-4",
                                        "numinlets": 1
                                    }
                                }
                            ],
                            "lines": [
                                {
                                    "patchline": {
                                        "source": [ "obj-1", 0 ],
                                        "destination": [ "obj-3", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-2", 0 ],
                                        "destination": [ "obj-5", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-6", 0 ],
                                        "destination": [ "obj-4", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-3", 0 ],
                                        "destination": [ "obj-6", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-5", 0 ],
                                        "destination": [ "obj-6", 1 ]
                                    }
                                }
                            ]
                        }
                    },
                    "id": "obj-130",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 1502.499856710434, 767.4999268054962, 55.0, 22.0 ],
                    "text": "mc.gen~",
                    "wrapper_uniquekey": "u139010285"
                }
            },
            {
                "box": {
                    "data": {
                        "patcher": {
                            "fileversion": 1,
                            "appversion": {
                                "major": 9,
                                "minor": 1,
                                "revision": 2,
                                "architecture": "x64",
                                "modernui": 1
                            },
                            "classnamespace": "dsp.gen",
                            "rect": [ 655.0, 161.0, 1172.0, 709.0 ],
                            "boxes": [
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "* 0.5",
                                        "patching_rect": [ 499.0, 141.0, 33.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-43",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "clip",
                                        "patching_rect": [ 478.0, 169.0, 40.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-41",
                                        "numinlets": 3
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "history",
                                        "patching_rect": [ 324.0, 352.0, 44.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-32",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "*",
                                        "patching_rect": [ 324.0, 320.0, 29.5, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-31",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "* 0.5",
                                        "patching_rect": [ 324.0, 281.0, 33.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-30",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "latch",
                                        "patching_rect": [ 324.0, 251.0, 34.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-29",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "noise",
                                        "patching_rect": [ 324.0, 146.0, 37.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-28",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "< 0",
                                        "patching_rect": [ 339.0, 214.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-16",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "delta",
                                        "patching_rect": [ 339.0, 177.0, 35.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-15",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 4 detune @default 1",
                                        "patching_rect": [ 478.0, 15.0, 129.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-14",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "delta",
                                        "patching_rect": [ 33.0, 104.0, 35.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-13",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "*",
                                        "patching_rect": [ 33.0, 626.0, 29.5, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-27",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "pow 2",
                                        "patching_rect": [ 13.0, 520.0, 41.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-26",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "sin",
                                        "patching_rect": [ 299.0, 469.0, 24.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-25",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "* twopi",
                                        "patching_rect": [ 299.0, 433.0, 45.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-24",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "wrap 0 1",
                                        "patching_rect": [ 33.0, 437.0, 55.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-23",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "!- 1",
                                        "patching_rect": [ 33.0, 408.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-22",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "> 0",
                                        "patching_rect": [ 136.0, 456.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-20",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "delta",
                                        "patching_rect": [ 136.0, 425.0, 35.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-21",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "phasor",
                                        "patching_rect": [ 299.0, 382.0, 45.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-19",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "latch",
                                        "patching_rect": [ 299.0, 115.0, 34.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-18",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 3 freq @default 65",
                                        "patching_rect": [ 299.0, 15.0, 120.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-17",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "clip 0 1",
                                        "patching_rect": [ 33.0, 378.0, 47.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-4",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 2 decay @default 500",
                                        "patching_rect": [ 129.5, 15.0, 138.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-2",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "out 1",
                                        "patching_rect": [ 33.0, 670.0, 35.0, 22.0 ],
                                        "numoutlets": 0,
                                        "id": "obj-6",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "wrap",
                                        "patching_rect": [ 33.0, 305.0, 40.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-36",
                                        "numinlets": 3
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "mstosamps",
                                        "patching_rect": [ 129.5, 192.0, 70.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-12",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "/",
                                        "patching_rect": [ 33.0, 344.0, 29.5, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-11",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "history",
                                        "patching_rect": [ 50.0, 184.0, 44.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-10",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "history",
                                        "patching_rect": [ 122.0, 315.0, 44.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-9",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "< 0",
                                        "patching_rect": [ 122.0, 282.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-8",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "delta",
                                        "patching_rect": [ 122.0, 251.0, 35.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-7",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "accum",
                                        "patching_rect": [ 33.0, 266.0, 44.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-5",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 1",
                                        "patching_rect": [ 31.0, 15.0, 28.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-1",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "> 0",
                                        "patching_rect": [ 33.0, 220.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-3",
                                        "numinlets": 1
                                    }
                                }
                            ],
                            "lines": [
                                {
                                    "patchline": {
                                        "source": [ "obj-13", 0 ],
                                        "destination": [ "obj-3", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-1", 0 ],
                                        "destination": [ "obj-13", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-26", 0 ],
                                        "destination": [ "obj-27", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-2", 0 ],
                                        "destination": [ "obj-12", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-10", 0 ],
                                        "destination": [ "obj-3", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-3", 0 ],
                                        "destination": [ "obj-5", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-36", 0 ],
                                        "destination": [ "obj-10", 0 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-36", 0 ],
                                        "destination": [ "obj-11", 0 ],
                                        "order": 2
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-36", 0 ],
                                        "destination": [ "obj-7", 0 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-5", 0 ],
                                        "destination": [ "obj-36", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-7", 0 ],
                                        "destination": [ "obj-8", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-8", 0 ],
                                        "destination": [ "obj-9", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-9", 0 ],
                                        "destination": [ "obj-5", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-12", 0 ],
                                        "destination": [ "obj-11", 1 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-12", 0 ],
                                        "destination": [ "obj-36", 2 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-11", 0 ],
                                        "destination": [ "obj-4", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-17", 0 ],
                                        "destination": [ "obj-18", 0 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-18", 0 ],
                                        "destination": [ "obj-19", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-4", 0 ],
                                        "destination": [ "obj-22", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-22", 0 ],
                                        "destination": [ "obj-23", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-23", 0 ],
                                        "destination": [ "obj-21", 0 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-21", 0 ],
                                        "destination": [ "obj-20", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-20", 0 ],
                                        "destination": [ "obj-19", 1 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-20", 0 ],
                                        "destination": [ "obj-18", 1 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-19", 0 ],
                                        "destination": [ "obj-24", 0 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-24", 0 ],
                                        "destination": [ "obj-25", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-23", 0 ],
                                        "destination": [ "obj-26", 0 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-27", 0 ],
                                        "destination": [ "obj-6", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-25", 0 ],
                                        "destination": [ "obj-27", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-15", 0 ],
                                        "destination": [ "obj-16", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-19", 0 ],
                                        "destination": [ "obj-15", 0 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-28", 0 ],
                                        "destination": [ "obj-29", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-29", 0 ],
                                        "destination": [ "obj-30", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-16", 0 ],
                                        "destination": [ "obj-29", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-30", 0 ],
                                        "destination": [ "obj-31", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-31", 0 ],
                                        "destination": [ "obj-32", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-32", 0 ],
                                        "destination": [ "obj-19", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-41", 0 ],
                                        "destination": [ "obj-31", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-14", 0 ],
                                        "destination": [ "obj-41", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-17", 0 ],
                                        "destination": [ "obj-43", 0 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-43", 0 ],
                                        "destination": [ "obj-41", 2 ]
                                    }
                                }
                            ]
                        }
                    },
                    "id": "obj-131",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 1502.5104284584522, 912.1338719129562, 225.0, 22.0 ],
                    "text": "mc.gen~ @chans 4",
                    "wrapper_uniquekey": "u980010307"
                }
            },
            {
                "box": {
                    "id": "obj-132",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 1502.5104284584522, 1087.4476757347584, 173.0, 22.0 ],
                    "text": "mc.mixdown~ 1 @autogain 0"
                }
            },
            {
                "box": {
                    "contdata": 1,
                    "id": "obj-133",
                    "maxclass": "multislider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1634.9998440742493, 524.9999499320984, 201.0, 233.0 ],
                    "setminmax": [ 2.0, 32.0 ],
                    "settype": 0,
                    "size": 2
                }
            },
            {
                "box": {
                    "id": "obj-134",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 2,
                    "outlettype": [ "setvalue", "int" ],
                    "patching_rect": [ 1634.9998440742493, 767.4999268054962, 201.0, 22.0 ],
                    "text": "mc.targetlist @chans 4 @listmode 1"
                }
            },
            {
                "box": {
                    "data": {
                        "patcher": {
                            "fileversion": 1,
                            "appversion": {
                                "major": 9,
                                "minor": 1,
                                "revision": 2,
                                "architecture": "x64",
                                "modernui": 1
                            },
                            "classnamespace": "dsp.gen",
                            "rect": [ 59.0, 107.0, 1080.0, 845.0 ],
                            "boxes": [
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 3 reset",
                                        "patching_rect": [ 738.0, 18.0, 58.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-28",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "max 2",
                                        "patching_rect": [ 134.0, 123.0, 41.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-17",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "*",
                                        "patching_rect": [ 54.0, 299.0, 29.5, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-15",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "history",
                                        "patching_rect": [ 134.0, 94.0, 44.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-14",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "== 0",
                                        "patching_rect": [ 104.0, 225.0, 33.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-7",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "counter",
                                        "patching_rect": [ 104.0, 153.0, 49.0, 22.0 ],
                                        "numoutlets": 3,
                                        "outlettype": [ "", "", "" ],
                                        "id": "obj-6",
                                        "numinlets": 3
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "< 0",
                                        "patching_rect": [ 104.0, 82.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-5",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 1",
                                        "patching_rect": [ 50.0, 14.0, 28.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-1",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 2 @default 2",
                                        "patching_rect": [ 305.0, 14.0, 89.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-2",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "delta",
                                        "patching_rect": [ 104.0, 55.0, 35.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-3",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "out 1",
                                        "patching_rect": [ 54.0, 748.0, 35.0, 22.0 ],
                                        "numoutlets": 0,
                                        "id": "obj-4",
                                        "numinlets": 1
                                    }
                                }
                            ],
                            "lines": [
                                {
                                    "patchline": {
                                        "source": [ "obj-17", 0 ],
                                        "destination": [ "obj-6", 2 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-14", 0 ],
                                        "destination": [ "obj-17", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-7", 0 ],
                                        "destination": [ "obj-15", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-1", 0 ],
                                        "destination": [ "obj-15", 0 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-6", 0 ],
                                        "destination": [ "obj-7", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-5", 0 ],
                                        "destination": [ "obj-6", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-3", 0 ],
                                        "destination": [ "obj-5", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-1", 0 ],
                                        "destination": [ "obj-3", 0 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-15", 0 ],
                                        "destination": [ "obj-4", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-2", 0 ],
                                        "destination": [ "obj-14", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-28", 0 ],
                                        "destination": [ "obj-6", 1 ]
                                    }
                                }
                            ]
                        }
                    },
                    "id": "obj-135",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 1502.499856710434, 684.9999346733093, 112.0, 22.0 ],
                    "text": "mc.gen~ @chans 4",
                    "wrapper_uniquekey": "u657010301"
                }
            },
            {
                "box": {
                    "calccount": 8,
                    "id": "obj-88",
                    "maxclass": "scope~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 1255.2300989627838, 1169.456042200327, 152.0, 76.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-89",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 1159.8326114416122, 1112.1338676810265, 90.0, 22.0 ],
                    "text": "mc.combine~ 2"
                }
            },
            {
                "box": {
                    "id": "obj-90",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 1232.6359571814537, 1017.1547901928425, 173.0, 22.0 ],
                    "text": "mc.*~ @values 1 0.5 0.33 0.25"
                }
            },
            {
                "box": {
                    "id": "obj-91",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 1232.6359571814537, 1039.7489319741726, 173.0, 22.0 ],
                    "text": "mc.mixdown~ 1 @autogain 0"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-92",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1420.083651959896, 884.518809735775, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "data": {
                        "patcher": {
                            "fileversion": 1,
                            "appversion": {
                                "major": 9,
                                "minor": 1,
                                "revision": 2,
                                "architecture": "x64",
                                "modernui": 1
                            },
                            "classnamespace": "dsp.gen",
                            "rect": [ 522.0, 161.0, 1172.0, 709.0 ],
                            "boxes": [
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "history",
                                        "patching_rect": [ 324.0, 352.0, 44.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-32",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "*",
                                        "patching_rect": [ 324.0, 320.0, 29.5, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-31",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "* 0.5",
                                        "patching_rect": [ 324.0, 281.0, 33.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-30",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "latch",
                                        "patching_rect": [ 324.0, 251.0, 34.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-29",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "noise",
                                        "patching_rect": [ 324.0, 146.0, 37.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-28",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "< 0",
                                        "patching_rect": [ 339.0, 214.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-16",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "delta",
                                        "patching_rect": [ 339.0, 177.0, 35.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-15",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 4 detune @default 1",
                                        "patching_rect": [ 441.0, 15.0, 129.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-14",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "delta",
                                        "patching_rect": [ 33.0, 104.0, 35.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-13",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "*",
                                        "patching_rect": [ 33.0, 626.0, 29.5, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-27",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "pow 2",
                                        "patching_rect": [ 13.0, 520.0, 41.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-26",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "sin",
                                        "patching_rect": [ 299.0, 469.0, 24.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-25",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "* twopi",
                                        "patching_rect": [ 299.0, 433.0, 45.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-24",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "wrap 0 1",
                                        "patching_rect": [ 33.0, 437.0, 55.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-23",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "!- 1",
                                        "patching_rect": [ 33.0, 408.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-22",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "> 0",
                                        "patching_rect": [ 136.0, 456.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-20",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "delta",
                                        "patching_rect": [ 136.0, 425.0, 35.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-21",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "phasor",
                                        "patching_rect": [ 299.0, 382.0, 45.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-19",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "latch",
                                        "patching_rect": [ 299.0, 115.0, 34.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-18",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 3 freq @default 65",
                                        "patching_rect": [ 299.0, 15.0, 120.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-17",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "clip 0 1",
                                        "patching_rect": [ 33.0, 378.0, 47.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-4",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 2 decay @default 1000",
                                        "patching_rect": [ 129.5, 15.0, 145.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-2",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "out 1",
                                        "patching_rect": [ 33.0, 670.0, 35.0, 22.0 ],
                                        "numoutlets": 0,
                                        "id": "obj-6",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "wrap",
                                        "patching_rect": [ 33.0, 305.0, 40.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-36",
                                        "numinlets": 3
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "mstosamps",
                                        "patching_rect": [ 129.5, 192.0, 70.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-12",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "/",
                                        "patching_rect": [ 33.0, 344.0, 29.5, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-11",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "history",
                                        "patching_rect": [ 50.0, 184.0, 44.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-10",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "history",
                                        "patching_rect": [ 122.0, 315.0, 44.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-9",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "< 0",
                                        "patching_rect": [ 122.0, 282.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-8",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "delta",
                                        "patching_rect": [ 122.0, 251.0, 35.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-7",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "accum",
                                        "patching_rect": [ 33.0, 266.0, 44.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-5",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 1",
                                        "patching_rect": [ 31.0, 15.0, 28.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-1",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "> 0",
                                        "patching_rect": [ 33.0, 220.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-3",
                                        "numinlets": 1
                                    }
                                }
                            ],
                            "lines": [
                                {
                                    "patchline": {
                                        "source": [ "obj-13", 0 ],
                                        "destination": [ "obj-3", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-1", 0 ],
                                        "destination": [ "obj-13", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-26", 0 ],
                                        "destination": [ "obj-27", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-10", 0 ],
                                        "destination": [ "obj-3", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-3", 0 ],
                                        "destination": [ "obj-5", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-36", 0 ],
                                        "destination": [ "obj-10", 0 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-36", 0 ],
                                        "destination": [ "obj-11", 0 ],
                                        "order": 2
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-36", 0 ],
                                        "destination": [ "obj-7", 0 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-5", 0 ],
                                        "destination": [ "obj-36", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-7", 0 ],
                                        "destination": [ "obj-8", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-8", 0 ],
                                        "destination": [ "obj-9", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-9", 0 ],
                                        "destination": [ "obj-5", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-12", 0 ],
                                        "destination": [ "obj-11", 1 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-12", 0 ],
                                        "destination": [ "obj-36", 2 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-11", 0 ],
                                        "destination": [ "obj-4", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-17", 0 ],
                                        "destination": [ "obj-18", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-18", 0 ],
                                        "destination": [ "obj-19", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-4", 0 ],
                                        "destination": [ "obj-22", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-22", 0 ],
                                        "destination": [ "obj-23", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-23", 0 ],
                                        "destination": [ "obj-21", 0 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-21", 0 ],
                                        "destination": [ "obj-20", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-20", 0 ],
                                        "destination": [ "obj-19", 1 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-20", 0 ],
                                        "destination": [ "obj-18", 1 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-19", 0 ],
                                        "destination": [ "obj-24", 0 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-24", 0 ],
                                        "destination": [ "obj-25", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-23", 0 ],
                                        "destination": [ "obj-26", 0 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-27", 0 ],
                                        "destination": [ "obj-6", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-25", 0 ],
                                        "destination": [ "obj-27", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-15", 0 ],
                                        "destination": [ "obj-16", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-19", 0 ],
                                        "destination": [ "obj-15", 0 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-28", 0 ],
                                        "destination": [ "obj-29", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-29", 0 ],
                                        "destination": [ "obj-30", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-16", 0 ],
                                        "destination": [ "obj-29", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-30", 0 ],
                                        "destination": [ "obj-31", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-14", 0 ],
                                        "destination": [ "obj-31", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-31", 0 ],
                                        "destination": [ "obj-32", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-32", 0 ],
                                        "destination": [ "obj-19", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-2", 0 ],
                                        "destination": [ "obj-12", 0 ]
                                    }
                                }
                            ]
                        }
                    },
                    "id": "obj-93",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 1232.6359571814537, 967.3639962673187, 207.33333333333337, 22.0 ],
                    "text": "mc.gen~ @chans 4",
                    "wrapper_uniquekey": "u685010333"
                }
            },
            {
                "box": {
                    "id": "obj-94",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 1159.8326114416122, 1064.8535339534283, 173.0, 22.0 ],
                    "text": "mc.*~ @values 1 0.5 0.33 0.25"
                }
            },
            {
                "box": {
                    "id": "obj-95",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1229.999882698059, 822.4999215602875, 93.0, 22.0 ],
                    "text": "loadmess 1000."
                }
            },
            {
                "box": {
                    "id": "obj-96",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1502.499856710434, 582.4999444484711, 77.0, 22.0 ],
                    "text": "loadmess 51"
                }
            },
            {
                "box": {
                    "id": "obj-97",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1347.4998714923859, 792.4999244213104, 73.0, 22.0 ],
                    "text": "loadmess 1."
                }
            },
            {
                "box": {
                    "format": 5,
                    "id": "obj-98",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1502.499856710434, 607.4999420642853, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-99",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1392.4998672008514, 822.4999215602875, 32.0, 22.0 ],
                    "text": "mtof"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-100",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1347.4998714923859, 822.4999215602875, 41.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-101",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1297.4895122945309, 884.518809735775, 114.0, 22.0 ],
                    "text": "pak harmonic 1. 65."
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-102",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1229.7070869505405, 884.518809735775, 65.5, 22.0 ]
                }
            },
            {
                "box": {
                    "columns": 16,
                    "id": "obj-103",
                    "maxclass": "gridmeter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 1159.9998893737793, 792.4999244213104, 74.0, 16.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-104",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 1197.4998857975006, 712.499932050705, 52.0, 22.0 ],
                    "text": "mc.>~ 0"
                }
            },
            {
                "box": {
                    "id": "obj-105",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 1197.4998857975006, 737.4999296665192, 92.0, 22.0 ],
                    "text": "mc.mixdown~ 1"
                }
            },
            {
                "box": {
                    "data": {
                        "patcher": {
                            "fileversion": 1,
                            "appversion": {
                                "major": 9,
                                "minor": 1,
                                "revision": 2,
                                "architecture": "x64",
                                "modernui": 1
                            },
                            "classnamespace": "dsp.gen",
                            "rect": [ 59.0, 107.0, 600.0, 450.0 ],
                            "boxes": [
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "*",
                                        "patching_rect": [ 50.0, 283.5, 29.5, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-6",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "<= 1",
                                        "patching_rect": [ 305.0, 153.0, 33.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-5",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 1",
                                        "patching_rect": [ 50.0, 14.0, 28.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-1",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 2",
                                        "patching_rect": [ 305.0, 14.0, 28.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-2",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "> 0",
                                        "patching_rect": [ 50.0, 153.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-3",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "out 1",
                                        "patching_rect": [ 50.0, 414.0, 35.0, 22.0 ],
                                        "numoutlets": 0,
                                        "id": "obj-4",
                                        "numinlets": 1
                                    }
                                }
                            ],
                            "lines": [
                                {
                                    "patchline": {
                                        "source": [ "obj-5", 0 ],
                                        "destination": [ "obj-6", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-3", 0 ],
                                        "destination": [ "obj-6", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-6", 0 ],
                                        "destination": [ "obj-4", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-2", 0 ],
                                        "destination": [ "obj-5", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-1", 0 ],
                                        "destination": [ "obj-3", 0 ]
                                    }
                                }
                            ]
                        }
                    },
                    "id": "obj-106",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 1159.9998893737793, 767.4999268054962, 55.0, 22.0 ],
                    "text": "mc.gen~",
                    "wrapper_uniquekey": "u628010361"
                }
            },
            {
                "box": {
                    "data": {
                        "patcher": {
                            "fileversion": 1,
                            "appversion": {
                                "major": 9,
                                "minor": 1,
                                "revision": 2,
                                "architecture": "x64",
                                "modernui": 1
                            },
                            "classnamespace": "dsp.gen",
                            "rect": [ 655.0, 161.0, 1172.0, 709.0 ],
                            "boxes": [
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "* 0.5",
                                        "patching_rect": [ 499.0, 141.0, 33.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-43",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "clip",
                                        "patching_rect": [ 478.0, 169.0, 40.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-41",
                                        "numinlets": 3
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "history",
                                        "patching_rect": [ 324.0, 352.0, 44.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-32",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "*",
                                        "patching_rect": [ 324.0, 320.0, 29.5, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-31",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "* 0.5",
                                        "patching_rect": [ 324.0, 281.0, 33.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-30",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "latch",
                                        "patching_rect": [ 324.0, 251.0, 34.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-29",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "noise",
                                        "patching_rect": [ 324.0, 146.0, 37.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-28",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "< 0",
                                        "patching_rect": [ 339.0, 214.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-16",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "delta",
                                        "patching_rect": [ 339.0, 177.0, 35.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-15",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 4 detune @default 1",
                                        "patching_rect": [ 478.0, 15.0, 129.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-14",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "delta",
                                        "patching_rect": [ 33.0, 104.0, 35.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-13",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "*",
                                        "patching_rect": [ 33.0, 626.0, 29.5, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-27",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "pow 2",
                                        "patching_rect": [ 13.0, 520.0, 41.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-26",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "sin",
                                        "patching_rect": [ 299.0, 469.0, 24.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-25",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "* twopi",
                                        "patching_rect": [ 299.0, 433.0, 45.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-24",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "wrap 0 1",
                                        "patching_rect": [ 33.0, 437.0, 55.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-23",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "!- 1",
                                        "patching_rect": [ 33.0, 408.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-22",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "> 0",
                                        "patching_rect": [ 136.0, 456.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-20",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "delta",
                                        "patching_rect": [ 136.0, 425.0, 35.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-21",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "phasor",
                                        "patching_rect": [ 299.0, 382.0, 45.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-19",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "latch",
                                        "patching_rect": [ 299.0, 115.0, 34.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-18",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 3 freq @default 65",
                                        "patching_rect": [ 299.0, 15.0, 120.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-17",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "clip 0 1",
                                        "patching_rect": [ 33.0, 378.0, 47.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-4",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 2 decay @default 1000",
                                        "patching_rect": [ 129.5, 15.0, 145.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-2",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "out 1",
                                        "patching_rect": [ 33.0, 670.0, 35.0, 22.0 ],
                                        "numoutlets": 0,
                                        "id": "obj-6",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "wrap",
                                        "patching_rect": [ 33.0, 305.0, 40.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-36",
                                        "numinlets": 3
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "mstosamps",
                                        "patching_rect": [ 129.5, 192.0, 70.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-12",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "/",
                                        "patching_rect": [ 33.0, 344.0, 29.5, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-11",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "history",
                                        "patching_rect": [ 50.0, 184.0, 44.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-10",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "history",
                                        "patching_rect": [ 122.0, 315.0, 44.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-9",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "< 0",
                                        "patching_rect": [ 122.0, 282.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-8",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "delta",
                                        "patching_rect": [ 122.0, 251.0, 35.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-7",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "accum",
                                        "patching_rect": [ 33.0, 266.0, 44.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-5",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 1",
                                        "patching_rect": [ 31.0, 15.0, 28.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-1",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "> 0",
                                        "patching_rect": [ 33.0, 220.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-3",
                                        "numinlets": 1
                                    }
                                }
                            ],
                            "lines": [
                                {
                                    "patchline": {
                                        "source": [ "obj-43", 0 ],
                                        "destination": [ "obj-41", 2 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-17", 0 ],
                                        "destination": [ "obj-43", 0 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-14", 0 ],
                                        "destination": [ "obj-41", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-41", 0 ],
                                        "destination": [ "obj-31", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-32", 0 ],
                                        "destination": [ "obj-19", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-31", 0 ],
                                        "destination": [ "obj-32", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-30", 0 ],
                                        "destination": [ "obj-31", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-16", 0 ],
                                        "destination": [ "obj-29", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-29", 0 ],
                                        "destination": [ "obj-30", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-28", 0 ],
                                        "destination": [ "obj-29", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-19", 0 ],
                                        "destination": [ "obj-15", 0 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-15", 0 ],
                                        "destination": [ "obj-16", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-25", 0 ],
                                        "destination": [ "obj-27", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-27", 0 ],
                                        "destination": [ "obj-6", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-23", 0 ],
                                        "destination": [ "obj-26", 0 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-24", 0 ],
                                        "destination": [ "obj-25", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-19", 0 ],
                                        "destination": [ "obj-24", 0 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-20", 0 ],
                                        "destination": [ "obj-18", 1 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-20", 0 ],
                                        "destination": [ "obj-19", 1 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-21", 0 ],
                                        "destination": [ "obj-20", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-23", 0 ],
                                        "destination": [ "obj-21", 0 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-22", 0 ],
                                        "destination": [ "obj-23", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-4", 0 ],
                                        "destination": [ "obj-22", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-18", 0 ],
                                        "destination": [ "obj-19", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-17", 0 ],
                                        "destination": [ "obj-18", 0 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-11", 0 ],
                                        "destination": [ "obj-4", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-12", 0 ],
                                        "destination": [ "obj-36", 2 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-12", 0 ],
                                        "destination": [ "obj-11", 1 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-9", 0 ],
                                        "destination": [ "obj-5", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-8", 0 ],
                                        "destination": [ "obj-9", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-7", 0 ],
                                        "destination": [ "obj-8", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-5", 0 ],
                                        "destination": [ "obj-36", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-36", 0 ],
                                        "destination": [ "obj-7", 0 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-36", 0 ],
                                        "destination": [ "obj-11", 0 ],
                                        "order": 2
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-36", 0 ],
                                        "destination": [ "obj-10", 0 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-3", 0 ],
                                        "destination": [ "obj-5", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-10", 0 ],
                                        "destination": [ "obj-3", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-26", 0 ],
                                        "destination": [ "obj-27", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-1", 0 ],
                                        "destination": [ "obj-13", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-13", 0 ],
                                        "destination": [ "obj-3", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-2", 0 ],
                                        "destination": [ "obj-12", 0 ]
                                    }
                                }
                            ]
                        }
                    },
                    "id": "obj-107",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 1159.8326114416122, 912.1338719129562, 225.0, 22.0 ],
                    "text": "mc.gen~ @chans 4",
                    "wrapper_uniquekey": "u058011202"
                }
            },
            {
                "box": {
                    "id": "obj-108",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 1159.8326114416122, 1087.4476757347584, 173.0, 22.0 ],
                    "text": "mc.mixdown~ 1 @autogain 0"
                }
            },
            {
                "box": {
                    "contdata": 1,
                    "id": "obj-109",
                    "maxclass": "multislider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1294.999876499176, 524.9999499320984, 201.0, 233.0 ],
                    "setminmax": [ 2.0, 32.0 ],
                    "settype": 0,
                    "size": 2
                }
            },
            {
                "box": {
                    "id": "obj-110",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 2,
                    "outlettype": [ "setvalue", "int" ],
                    "patching_rect": [ 1294.999876499176, 767.4999268054962, 201.0, 22.0 ],
                    "text": "mc.targetlist @chans 4 @listmode 1"
                }
            },
            {
                "box": {
                    "data": {
                        "patcher": {
                            "fileversion": 1,
                            "appversion": {
                                "major": 9,
                                "minor": 1,
                                "revision": 2,
                                "architecture": "x64",
                                "modernui": 1
                            },
                            "classnamespace": "dsp.gen",
                            "rect": [ 59.0, 107.0, 1080.0, 845.0 ],
                            "boxes": [
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 3 reset",
                                        "patching_rect": [ 738.0, 18.0, 58.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-28",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "max 2",
                                        "patching_rect": [ 134.0, 123.0, 41.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-17",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "*",
                                        "patching_rect": [ 54.0, 299.0, 29.5, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-15",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "history",
                                        "patching_rect": [ 134.0, 94.0, 44.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-14",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "== 0",
                                        "patching_rect": [ 104.0, 225.0, 33.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-7",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "counter",
                                        "patching_rect": [ 104.0, 153.0, 49.0, 22.0 ],
                                        "numoutlets": 3,
                                        "outlettype": [ "", "", "" ],
                                        "id": "obj-6",
                                        "numinlets": 3
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "< 0",
                                        "patching_rect": [ 104.0, 82.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-5",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 1",
                                        "patching_rect": [ 50.0, 14.0, 28.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-1",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 2 @default 2",
                                        "patching_rect": [ 305.0, 14.0, 89.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-2",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "delta",
                                        "patching_rect": [ 104.0, 55.0, 35.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-3",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "out 1",
                                        "patching_rect": [ 54.0, 748.0, 35.0, 22.0 ],
                                        "numoutlets": 0,
                                        "id": "obj-4",
                                        "numinlets": 1
                                    }
                                }
                            ],
                            "lines": [
                                {
                                    "patchline": {
                                        "source": [ "obj-28", 0 ],
                                        "destination": [ "obj-6", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-2", 0 ],
                                        "destination": [ "obj-14", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-15", 0 ],
                                        "destination": [ "obj-4", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-1", 0 ],
                                        "destination": [ "obj-3", 0 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-3", 0 ],
                                        "destination": [ "obj-5", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-5", 0 ],
                                        "destination": [ "obj-6", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-6", 0 ],
                                        "destination": [ "obj-7", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-1", 0 ],
                                        "destination": [ "obj-15", 0 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-7", 0 ],
                                        "destination": [ "obj-15", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-14", 0 ],
                                        "destination": [ "obj-17", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-17", 0 ],
                                        "destination": [ "obj-6", 2 ]
                                    }
                                }
                            ]
                        }
                    },
                    "id": "obj-111",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 1159.9998893737793, 684.9999346733093, 112.0, 22.0 ],
                    "text": "mc.gen~ @chans 4",
                    "wrapper_uniquekey": "u175010175"
                }
            },
            {
                "box": {
                    "calccount": 8,
                    "id": "obj-60",
                    "maxclass": "scope~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 912.5522819459438, 1169.456042200327, 152.0, 76.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-62",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 820.0836646556854, 1112.1338676810265, 90.0, 22.0 ],
                    "text": "mc.combine~ 2"
                }
            },
            {
                "box": {
                    "id": "obj-63",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 889.9581401646137, 1017.1547901928425, 173.0, 22.0 ],
                    "text": "mc.*~ @values 1 0.5 0.33 0.25"
                }
            },
            {
                "box": {
                    "id": "obj-64",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 889.9581401646137, 1039.7489319741726, 173.0, 22.0 ],
                    "text": "mc.mixdown~ 1 @autogain 0"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-65",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1077.405834943056, 884.518809735775, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "data": {
                        "patcher": {
                            "fileversion": 1,
                            "appversion": {
                                "major": 9,
                                "minor": 1,
                                "revision": 2,
                                "architecture": "x64",
                                "modernui": 1
                            },
                            "classnamespace": "dsp.gen",
                            "rect": [ 655.0, 161.0, 1172.0, 709.0 ],
                            "boxes": [
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "history",
                                        "patching_rect": [ 324.0, 352.0, 44.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-32",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "*",
                                        "patching_rect": [ 324.0, 320.0, 29.5, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-31",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "* 0.5",
                                        "patching_rect": [ 324.0, 281.0, 33.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-30",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "latch",
                                        "patching_rect": [ 324.0, 251.0, 34.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-29",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "noise",
                                        "patching_rect": [ 324.0, 146.0, 37.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-28",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "< 0",
                                        "patching_rect": [ 339.0, 214.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-16",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "delta",
                                        "patching_rect": [ 339.0, 177.0, 35.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-15",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 4 detune @default 1",
                                        "patching_rect": [ 441.0, 15.0, 129.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-14",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "delta",
                                        "patching_rect": [ 33.0, 104.0, 35.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-13",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "*",
                                        "patching_rect": [ 33.0, 626.0, 29.5, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-27",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "pow 2",
                                        "patching_rect": [ 13.0, 520.0, 41.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-26",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "sin",
                                        "patching_rect": [ 299.0, 469.0, 24.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-25",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "* twopi",
                                        "patching_rect": [ 299.0, 433.0, 45.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-24",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "wrap 0 1",
                                        "patching_rect": [ 33.0, 437.0, 55.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-23",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "!- 1",
                                        "patching_rect": [ 33.0, 408.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-22",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "> 0",
                                        "patching_rect": [ 136.0, 456.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-20",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "delta",
                                        "patching_rect": [ 136.0, 425.0, 35.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-21",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "phasor",
                                        "patching_rect": [ 299.0, 382.0, 45.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-19",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "latch",
                                        "patching_rect": [ 299.0, 115.0, 34.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-18",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 3 freq @default 65",
                                        "patching_rect": [ 299.0, 15.0, 120.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-17",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "clip 0 1",
                                        "patching_rect": [ 33.0, 378.0, 47.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-4",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 2 decay @default 2000",
                                        "patching_rect": [ 129.5, 15.0, 145.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-2",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "out 1",
                                        "patching_rect": [ 33.0, 670.0, 35.0, 22.0 ],
                                        "numoutlets": 0,
                                        "id": "obj-6",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "wrap",
                                        "patching_rect": [ 33.0, 305.0, 40.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-36",
                                        "numinlets": 3
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "mstosamps",
                                        "patching_rect": [ 129.5, 192.0, 70.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-12",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "/",
                                        "patching_rect": [ 33.0, 344.0, 29.5, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-11",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "history",
                                        "patching_rect": [ 50.0, 184.0, 44.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-10",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "history",
                                        "patching_rect": [ 122.0, 315.0, 44.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-9",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "< 0",
                                        "patching_rect": [ 122.0, 282.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-8",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "delta",
                                        "patching_rect": [ 122.0, 251.0, 35.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-7",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "accum",
                                        "patching_rect": [ 33.0, 266.0, 44.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-5",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 1",
                                        "patching_rect": [ 31.0, 15.0, 28.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-1",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "> 0",
                                        "patching_rect": [ 33.0, 220.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-3",
                                        "numinlets": 1
                                    }
                                }
                            ],
                            "lines": [
                                {
                                    "patchline": {
                                        "source": [ "obj-32", 0 ],
                                        "destination": [ "obj-19", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-31", 0 ],
                                        "destination": [ "obj-32", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-14", 0 ],
                                        "destination": [ "obj-31", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-30", 0 ],
                                        "destination": [ "obj-31", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-16", 0 ],
                                        "destination": [ "obj-29", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-29", 0 ],
                                        "destination": [ "obj-30", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-28", 0 ],
                                        "destination": [ "obj-29", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-19", 0 ],
                                        "destination": [ "obj-15", 0 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-15", 0 ],
                                        "destination": [ "obj-16", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-25", 0 ],
                                        "destination": [ "obj-27", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-27", 0 ],
                                        "destination": [ "obj-6", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-23", 0 ],
                                        "destination": [ "obj-26", 0 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-24", 0 ],
                                        "destination": [ "obj-25", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-19", 0 ],
                                        "destination": [ "obj-24", 0 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-20", 0 ],
                                        "destination": [ "obj-18", 1 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-20", 0 ],
                                        "destination": [ "obj-19", 1 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-21", 0 ],
                                        "destination": [ "obj-20", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-23", 0 ],
                                        "destination": [ "obj-21", 0 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-22", 0 ],
                                        "destination": [ "obj-23", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-4", 0 ],
                                        "destination": [ "obj-22", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-18", 0 ],
                                        "destination": [ "obj-19", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-17", 0 ],
                                        "destination": [ "obj-18", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-11", 0 ],
                                        "destination": [ "obj-4", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-12", 0 ],
                                        "destination": [ "obj-36", 2 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-12", 0 ],
                                        "destination": [ "obj-11", 1 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-9", 0 ],
                                        "destination": [ "obj-5", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-8", 0 ],
                                        "destination": [ "obj-9", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-7", 0 ],
                                        "destination": [ "obj-8", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-5", 0 ],
                                        "destination": [ "obj-36", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-36", 0 ],
                                        "destination": [ "obj-7", 0 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-36", 0 ],
                                        "destination": [ "obj-11", 0 ],
                                        "order": 2
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-36", 0 ],
                                        "destination": [ "obj-10", 0 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-3", 0 ],
                                        "destination": [ "obj-5", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-10", 0 ],
                                        "destination": [ "obj-3", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-26", 0 ],
                                        "destination": [ "obj-27", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-1", 0 ],
                                        "destination": [ "obj-13", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-13", 0 ],
                                        "destination": [ "obj-3", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-2", 0 ],
                                        "destination": [ "obj-12", 0 ]
                                    }
                                }
                            ]
                        }
                    },
                    "id": "obj-66",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 889.9581401646137, 967.3639962673187, 207.33333333333337, 22.0 ],
                    "text": "mc.gen~ @chans 4",
                    "wrapper_uniquekey": "u954010368"
                }
            },
            {
                "box": {
                    "id": "obj-67",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 820.0836646556854, 1064.8535339534283, 173.0, 22.0 ],
                    "text": "mc.*~ @values 1 0.5 0.33 0.25"
                }
            },
            {
                "box": {
                    "id": "obj-70",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 887.4999153614044, 822.4999215602875, 87.0, 22.0 ],
                    "text": "loadmess 900."
                }
            },
            {
                "box": {
                    "id": "obj-71",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1159.9998893737793, 582.4999444484711, 77.0, 22.0 ],
                    "text": "loadmess 48"
                }
            },
            {
                "box": {
                    "id": "obj-72",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1004.9999041557312, 792.4999244213104, 73.0, 22.0 ],
                    "text": "loadmess 1."
                }
            },
            {
                "box": {
                    "format": 5,
                    "id": "obj-73",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1159.9998893737793, 607.4999420642853, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-74",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1052.4998996257782, 822.4999215602875, 32.0, 22.0 ],
                    "text": "mtof"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-75",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1004.9999041557312, 822.4999215602875, 41.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-76",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 957.740565508604, 884.518809735775, 114.0, 22.0 ],
                    "text": "pak harmonic 1. 65."
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-77",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 887.4476799666882, 884.518809735775, 65.5, 22.0 ]
                }
            },
            {
                "box": {
                    "columns": 16,
                    "id": "obj-78",
                    "maxclass": "gridmeter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 819.999921798706, 792.4999244213104, 74.0, 16.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-79",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 857.4999182224274, 712.499932050705, 52.0, 22.0 ],
                    "text": "mc.>~ 0"
                }
            },
            {
                "box": {
                    "id": "obj-80",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 857.4999182224274, 737.4999296665192, 92.0, 22.0 ],
                    "text": "mc.mixdown~ 1"
                }
            },
            {
                "box": {
                    "data": {
                        "patcher": {
                            "fileversion": 1,
                            "appversion": {
                                "major": 9,
                                "minor": 1,
                                "revision": 2,
                                "architecture": "x64",
                                "modernui": 1
                            },
                            "classnamespace": "dsp.gen",
                            "rect": [ 59.0, 107.0, 600.0, 450.0 ],
                            "boxes": [
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "*",
                                        "patching_rect": [ 50.0, 283.5, 29.5, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-6",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "<= 1",
                                        "patching_rect": [ 305.0, 153.0, 33.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-5",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 1",
                                        "patching_rect": [ 50.0, 14.0, 28.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-1",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 2",
                                        "patching_rect": [ 305.0, 14.0, 28.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-2",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "> 0",
                                        "patching_rect": [ 50.0, 153.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-3",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "out 1",
                                        "patching_rect": [ 50.0, 414.0, 35.0, 22.0 ],
                                        "numoutlets": 0,
                                        "id": "obj-4",
                                        "numinlets": 1
                                    }
                                }
                            ],
                            "lines": [
                                {
                                    "patchline": {
                                        "source": [ "obj-1", 0 ],
                                        "destination": [ "obj-3", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-2", 0 ],
                                        "destination": [ "obj-5", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-6", 0 ],
                                        "destination": [ "obj-4", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-3", 0 ],
                                        "destination": [ "obj-6", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-5", 0 ],
                                        "destination": [ "obj-6", 1 ]
                                    }
                                }
                            ]
                        }
                    },
                    "id": "obj-81",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 819.999921798706, 767.4999268054962, 55.0, 22.0 ],
                    "text": "mc.gen~",
                    "wrapper_uniquekey": "u828010338"
                }
            },
            {
                "box": {
                    "data": {
                        "patcher": {
                            "fileversion": 1,
                            "appversion": {
                                "major": 9,
                                "minor": 1,
                                "revision": 2,
                                "architecture": "x64",
                                "modernui": 1
                            },
                            "classnamespace": "dsp.gen",
                            "rect": [ 655.0, 161.0, 1172.0, 709.0 ],
                            "boxes": [
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "* 0.5",
                                        "patching_rect": [ 499.0, 141.0, 33.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-43",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "clip",
                                        "patching_rect": [ 478.0, 169.0, 40.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-41",
                                        "numinlets": 3
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "history",
                                        "patching_rect": [ 324.0, 352.0, 44.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-32",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "*",
                                        "patching_rect": [ 324.0, 320.0, 29.5, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-31",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "* 0.5",
                                        "patching_rect": [ 324.0, 281.0, 33.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-30",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "latch",
                                        "patching_rect": [ 324.0, 251.0, 34.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-29",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "noise",
                                        "patching_rect": [ 324.0, 146.0, 37.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-28",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "< 0",
                                        "patching_rect": [ 339.0, 214.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-16",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "delta",
                                        "patching_rect": [ 339.0, 177.0, 35.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-15",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 4 detune @default 1",
                                        "patching_rect": [ 478.0, 15.0, 129.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-14",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "delta",
                                        "patching_rect": [ 33.0, 104.0, 35.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-13",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "*",
                                        "patching_rect": [ 33.0, 626.0, 29.5, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-27",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "pow 2",
                                        "patching_rect": [ 13.0, 520.0, 41.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-26",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "sin",
                                        "patching_rect": [ 299.0, 469.0, 24.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-25",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "* twopi",
                                        "patching_rect": [ 299.0, 433.0, 45.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-24",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "wrap 0 1",
                                        "patching_rect": [ 33.0, 437.0, 55.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-23",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "!- 1",
                                        "patching_rect": [ 33.0, 408.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-22",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "> 0",
                                        "patching_rect": [ 136.0, 456.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-20",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "delta",
                                        "patching_rect": [ 136.0, 425.0, 35.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-21",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "phasor",
                                        "patching_rect": [ 299.0, 382.0, 45.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-19",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "latch",
                                        "patching_rect": [ 299.0, 115.0, 34.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-18",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 3 freq @default 65",
                                        "patching_rect": [ 299.0, 15.0, 120.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-17",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "clip 0 1",
                                        "patching_rect": [ 33.0, 378.0, 47.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-4",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 2 decay @default 2000",
                                        "patching_rect": [ 129.5, 15.0, 145.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-2",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "out 1",
                                        "patching_rect": [ 33.0, 670.0, 35.0, 22.0 ],
                                        "numoutlets": 0,
                                        "id": "obj-6",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "wrap",
                                        "patching_rect": [ 33.0, 305.0, 40.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-36",
                                        "numinlets": 3
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "mstosamps",
                                        "patching_rect": [ 129.5, 192.0, 70.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-12",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "/",
                                        "patching_rect": [ 33.0, 344.0, 29.5, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-11",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "history",
                                        "patching_rect": [ 50.0, 184.0, 44.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-10",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "history",
                                        "patching_rect": [ 122.0, 315.0, 44.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-9",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "< 0",
                                        "patching_rect": [ 122.0, 282.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-8",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "delta",
                                        "patching_rect": [ 122.0, 251.0, 35.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-7",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "accum",
                                        "patching_rect": [ 33.0, 266.0, 44.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-5",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 1",
                                        "patching_rect": [ 31.0, 15.0, 28.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-1",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "> 0",
                                        "patching_rect": [ 33.0, 220.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-3",
                                        "numinlets": 1
                                    }
                                }
                            ],
                            "lines": [
                                {
                                    "patchline": {
                                        "source": [ "obj-13", 0 ],
                                        "destination": [ "obj-3", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-1", 0 ],
                                        "destination": [ "obj-13", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-26", 0 ],
                                        "destination": [ "obj-27", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-10", 0 ],
                                        "destination": [ "obj-3", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-3", 0 ],
                                        "destination": [ "obj-5", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-36", 0 ],
                                        "destination": [ "obj-10", 0 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-36", 0 ],
                                        "destination": [ "obj-11", 0 ],
                                        "order": 2
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-36", 0 ],
                                        "destination": [ "obj-7", 0 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-5", 0 ],
                                        "destination": [ "obj-36", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-7", 0 ],
                                        "destination": [ "obj-8", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-8", 0 ],
                                        "destination": [ "obj-9", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-9", 0 ],
                                        "destination": [ "obj-5", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-12", 0 ],
                                        "destination": [ "obj-11", 1 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-12", 0 ],
                                        "destination": [ "obj-36", 2 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-11", 0 ],
                                        "destination": [ "obj-4", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-17", 0 ],
                                        "destination": [ "obj-18", 0 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-18", 0 ],
                                        "destination": [ "obj-19", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-4", 0 ],
                                        "destination": [ "obj-22", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-22", 0 ],
                                        "destination": [ "obj-23", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-23", 0 ],
                                        "destination": [ "obj-21", 0 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-21", 0 ],
                                        "destination": [ "obj-20", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-20", 0 ],
                                        "destination": [ "obj-19", 1 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-20", 0 ],
                                        "destination": [ "obj-18", 1 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-19", 0 ],
                                        "destination": [ "obj-24", 0 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-24", 0 ],
                                        "destination": [ "obj-25", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-23", 0 ],
                                        "destination": [ "obj-26", 0 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-27", 0 ],
                                        "destination": [ "obj-6", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-25", 0 ],
                                        "destination": [ "obj-27", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-15", 0 ],
                                        "destination": [ "obj-16", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-19", 0 ],
                                        "destination": [ "obj-15", 0 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-28", 0 ],
                                        "destination": [ "obj-29", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-29", 0 ],
                                        "destination": [ "obj-30", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-16", 0 ],
                                        "destination": [ "obj-29", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-30", 0 ],
                                        "destination": [ "obj-31", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-31", 0 ],
                                        "destination": [ "obj-32", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-32", 0 ],
                                        "destination": [ "obj-19", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-41", 0 ],
                                        "destination": [ "obj-31", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-14", 0 ],
                                        "destination": [ "obj-41", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-17", 0 ],
                                        "destination": [ "obj-43", 0 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-43", 0 ],
                                        "destination": [ "obj-41", 2 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-2", 0 ],
                                        "destination": [ "obj-12", 0 ]
                                    }
                                }
                            ]
                        }
                    },
                    "id": "obj-82",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 820.0836646556854, 912.1338719129562, 225.0, 22.0 ],
                    "text": "mc.gen~ @chans 4",
                    "wrapper_uniquekey": "u033010415"
                }
            },
            {
                "box": {
                    "id": "obj-83",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 820.0836646556854, 1087.4476757347584, 173.0, 22.0 ],
                    "text": "mc.mixdown~ 1 @autogain 0"
                }
            },
            {
                "box": {
                    "contdata": 1,
                    "id": "obj-85",
                    "maxclass": "multislider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 952.4999091625214, 524.9999499320984, 201.0, 233.0 ],
                    "setminmax": [ 2.0, 32.0 ],
                    "settype": 0,
                    "size": 2
                }
            },
            {
                "box": {
                    "id": "obj-86",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 2,
                    "outlettype": [ "setvalue", "int" ],
                    "patching_rect": [ 952.4999091625214, 767.4999268054962, 201.0, 22.0 ],
                    "text": "mc.targetlist @chans 4 @listmode 1"
                }
            },
            {
                "box": {
                    "data": {
                        "patcher": {
                            "fileversion": 1,
                            "appversion": {
                                "major": 9,
                                "minor": 1,
                                "revision": 2,
                                "architecture": "x64",
                                "modernui": 1
                            },
                            "classnamespace": "dsp.gen",
                            "rect": [ 59.0, 107.0, 1080.0, 845.0 ],
                            "boxes": [
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 3 reset",
                                        "patching_rect": [ 738.0, 18.0, 58.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-28",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "max 2",
                                        "patching_rect": [ 134.0, 123.0, 41.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-17",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "*",
                                        "patching_rect": [ 54.0, 299.0, 29.5, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-15",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "history",
                                        "patching_rect": [ 134.0, 94.0, 44.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-14",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "== 0",
                                        "patching_rect": [ 104.0, 225.0, 33.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-7",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "counter",
                                        "patching_rect": [ 104.0, 153.0, 49.0, 22.0 ],
                                        "numoutlets": 3,
                                        "outlettype": [ "", "", "" ],
                                        "id": "obj-6",
                                        "numinlets": 3
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "< 0",
                                        "patching_rect": [ 104.0, 82.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-5",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 1",
                                        "patching_rect": [ 50.0, 14.0, 28.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-1",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 2 @default 2",
                                        "patching_rect": [ 305.0, 14.0, 89.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-2",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "delta",
                                        "patching_rect": [ 104.0, 55.0, 35.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-3",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "out 1",
                                        "patching_rect": [ 54.0, 748.0, 35.0, 22.0 ],
                                        "numoutlets": 0,
                                        "id": "obj-4",
                                        "numinlets": 1
                                    }
                                }
                            ],
                            "lines": [
                                {
                                    "patchline": {
                                        "source": [ "obj-17", 0 ],
                                        "destination": [ "obj-6", 2 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-14", 0 ],
                                        "destination": [ "obj-17", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-7", 0 ],
                                        "destination": [ "obj-15", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-1", 0 ],
                                        "destination": [ "obj-15", 0 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-6", 0 ],
                                        "destination": [ "obj-7", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-5", 0 ],
                                        "destination": [ "obj-6", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-3", 0 ],
                                        "destination": [ "obj-5", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-1", 0 ],
                                        "destination": [ "obj-3", 0 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-15", 0 ],
                                        "destination": [ "obj-4", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-2", 0 ],
                                        "destination": [ "obj-14", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-28", 0 ],
                                        "destination": [ "obj-6", 1 ]
                                    }
                                }
                            ]
                        }
                    },
                    "id": "obj-87",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 819.999921798706, 684.9999346733093, 112.0, 22.0 ],
                    "text": "mc.gen~ @chans 4",
                    "wrapper_uniquekey": "u869010386"
                }
            },
            {
                "box": {
                    "calccount": 8,
                    "id": "obj-31",
                    "maxclass": "scope~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 572.3849251270294, 1169.456042200327, 152.0, 76.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-32",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 477.40584763884544, 1112.1338676810265, 90.0, 22.0 ],
                    "text": "mc.combine~ 2"
                }
            },
            {
                "box": {
                    "id": "obj-33",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 549.7907833456993, 1017.1547901928425, 173.0, 22.0 ],
                    "text": "mc.*~ @values 1 0.5 0.33 0.25"
                }
            },
            {
                "box": {
                    "id": "obj-34",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 549.7907833456993, 1039.7489319741726, 173.0, 22.0 ],
                    "text": "mc.mixdown~ 1 @autogain 0"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-35",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 737.6568881571293, 884.518809735775, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "data": {
                        "patcher": {
                            "fileversion": 1,
                            "appversion": {
                                "major": 9,
                                "minor": 1,
                                "revision": 2,
                                "architecture": "x64",
                                "modernui": 1
                            },
                            "classnamespace": "dsp.gen",
                            "rect": [ 655.0, 161.0, 1172.0, 709.0 ],
                            "boxes": [
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "history",
                                        "patching_rect": [ 324.0, 352.0, 44.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-32",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "*",
                                        "patching_rect": [ 324.0, 320.0, 29.5, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-31",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "* 0.5",
                                        "patching_rect": [ 324.0, 281.0, 33.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-30",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "latch",
                                        "patching_rect": [ 324.0, 251.0, 34.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-29",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "noise",
                                        "patching_rect": [ 324.0, 146.0, 37.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-28",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "< 0",
                                        "patching_rect": [ 339.0, 214.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-16",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "delta",
                                        "patching_rect": [ 339.0, 177.0, 35.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-15",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 4 detune @default 1",
                                        "patching_rect": [ 441.0, 15.0, 129.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-14",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "delta",
                                        "patching_rect": [ 33.0, 104.0, 35.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-13",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "*",
                                        "patching_rect": [ 33.0, 626.0, 29.5, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-27",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "pow 2",
                                        "patching_rect": [ 13.0, 520.0, 41.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-26",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "sin",
                                        "patching_rect": [ 299.0, 469.0, 24.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-25",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "* twopi",
                                        "patching_rect": [ 299.0, 433.0, 45.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-24",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "wrap 0 1",
                                        "patching_rect": [ 33.0, 437.0, 55.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-23",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "!- 1",
                                        "patching_rect": [ 33.0, 408.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-22",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "> 0",
                                        "patching_rect": [ 136.0, 456.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-20",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "delta",
                                        "patching_rect": [ 136.0, 425.0, 35.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-21",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "phasor",
                                        "patching_rect": [ 299.0, 382.0, 45.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-19",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "latch",
                                        "patching_rect": [ 299.0, 115.0, 34.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-18",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 3 freq @default 65",
                                        "patching_rect": [ 299.0, 15.0, 120.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-17",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "clip 0 1",
                                        "patching_rect": [ 33.0, 378.0, 47.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-4",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 2 decay @default 4000",
                                        "patching_rect": [ 129.5, 15.0, 145.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-2",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "out 1",
                                        "patching_rect": [ 33.0, 670.0, 35.0, 22.0 ],
                                        "numoutlets": 0,
                                        "id": "obj-6",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "wrap",
                                        "patching_rect": [ 33.0, 305.0, 40.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-36",
                                        "numinlets": 3
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "mstosamps",
                                        "patching_rect": [ 129.5, 192.0, 70.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-12",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "/",
                                        "patching_rect": [ 33.0, 344.0, 29.5, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-11",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "history",
                                        "patching_rect": [ 50.0, 184.0, 44.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-10",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "history",
                                        "patching_rect": [ 122.0, 315.0, 44.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-9",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "< 0",
                                        "patching_rect": [ 122.0, 282.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-8",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "delta",
                                        "patching_rect": [ 122.0, 251.0, 35.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-7",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "accum",
                                        "patching_rect": [ 33.0, 266.0, 44.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-5",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 1",
                                        "patching_rect": [ 31.0, 15.0, 28.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-1",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "> 0",
                                        "patching_rect": [ 33.0, 220.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-3",
                                        "numinlets": 1
                                    }
                                }
                            ],
                            "lines": [
                                {
                                    "patchline": {
                                        "source": [ "obj-13", 0 ],
                                        "destination": [ "obj-3", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-1", 0 ],
                                        "destination": [ "obj-13", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-26", 0 ],
                                        "destination": [ "obj-27", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-10", 0 ],
                                        "destination": [ "obj-3", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-3", 0 ],
                                        "destination": [ "obj-5", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-36", 0 ],
                                        "destination": [ "obj-10", 0 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-36", 0 ],
                                        "destination": [ "obj-11", 0 ],
                                        "order": 2
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-36", 0 ],
                                        "destination": [ "obj-7", 0 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-5", 0 ],
                                        "destination": [ "obj-36", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-7", 0 ],
                                        "destination": [ "obj-8", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-8", 0 ],
                                        "destination": [ "obj-9", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-9", 0 ],
                                        "destination": [ "obj-5", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-12", 0 ],
                                        "destination": [ "obj-11", 1 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-12", 0 ],
                                        "destination": [ "obj-36", 2 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-11", 0 ],
                                        "destination": [ "obj-4", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-17", 0 ],
                                        "destination": [ "obj-18", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-18", 0 ],
                                        "destination": [ "obj-19", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-4", 0 ],
                                        "destination": [ "obj-22", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-22", 0 ],
                                        "destination": [ "obj-23", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-23", 0 ],
                                        "destination": [ "obj-21", 0 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-21", 0 ],
                                        "destination": [ "obj-20", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-20", 0 ],
                                        "destination": [ "obj-19", 1 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-20", 0 ],
                                        "destination": [ "obj-18", 1 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-19", 0 ],
                                        "destination": [ "obj-24", 0 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-24", 0 ],
                                        "destination": [ "obj-25", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-23", 0 ],
                                        "destination": [ "obj-26", 0 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-27", 0 ],
                                        "destination": [ "obj-6", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-25", 0 ],
                                        "destination": [ "obj-27", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-15", 0 ],
                                        "destination": [ "obj-16", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-19", 0 ],
                                        "destination": [ "obj-15", 0 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-28", 0 ],
                                        "destination": [ "obj-29", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-29", 0 ],
                                        "destination": [ "obj-30", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-16", 0 ],
                                        "destination": [ "obj-29", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-30", 0 ],
                                        "destination": [ "obj-31", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-14", 0 ],
                                        "destination": [ "obj-31", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-31", 0 ],
                                        "destination": [ "obj-32", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-32", 0 ],
                                        "destination": [ "obj-19", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-2", 0 ],
                                        "destination": [ "obj-12", 0 ]
                                    }
                                }
                            ]
                        }
                    },
                    "id": "obj-37",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 549.7907833456993, 967.3639962673187, 207.33333333333337, 22.0 ],
                    "text": "mc.gen~ @chans 4",
                    "wrapper_uniquekey": "u339010412"
                }
            },
            {
                "box": {
                    "id": "obj-38",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 477.40584763884544, 1064.8535339534283, 173.0, 22.0 ],
                    "text": "mc.*~ @values 1 0.5 0.33 0.25"
                }
            },
            {
                "box": {
                    "id": "obj-39",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 547.4999477863312, 822.4999215602875, 87.0, 22.0 ],
                    "text": "loadmess 700."
                }
            },
            {
                "box": {
                    "id": "obj-40",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 819.999921798706, 582.4999444484711, 77.0, 22.0 ],
                    "text": "loadmess 43"
                }
            },
            {
                "box": {
                    "id": "obj-41",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 664.999936580658, 792.4999244213104, 73.0, 22.0 ],
                    "text": "loadmess 1."
                }
            },
            {
                "box": {
                    "format": 5,
                    "id": "obj-42",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 819.999921798706, 607.4999420642853, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-43",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 709.9999322891235, 822.4999215602875, 32.0, 22.0 ],
                    "text": "mtof"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-44",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 664.999936580658, 822.4999215602875, 41.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-45",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 617.5732086896896, 884.518809735775, 114.0, 22.0 ],
                    "text": "pak harmonic 1. 65."
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-47",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 546.6558476388454, 884.518809735775, 65.5, 22.0 ]
                }
            },
            {
                "box": {
                    "columns": 16,
                    "id": "obj-48",
                    "maxclass": "gridmeter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 477.4999544620514, 792.4999244213104, 74.0, 16.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-49",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 514.9999508857727, 712.499932050705, 52.0, 22.0 ],
                    "text": "mc.>~ 0"
                }
            },
            {
                "box": {
                    "id": "obj-52",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 514.9999508857727, 737.4999296665192, 92.0, 22.0 ],
                    "text": "mc.mixdown~ 1"
                }
            },
            {
                "box": {
                    "data": {
                        "patcher": {
                            "fileversion": 1,
                            "appversion": {
                                "major": 9,
                                "minor": 1,
                                "revision": 2,
                                "architecture": "x64",
                                "modernui": 1
                            },
                            "classnamespace": "dsp.gen",
                            "rect": [ 59.0, 107.0, 600.0, 450.0 ],
                            "boxes": [
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "*",
                                        "patching_rect": [ 50.0, 283.5, 29.5, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-6",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "<= 1",
                                        "patching_rect": [ 305.0, 153.0, 33.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-5",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 1",
                                        "patching_rect": [ 50.0, 14.0, 28.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-1",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 2",
                                        "patching_rect": [ 305.0, 14.0, 28.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-2",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "> 0",
                                        "patching_rect": [ 50.0, 153.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-3",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "out 1",
                                        "patching_rect": [ 50.0, 414.0, 35.0, 22.0 ],
                                        "numoutlets": 0,
                                        "id": "obj-4",
                                        "numinlets": 1
                                    }
                                }
                            ],
                            "lines": [
                                {
                                    "patchline": {
                                        "source": [ "obj-5", 0 ],
                                        "destination": [ "obj-6", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-3", 0 ],
                                        "destination": [ "obj-6", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-6", 0 ],
                                        "destination": [ "obj-4", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-2", 0 ],
                                        "destination": [ "obj-5", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-1", 0 ],
                                        "destination": [ "obj-3", 0 ]
                                    }
                                }
                            ]
                        }
                    },
                    "id": "obj-53",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 477.4999544620514, 767.4999268054962, 55.0, 22.0 ],
                    "text": "mc.gen~",
                    "wrapper_uniquekey": "u950010445"
                }
            },
            {
                "box": {
                    "data": {
                        "patcher": {
                            "fileversion": 1,
                            "appversion": {
                                "major": 9,
                                "minor": 1,
                                "revision": 2,
                                "architecture": "x64",
                                "modernui": 1
                            },
                            "classnamespace": "dsp.gen",
                            "rect": [ 655.0, 161.0, 1172.0, 709.0 ],
                            "boxes": [
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "* 0.5",
                                        "patching_rect": [ 499.0, 141.0, 33.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-43",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "clip",
                                        "patching_rect": [ 478.0, 169.0, 40.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-41",
                                        "numinlets": 3
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "history",
                                        "patching_rect": [ 324.0, 352.0, 44.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-32",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "*",
                                        "patching_rect": [ 324.0, 320.0, 29.5, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-31",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "* 0.5",
                                        "patching_rect": [ 324.0, 281.0, 33.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-30",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "latch",
                                        "patching_rect": [ 324.0, 251.0, 34.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-29",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "noise",
                                        "patching_rect": [ 324.0, 146.0, 37.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-28",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "< 0",
                                        "patching_rect": [ 339.0, 214.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-16",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "delta",
                                        "patching_rect": [ 339.0, 177.0, 35.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-15",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 4 detune @default 1",
                                        "patching_rect": [ 478.0, 15.0, 129.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-14",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "delta",
                                        "patching_rect": [ 33.0, 104.0, 35.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-13",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "*",
                                        "patching_rect": [ 33.0, 626.0, 29.5, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-27",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "pow 2",
                                        "patching_rect": [ 13.0, 520.0, 41.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-26",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "sin",
                                        "patching_rect": [ 299.0, 469.0, 24.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-25",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "* twopi",
                                        "patching_rect": [ 299.0, 433.0, 45.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-24",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "wrap 0 1",
                                        "patching_rect": [ 33.0, 437.0, 55.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-23",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "!- 1",
                                        "patching_rect": [ 33.0, 408.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-22",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "> 0",
                                        "patching_rect": [ 136.0, 456.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-20",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "delta",
                                        "patching_rect": [ 136.0, 425.0, 35.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-21",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "phasor",
                                        "patching_rect": [ 299.0, 382.0, 45.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-19",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "latch",
                                        "patching_rect": [ 299.0, 115.0, 34.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-18",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 3 freq @default 65",
                                        "patching_rect": [ 299.0, 15.0, 120.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-17",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "clip 0 1",
                                        "patching_rect": [ 33.0, 378.0, 47.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-4",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 2 decay @default 4000",
                                        "patching_rect": [ 129.5, 15.0, 145.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-2",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "out 1",
                                        "patching_rect": [ 33.0, 670.0, 35.0, 22.0 ],
                                        "numoutlets": 0,
                                        "id": "obj-6",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "wrap",
                                        "patching_rect": [ 33.0, 305.0, 40.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-36",
                                        "numinlets": 3
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "mstosamps",
                                        "patching_rect": [ 129.5, 192.0, 70.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-12",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "/",
                                        "patching_rect": [ 33.0, 344.0, 29.5, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-11",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "history",
                                        "patching_rect": [ 50.0, 184.0, 44.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-10",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "history",
                                        "patching_rect": [ 122.0, 315.0, 44.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-9",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "< 0",
                                        "patching_rect": [ 122.0, 282.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-8",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "delta",
                                        "patching_rect": [ 122.0, 251.0, 35.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-7",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "accum",
                                        "patching_rect": [ 33.0, 266.0, 44.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-5",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 1",
                                        "patching_rect": [ 31.0, 15.0, 28.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-1",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "> 0",
                                        "patching_rect": [ 33.0, 220.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-3",
                                        "numinlets": 1
                                    }
                                }
                            ],
                            "lines": [
                                {
                                    "patchline": {
                                        "source": [ "obj-43", 0 ],
                                        "destination": [ "obj-41", 2 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-17", 0 ],
                                        "destination": [ "obj-43", 0 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-14", 0 ],
                                        "destination": [ "obj-41", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-41", 0 ],
                                        "destination": [ "obj-31", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-32", 0 ],
                                        "destination": [ "obj-19", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-31", 0 ],
                                        "destination": [ "obj-32", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-30", 0 ],
                                        "destination": [ "obj-31", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-16", 0 ],
                                        "destination": [ "obj-29", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-29", 0 ],
                                        "destination": [ "obj-30", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-28", 0 ],
                                        "destination": [ "obj-29", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-19", 0 ],
                                        "destination": [ "obj-15", 0 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-15", 0 ],
                                        "destination": [ "obj-16", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-25", 0 ],
                                        "destination": [ "obj-27", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-27", 0 ],
                                        "destination": [ "obj-6", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-23", 0 ],
                                        "destination": [ "obj-26", 0 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-24", 0 ],
                                        "destination": [ "obj-25", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-19", 0 ],
                                        "destination": [ "obj-24", 0 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-20", 0 ],
                                        "destination": [ "obj-18", 1 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-20", 0 ],
                                        "destination": [ "obj-19", 1 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-21", 0 ],
                                        "destination": [ "obj-20", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-23", 0 ],
                                        "destination": [ "obj-21", 0 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-22", 0 ],
                                        "destination": [ "obj-23", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-4", 0 ],
                                        "destination": [ "obj-22", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-18", 0 ],
                                        "destination": [ "obj-19", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-17", 0 ],
                                        "destination": [ "obj-18", 0 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-11", 0 ],
                                        "destination": [ "obj-4", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-12", 0 ],
                                        "destination": [ "obj-36", 2 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-12", 0 ],
                                        "destination": [ "obj-11", 1 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-9", 0 ],
                                        "destination": [ "obj-5", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-8", 0 ],
                                        "destination": [ "obj-9", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-7", 0 ],
                                        "destination": [ "obj-8", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-5", 0 ],
                                        "destination": [ "obj-36", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-36", 0 ],
                                        "destination": [ "obj-7", 0 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-36", 0 ],
                                        "destination": [ "obj-11", 0 ],
                                        "order": 2
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-36", 0 ],
                                        "destination": [ "obj-10", 0 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-3", 0 ],
                                        "destination": [ "obj-5", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-10", 0 ],
                                        "destination": [ "obj-3", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-26", 0 ],
                                        "destination": [ "obj-27", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-1", 0 ],
                                        "destination": [ "obj-13", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-13", 0 ],
                                        "destination": [ "obj-3", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-2", 0 ],
                                        "destination": [ "obj-12", 0 ]
                                    }
                                }
                            ]
                        }
                    },
                    "id": "obj-54",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 477.40584763884544, 912.1338719129562, 225.0, 22.0 ],
                    "text": "mc.gen~ @chans 4",
                    "wrapper_uniquekey": "u539009865"
                }
            },
            {
                "box": {
                    "id": "obj-55",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 477.40584763884544, 1087.4476757347584, 173.0, 22.0 ],
                    "text": "mc.mixdown~ 1 @autogain 0"
                }
            },
            {
                "box": {
                    "contdata": 1,
                    "id": "obj-56",
                    "maxclass": "multislider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 612.4999415874481, 524.9999499320984, 201.0, 233.0 ],
                    "setminmax": [ 2.0, 32.0 ],
                    "settype": 0,
                    "size": 2
                }
            },
            {
                "box": {
                    "id": "obj-57",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 2,
                    "outlettype": [ "setvalue", "int" ],
                    "patching_rect": [ 612.4999415874481, 767.4999268054962, 201.0, 22.0 ],
                    "text": "mc.targetlist @chans 4 @listmode 1"
                }
            },
            {
                "box": {
                    "data": {
                        "patcher": {
                            "fileversion": 1,
                            "appversion": {
                                "major": 9,
                                "minor": 1,
                                "revision": 2,
                                "architecture": "x64",
                                "modernui": 1
                            },
                            "classnamespace": "dsp.gen",
                            "rect": [ 59.0, 107.0, 1080.0, 845.0 ],
                            "boxes": [
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 3 reset",
                                        "patching_rect": [ 738.0, 18.0, 58.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-28",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "max 2",
                                        "patching_rect": [ 134.0, 123.0, 41.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-17",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "*",
                                        "patching_rect": [ 54.0, 299.0, 29.5, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-15",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "history",
                                        "patching_rect": [ 134.0, 94.0, 44.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-14",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "== 0",
                                        "patching_rect": [ 104.0, 225.0, 33.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-7",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "counter",
                                        "patching_rect": [ 104.0, 153.0, 49.0, 22.0 ],
                                        "numoutlets": 3,
                                        "outlettype": [ "", "", "" ],
                                        "id": "obj-6",
                                        "numinlets": 3
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "< 0",
                                        "patching_rect": [ 104.0, 82.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-5",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 1",
                                        "patching_rect": [ 50.0, 14.0, 28.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-1",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 2 @default 2",
                                        "patching_rect": [ 305.0, 14.0, 89.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-2",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "delta",
                                        "patching_rect": [ 104.0, 55.0, 35.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-3",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "out 1",
                                        "patching_rect": [ 54.0, 748.0, 35.0, 22.0 ],
                                        "numoutlets": 0,
                                        "id": "obj-4",
                                        "numinlets": 1
                                    }
                                }
                            ],
                            "lines": [
                                {
                                    "patchline": {
                                        "source": [ "obj-28", 0 ],
                                        "destination": [ "obj-6", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-2", 0 ],
                                        "destination": [ "obj-14", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-15", 0 ],
                                        "destination": [ "obj-4", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-1", 0 ],
                                        "destination": [ "obj-3", 0 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-3", 0 ],
                                        "destination": [ "obj-5", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-5", 0 ],
                                        "destination": [ "obj-6", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-6", 0 ],
                                        "destination": [ "obj-7", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-1", 0 ],
                                        "destination": [ "obj-15", 0 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-7", 0 ],
                                        "destination": [ "obj-15", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-14", 0 ],
                                        "destination": [ "obj-17", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-17", 0 ],
                                        "destination": [ "obj-6", 2 ]
                                    }
                                }
                            ]
                        }
                    },
                    "id": "obj-58",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 477.4999544620514, 684.9999346733093, 112.0, 22.0 ],
                    "text": "mc.gen~ @chans 4",
                    "wrapper_uniquekey": "u727010503"
                }
            },
            {
                "box": {
                    "calccount": 8,
                    "id": "obj-25",
                    "maxclass": "scope~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 229.70710811018944, 1169.456042200327, 152.0, 76.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 137.65690085291862, 1112.1338676810265, 90.0, 22.0 ],
                    "text": "mc.combine~ 2"
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 207.53137636184692, 1017.1547901928425, 173.0, 22.0 ],
                    "text": "mc.*~ @values 1 0.5 0.33 0.25"
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 207.53137636184692, 1039.7489319741726, 173.0, 22.0 ],
                    "text": "mc.mixdown~ 1 @autogain 0"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-17",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 397.4895313382149, 884.518809735775, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "data": {
                        "patcher": {
                            "fileversion": 1,
                            "appversion": {
                                "major": 9,
                                "minor": 1,
                                "revision": 2,
                                "architecture": "x64",
                                "modernui": 1
                            },
                            "classnamespace": "dsp.gen",
                            "rect": [ 34.0, 99.0, 1660.0, 984.0 ],
                            "boxes": [
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "history",
                                        "patching_rect": [ 324.0, 352.0, 44.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-32",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "*",
                                        "patching_rect": [ 324.0, 320.0, 29.5, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-31",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "* 0.5",
                                        "patching_rect": [ 324.0, 281.0, 33.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-30",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "latch",
                                        "patching_rect": [ 324.0, 251.0, 34.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-29",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "noise",
                                        "patching_rect": [ 324.0, 146.0, 37.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-28",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "< 0",
                                        "patching_rect": [ 339.0, 214.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-16",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "delta",
                                        "patching_rect": [ 339.0, 177.0, 35.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-15",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 4 detune @default 1",
                                        "patching_rect": [ 441.0, 15.0, 129.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-14",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "delta",
                                        "patching_rect": [ 33.0, 104.0, 35.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-13",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "*",
                                        "patching_rect": [ 33.0, 626.0, 29.5, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-27",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "pow 2",
                                        "patching_rect": [ 13.0, 520.0, 41.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-26",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "sin",
                                        "patching_rect": [ 299.0, 469.0, 24.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-25",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "* twopi",
                                        "patching_rect": [ 299.0, 433.0, 45.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-24",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "wrap 0 1",
                                        "patching_rect": [ 33.0, 437.0, 55.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-23",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "!- 1",
                                        "patching_rect": [ 33.0, 408.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-22",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "> 0",
                                        "patching_rect": [ 136.0, 456.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-20",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "delta",
                                        "patching_rect": [ 136.0, 425.0, 35.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-21",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "phasor",
                                        "patching_rect": [ 299.0, 382.0, 45.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-19",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "latch",
                                        "patching_rect": [ 299.0, 115.0, 34.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-18",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 3 freq @default 65",
                                        "patching_rect": [ 299.0, 15.0, 120.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-17",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "clip 0 1",
                                        "patching_rect": [ 33.0, 378.0, 47.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-4",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 2 decay @default 8000",
                                        "patching_rect": [ 129.5, 15.0, 145.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-2",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "out 1",
                                        "patching_rect": [ 33.0, 670.0, 35.0, 22.0 ],
                                        "numoutlets": 0,
                                        "id": "obj-6",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "wrap",
                                        "patching_rect": [ 33.0, 305.0, 40.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-36",
                                        "numinlets": 3
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "mstosamps",
                                        "patching_rect": [ 129.5, 192.0, 70.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-12",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "/",
                                        "patching_rect": [ 33.0, 344.0, 29.5, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-11",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "history",
                                        "patching_rect": [ 50.0, 184.0, 44.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-10",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "history",
                                        "patching_rect": [ 122.0, 315.0, 44.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-9",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "< 0",
                                        "patching_rect": [ 122.0, 282.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-8",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "delta",
                                        "patching_rect": [ 122.0, 251.0, 35.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-7",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "accum",
                                        "patching_rect": [ 33.0, 266.0, 44.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-5",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 1",
                                        "patching_rect": [ 31.0, 15.0, 28.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-1",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "> 0",
                                        "patching_rect": [ 33.0, 220.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-3",
                                        "numinlets": 1
                                    }
                                }
                            ],
                            "lines": [
                                {
                                    "patchline": {
                                        "source": [ "obj-32", 0 ],
                                        "destination": [ "obj-19", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-31", 0 ],
                                        "destination": [ "obj-32", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-14", 0 ],
                                        "destination": [ "obj-31", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-30", 0 ],
                                        "destination": [ "obj-31", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-16", 0 ],
                                        "destination": [ "obj-29", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-29", 0 ],
                                        "destination": [ "obj-30", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-28", 0 ],
                                        "destination": [ "obj-29", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-19", 0 ],
                                        "destination": [ "obj-15", 0 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-15", 0 ],
                                        "destination": [ "obj-16", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-25", 0 ],
                                        "destination": [ "obj-27", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-27", 0 ],
                                        "destination": [ "obj-6", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-23", 0 ],
                                        "destination": [ "obj-26", 0 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-24", 0 ],
                                        "destination": [ "obj-25", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-19", 0 ],
                                        "destination": [ "obj-24", 0 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-20", 0 ],
                                        "destination": [ "obj-18", 1 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-20", 0 ],
                                        "destination": [ "obj-19", 1 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-21", 0 ],
                                        "destination": [ "obj-20", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-23", 0 ],
                                        "destination": [ "obj-21", 0 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-22", 0 ],
                                        "destination": [ "obj-23", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-4", 0 ],
                                        "destination": [ "obj-22", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-18", 0 ],
                                        "destination": [ "obj-19", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-17", 0 ],
                                        "destination": [ "obj-18", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-11", 0 ],
                                        "destination": [ "obj-4", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-12", 0 ],
                                        "destination": [ "obj-36", 2 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-12", 0 ],
                                        "destination": [ "obj-11", 1 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-9", 0 ],
                                        "destination": [ "obj-5", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-8", 0 ],
                                        "destination": [ "obj-9", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-7", 0 ],
                                        "destination": [ "obj-8", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-5", 0 ],
                                        "destination": [ "obj-36", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-36", 0 ],
                                        "destination": [ "obj-7", 0 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-36", 0 ],
                                        "destination": [ "obj-11", 0 ],
                                        "order": 2
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-36", 0 ],
                                        "destination": [ "obj-10", 0 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-3", 0 ],
                                        "destination": [ "obj-5", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-10", 0 ],
                                        "destination": [ "obj-3", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-26", 0 ],
                                        "destination": [ "obj-27", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-1", 0 ],
                                        "destination": [ "obj-13", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-13", 0 ],
                                        "destination": [ "obj-3", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-2", 0 ],
                                        "destination": [ "obj-12", 0 ]
                                    }
                                }
                            ]
                        }
                    },
                    "id": "obj-15",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 207.53137636184692, 967.3639962673187, 207.33333333333337, 22.0 ],
                    "text": "mc.gen~ @chans 4",
                    "wrapper_uniquekey": "u926010491"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 137.65690085291862, 1064.8535339534283, 173.0, 22.0 ],
                    "text": "mc.*~ @values 1 0.5 0.33 0.25"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 207.49998021125793, 822.4999215602875, 87.0, 22.0 ],
                    "text": "loadmess 500."
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 477.4999544620514, 609.9999418258667, 77.0, 22.0 ],
                    "text": "loadmess 36"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 322.4999692440033, 792.4999244213104, 73.0, 22.0 ],
                    "text": "loadmess 1."
                }
            },
            {
                "box": {
                    "id": "obj-84",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 1159.8326114416122, 1224.6861665546894, 66.0, 22.0 ],
                    "text": "mc.*~ 0.85"
                }
            },
            {
                "box": {
                    "id": "obj-69",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 137.65690085291862, 1224.6861665546894, 60.0, 22.0 ],
                    "text": "mc.*~ 0.5"
                }
            },
            {
                "box": {
                    "id": "obj-68",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 817.5732044577599, 1224.6861665546894, 60.0, 22.0 ],
                    "text": "mc.*~ 0.9"
                }
            },
            {
                "box": {
                    "format": 5,
                    "id": "obj-50",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 477.4999544620514, 634.9999394416809, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-51",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 369.9999647140503, 822.4999215602875, 32.0, 22.0 ],
                    "text": "mtof"
                }
            },
            {
                "box": {
                    "id": "obj-46",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 477.40584763884544, 1224.6861665546894, 66.0, 22.0 ],
                    "text": "mc.*~ 0.95"
                }
            },
            {
                "box": {
                    "calccount": 8,
                    "id": "obj-8",
                    "maxclass": "scope~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 477.40584763884544, 1271.9665002822876, 204.0, 159.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-7",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 322.4999692440033, 822.4999215602875, 41.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 274.89539167284966, 884.518809735775, 114.0, 22.0 ],
                    "text": "pak harmonic 1. 65."
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-61",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 207.53137636184692, 884.518809735775, 65.5, 22.0 ]
                }
            },
            {
                "box": {
                    "columns": 16,
                    "id": "obj-59",
                    "maxclass": "gridmeter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 137.49998688697815, 792.4999244213104, 74.0, 16.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-30",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 174.99998331069946, 712.499932050705, 52.0, 22.0 ],
                    "text": "mc.>~ 0"
                }
            },
            {
                "box": {
                    "id": "obj-29",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 174.99998331069946, 737.4999296665192, 92.0, 22.0 ],
                    "text": "mc.mixdown~ 1"
                }
            },
            {
                "box": {
                    "data": {
                        "patcher": {
                            "fileversion": 1,
                            "appversion": {
                                "major": 9,
                                "minor": 1,
                                "revision": 2,
                                "architecture": "x64",
                                "modernui": 1
                            },
                            "classnamespace": "dsp.gen",
                            "rect": [ 59.0, 107.0, 600.0, 450.0 ],
                            "boxes": [
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "*",
                                        "patching_rect": [ 50.0, 283.5, 29.5, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-6",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "<= 1",
                                        "patching_rect": [ 305.0, 153.0, 33.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-5",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 1",
                                        "patching_rect": [ 50.0, 14.0, 28.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-1",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 2",
                                        "patching_rect": [ 305.0, 14.0, 28.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-2",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "> 0",
                                        "patching_rect": [ 50.0, 153.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-3",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "out 1",
                                        "patching_rect": [ 50.0, 414.0, 35.0, 22.0 ],
                                        "numoutlets": 0,
                                        "id": "obj-4",
                                        "numinlets": 1
                                    }
                                }
                            ],
                            "lines": [
                                {
                                    "patchline": {
                                        "source": [ "obj-1", 0 ],
                                        "destination": [ "obj-3", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-2", 0 ],
                                        "destination": [ "obj-5", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-6", 0 ],
                                        "destination": [ "obj-4", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-3", 0 ],
                                        "destination": [ "obj-6", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-5", 0 ],
                                        "destination": [ "obj-6", 1 ]
                                    }
                                }
                            ]
                        }
                    },
                    "id": "obj-28",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 137.49998688697815, 767.4999268054962, 55.0, 22.0 ],
                    "text": "mc.gen~",
                    "wrapper_uniquekey": "u891009176"
                }
            },
            {
                "box": {
                    "data": {
                        "patcher": {
                            "fileversion": 1,
                            "appversion": {
                                "major": 9,
                                "minor": 1,
                                "revision": 2,
                                "architecture": "x64",
                                "modernui": 1
                            },
                            "classnamespace": "dsp.gen",
                            "rect": [ 522.0, 161.0, 1172.0, 709.0 ],
                            "boxes": [
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "* 0.5",
                                        "patching_rect": [ 499.0, 141.0, 33.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-43",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "clip",
                                        "patching_rect": [ 478.0, 169.0, 40.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-41",
                                        "numinlets": 3
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "history",
                                        "patching_rect": [ 324.0, 352.0, 44.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-32",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "*",
                                        "patching_rect": [ 324.0, 320.0, 29.5, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-31",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "* 0.5",
                                        "patching_rect": [ 324.0, 281.0, 33.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-30",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "latch",
                                        "patching_rect": [ 324.0, 251.0, 34.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-29",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "noise",
                                        "patching_rect": [ 324.0, 146.0, 37.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-28",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "< 0",
                                        "patching_rect": [ 339.0, 214.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-16",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "delta",
                                        "patching_rect": [ 339.0, 177.0, 35.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-15",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 4 detune @default 1",
                                        "patching_rect": [ 478.0, 15.0, 129.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-14",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "delta",
                                        "patching_rect": [ 33.0, 104.0, 35.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-13",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "*",
                                        "patching_rect": [ 33.0, 626.0, 29.5, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-27",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "pow 2",
                                        "patching_rect": [ 13.0, 520.0, 41.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-26",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "sin",
                                        "patching_rect": [ 299.0, 469.0, 24.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-25",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "* twopi",
                                        "patching_rect": [ 299.0, 433.0, 45.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-24",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "wrap 0 1",
                                        "patching_rect": [ 33.0, 437.0, 55.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-23",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "!- 1",
                                        "patching_rect": [ 33.0, 408.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-22",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "> 0",
                                        "patching_rect": [ 136.0, 456.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-20",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "delta",
                                        "patching_rect": [ 136.0, 425.0, 35.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-21",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "phasor",
                                        "patching_rect": [ 299.0, 382.0, 45.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-19",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "latch",
                                        "patching_rect": [ 299.0, 115.0, 34.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-18",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 3 freq @default 65",
                                        "patching_rect": [ 299.0, 15.0, 120.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-17",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "clip 0 1",
                                        "patching_rect": [ 33.0, 378.0, 47.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-4",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 2 decay @default 8000",
                                        "patching_rect": [ 129.5, 15.0, 145.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-2",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "out 1",
                                        "patching_rect": [ 33.0, 670.0, 35.0, 22.0 ],
                                        "numoutlets": 0,
                                        "id": "obj-6",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "wrap",
                                        "patching_rect": [ 33.0, 305.0, 40.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-36",
                                        "numinlets": 3
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "mstosamps",
                                        "patching_rect": [ 129.5, 192.0, 70.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-12",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "/",
                                        "patching_rect": [ 33.0, 344.0, 29.5, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-11",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "history",
                                        "patching_rect": [ 50.0, 184.0, 44.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-10",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "history",
                                        "patching_rect": [ 122.0, 315.0, 44.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-9",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "< 0",
                                        "patching_rect": [ 122.0, 282.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-8",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "delta",
                                        "patching_rect": [ 122.0, 251.0, 35.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-7",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "accum",
                                        "patching_rect": [ 33.0, 266.0, 44.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-5",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 1",
                                        "patching_rect": [ 31.0, 15.0, 28.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-1",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "> 0",
                                        "patching_rect": [ 33.0, 220.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-3",
                                        "numinlets": 1
                                    }
                                }
                            ],
                            "lines": [
                                {
                                    "patchline": {
                                        "source": [ "obj-13", 0 ],
                                        "destination": [ "obj-3", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-1", 0 ],
                                        "destination": [ "obj-13", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-26", 0 ],
                                        "destination": [ "obj-27", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-10", 0 ],
                                        "destination": [ "obj-3", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-3", 0 ],
                                        "destination": [ "obj-5", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-36", 0 ],
                                        "destination": [ "obj-10", 0 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-36", 0 ],
                                        "destination": [ "obj-11", 0 ],
                                        "order": 2
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-36", 0 ],
                                        "destination": [ "obj-7", 0 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-5", 0 ],
                                        "destination": [ "obj-36", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-7", 0 ],
                                        "destination": [ "obj-8", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-8", 0 ],
                                        "destination": [ "obj-9", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-9", 0 ],
                                        "destination": [ "obj-5", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-12", 0 ],
                                        "destination": [ "obj-11", 1 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-12", 0 ],
                                        "destination": [ "obj-36", 2 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-11", 0 ],
                                        "destination": [ "obj-4", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-17", 0 ],
                                        "destination": [ "obj-18", 0 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-18", 0 ],
                                        "destination": [ "obj-19", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-4", 0 ],
                                        "destination": [ "obj-22", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-22", 0 ],
                                        "destination": [ "obj-23", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-23", 0 ],
                                        "destination": [ "obj-21", 0 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-21", 0 ],
                                        "destination": [ "obj-20", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-20", 0 ],
                                        "destination": [ "obj-19", 1 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-20", 0 ],
                                        "destination": [ "obj-18", 1 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-19", 0 ],
                                        "destination": [ "obj-24", 0 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-24", 0 ],
                                        "destination": [ "obj-25", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-23", 0 ],
                                        "destination": [ "obj-26", 0 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-27", 0 ],
                                        "destination": [ "obj-6", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-25", 0 ],
                                        "destination": [ "obj-27", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-15", 0 ],
                                        "destination": [ "obj-16", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-19", 0 ],
                                        "destination": [ "obj-15", 0 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-28", 0 ],
                                        "destination": [ "obj-29", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-29", 0 ],
                                        "destination": [ "obj-30", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-16", 0 ],
                                        "destination": [ "obj-29", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-30", 0 ],
                                        "destination": [ "obj-31", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-31", 0 ],
                                        "destination": [ "obj-32", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-32", 0 ],
                                        "destination": [ "obj-19", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-41", 0 ],
                                        "destination": [ "obj-31", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-14", 0 ],
                                        "destination": [ "obj-41", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-17", 0 ],
                                        "destination": [ "obj-43", 0 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-43", 0 ],
                                        "destination": [ "obj-41", 2 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-2", 0 ],
                                        "destination": [ "obj-12", 0 ]
                                    }
                                }
                            ]
                        }
                    },
                    "id": "obj-10",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 137.65690085291862, 912.1338719129562, 225.0, 22.0 ],
                    "text": "mc.gen~ @chans 4",
                    "wrapper_uniquekey": "u181010506"
                }
            },
            {
                "box": {
                    "id": "obj-27",
                    "maxclass": "mc.ezdac~",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 137.65690085291862, 1387.4476693868637, 45.0, 45.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-26",
                    "lastchannelcount": 2,
                    "maxclass": "mc.live.gain~",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "multichannelsignal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 137.65690085291862, 1271.9665002822876, 45.0, 112.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "mc.live.gain~",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "mc.live.gain~",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "mc.live.gain~"
                }
            },
            {
                "box": {
                    "id": "obj-24",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 137.65690085291862, 1249.3723585009575, 58.0, 22.0 ],
                    "text": "mc.tanh~"
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 137.65690085291862, 1087.4476757347584, 173.0, 22.0 ],
                    "text": "mc.mixdown~ 1 @autogain 0"
                }
            },
            {
                "box": {
                    "contdata": 1,
                    "id": "obj-21",
                    "maxclass": "multislider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 269.99997425079346, 524.9999499320984, 201.0, 233.0 ],
                    "setminmax": [ 2.0, 32.0 ],
                    "settype": 0,
                    "size": 2
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 2,
                    "outlettype": [ "setvalue", "int" ],
                    "patching_rect": [ 269.99997425079346, 767.4999268054962, 201.0, 22.0 ],
                    "text": "mc.targetlist @chans 4 @listmode 1"
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 207.49998021125793, 482.49995398521423, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 567.4999458789825, 524.9999499320984, 39.0, 22.0 ],
                    "text": "click~"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 137.49998688697815, 524.9999499320984, 66.0, 22.0 ],
                    "text": "phasor~ 6."
                }
            },
            {
                "box": {
                    "data": {
                        "patcher": {
                            "fileversion": 1,
                            "appversion": {
                                "major": 9,
                                "minor": 1,
                                "revision": 2,
                                "architecture": "x64",
                                "modernui": 1
                            },
                            "classnamespace": "dsp.gen",
                            "rect": [ 59.0, 107.0, 1080.0, 845.0 ],
                            "boxes": [
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 3 reset",
                                        "patching_rect": [ 738.0, 18.0, 58.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-28",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "max 2",
                                        "patching_rect": [ 134.0, 123.0, 41.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-17",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "*",
                                        "patching_rect": [ 54.0, 299.0, 29.5, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-15",
                                        "numinlets": 2
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "history",
                                        "patching_rect": [ 134.0, 94.0, 44.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-14",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "== 0",
                                        "patching_rect": [ 104.0, 225.0, 33.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-7",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "counter",
                                        "patching_rect": [ 104.0, 153.0, 49.0, 22.0 ],
                                        "numoutlets": 3,
                                        "outlettype": [ "", "", "" ],
                                        "id": "obj-6",
                                        "numinlets": 3
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "< 0",
                                        "patching_rect": [ 104.0, 82.0, 26.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-5",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 1",
                                        "patching_rect": [ 50.0, 14.0, 28.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-1",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 2 @default 2",
                                        "patching_rect": [ 305.0, 14.0, 89.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-2",
                                        "numinlets": 0
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "delta",
                                        "patching_rect": [ 104.0, 55.0, 35.0, 22.0 ],
                                        "numoutlets": 1,
                                        "outlettype": [ "" ],
                                        "id": "obj-3",
                                        "numinlets": 1
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "out 1",
                                        "patching_rect": [ 54.0, 748.0, 35.0, 22.0 ],
                                        "numoutlets": 0,
                                        "id": "obj-4",
                                        "numinlets": 1
                                    }
                                }
                            ],
                            "lines": [
                                {
                                    "patchline": {
                                        "source": [ "obj-17", 0 ],
                                        "destination": [ "obj-6", 2 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-14", 0 ],
                                        "destination": [ "obj-17", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-7", 0 ],
                                        "destination": [ "obj-15", 1 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-1", 0 ],
                                        "destination": [ "obj-15", 0 ],
                                        "order": 1
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-6", 0 ],
                                        "destination": [ "obj-7", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-5", 0 ],
                                        "destination": [ "obj-6", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-3", 0 ],
                                        "destination": [ "obj-5", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-1", 0 ],
                                        "destination": [ "obj-3", 0 ],
                                        "order": 0
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-15", 0 ],
                                        "destination": [ "obj-4", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-2", 0 ],
                                        "destination": [ "obj-14", 0 ]
                                    }
                                },
                                {
                                    "patchline": {
                                        "source": [ "obj-28", 0 ],
                                        "destination": [ "obj-6", 1 ]
                                    }
                                }
                            ]
                        }
                    },
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 137.49998688697815, 684.9999346733093, 112.0, 22.0 ],
                    "text": "mc.gen~ @chans 4",
                    "wrapper_uniquekey": "u250010462"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-28", 0 ],
                    "midpoints": [ 146.99998688697815, 736.9998710155487, 146.99998688697815, 736.9998710155487 ],
                    "order": 1,
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-30", 0 ],
                    "midpoints": [ 146.99998688697815, 709.9998710155487, 184.49998331069946, 709.9998710155487 ],
                    "order": 0,
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "midpoints": [ 147.15690085291862, 937.6338266134262, 147.15690085291862, 937.6338266134262 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-101", 1 ],
                    "midpoints": [ 1356.9998714923859, 846.9998710155487, 1354.4895122945309, 846.9998710155487 ],
                    "source": [ "obj-100", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-107", 2 ],
                    "midpoints": [ 1306.9895122945309, 909.1338266134262, 1306.6659447749455, 909.1338266134262 ],
                    "order": 1,
                    "source": [ "obj-101", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-93", 2 ],
                    "midpoints": [ 1306.9895122945309, 937.1338266134262, 1367.6915127370094, 937.1338266134262 ],
                    "order": 0,
                    "source": [ "obj-101", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-107", 1 ],
                    "midpoints": [ 1239.2070869505405, 909.1338266134262, 1237.999278108279, 909.1338266134262 ],
                    "order": 1,
                    "source": [ "obj-102", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-93", 1 ],
                    "midpoints": [ 1239.2070869505405, 937.1338266134262, 1304.9137349592315, 937.1338266134262 ],
                    "order": 0,
                    "source": [ "obj-102", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-105", 0 ],
                    "midpoints": [ 1206.9998857975006, 735.9998710155487, 1206.9998857975006, 735.9998710155487 ],
                    "source": [ "obj-104", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-106", 1 ],
                    "midpoints": [ 1206.9998857975006, 762.9998710155487, 1205.4998893737793, 762.9998710155487 ],
                    "order": 1,
                    "source": [ "obj-105", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-166", 1 ],
                    "midpoints": [ 1206.9998857975006, 936.9998710155487, 1535.677095125119, 936.9998710155487 ],
                    "order": 0,
                    "source": [ "obj-105", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-103", 0 ],
                    "midpoints": [ 1169.4998893737793, 791.4998710155487, 1169.4998893737793, 791.4998710155487 ],
                    "order": 2,
                    "source": [ "obj-106", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-107", 0 ],
                    "midpoints": [ 1169.4998893737793, 833.4998710155487, 1169.3326114416122, 833.4998710155487 ],
                    "order": 1,
                    "source": [ "obj-106", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-93", 0 ],
                    "midpoints": [ 1169.4998893737793, 861.4998710155487, 1242.1359571814537, 861.4998710155487 ],
                    "order": 0,
                    "source": [ "obj-106", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-137", 0 ],
                    "midpoints": [ 1169.3326114416122, 937.6338266134262, 1169.3326114416122, 937.6338266134262 ],
                    "source": [ "obj-107", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-89", 0 ],
                    "midpoints": [ 1169.3326114416122, 1111.6338266134262, 1169.3326114416122, 1111.6338266134262 ],
                    "source": [ "obj-108", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-110", 0 ],
                    "midpoints": [ 1304.499876499176, 762.9998710155487, 1304.499876499176, 762.9998710155487 ],
                    "source": [ "obj-109", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 0 ],
                    "midpoints": [ 147.15690085291862, 1013.6338266134262, 147.15690085291862, 1013.6338266134262 ],
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-111", 1 ],
                    "midpoints": [ 1304.499876499176, 799.4998710155487, 1258.7499868869781, 799.4998710155487, 1258.7499868869781, 674.4998710155487, 1215.9998893737793, 674.4998710155487 ],
                    "source": [ "obj-110", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-104", 0 ],
                    "midpoints": [ 1169.4998893737793, 709.9998710155487, 1206.9998857975006, 709.9998710155487 ],
                    "order": 0,
                    "source": [ "obj-111", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-106", 0 ],
                    "midpoints": [ 1169.4998893737793, 736.9998710155487, 1169.4998893737793, 736.9998710155487 ],
                    "order": 1,
                    "source": [ "obj-111", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-166", 0 ],
                    "midpoints": [ 1512.0104284584522, 1142.1338266134262, 1512.0104284584522, 1142.1338266134262 ],
                    "source": [ "obj-113", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-115", 0 ],
                    "midpoints": [ 1581.8849039673805, 1039.6338266134262, 1581.8849039673805, 1039.6338266134262 ],
                    "source": [ "obj-114", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-113", 1 ],
                    "midpoints": [ 1581.8849039673805, 1087.6338266134262, 1583.0104284584522, 1087.6338266134262 ],
                    "source": [ "obj-115", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-117", 3 ],
                    "midpoints": [ 1769.332598745823, 937.1338266134262, 1770.218237300714, 937.1338266134262 ],
                    "order": 0,
                    "source": [ "obj-116", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-131", 3 ],
                    "midpoints": [ 1769.332598745823, 909.1338266134262, 1718.0104284584522, 909.1338266134262 ],
                    "order": 1,
                    "source": [ "obj-116", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-142", 0 ],
                    "midpoints": [ 1581.8849039673805, 991.6338266134262, 1581.8849039673805, 991.6338266134262 ],
                    "source": [ "obj-117", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-132", 0 ],
                    "midpoints": [ 1512.0104284584522, 1087.6338266134262, 1512.0104284584522, 1087.6338266134262 ],
                    "source": [ "obj-118", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-126", 0 ],
                    "midpoints": [ 1579.4998502731323, 846.9998710155487, 1579.374443769455, 846.9998710155487 ],
                    "source": [ "obj-119", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 2 ],
                    "midpoints": [ 576.9999458789825, 616.4998710155487, 239.99998688697815, 616.4998710155487 ],
                    "order": 4,
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-111", 2 ],
                    "midpoints": [ 576.9999458789825, 616.4998710155487, 1262.4998893737793, 616.4998710155487 ],
                    "order": 1,
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-135", 2 ],
                    "midpoints": [ 576.9999458789825, 616.4998710155487, 1604.999856710434, 616.4998710155487 ],
                    "order": 0,
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 1 ],
                    "midpoints": [ 576.9999458789825, 558.4998710155487, 384.49998688697815, 558.4998710155487, 384.49998688697815, 515.4998710155487, 193.99998688697815, 515.4998710155487 ],
                    "order": 5,
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-58", 2 ],
                    "midpoints": [ 576.9999458789825, 616.4998710155487, 579.9999544620514, 616.4998710155487 ],
                    "order": 3,
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-87", 2 ],
                    "midpoints": [ 576.9999458789825, 616.4998710155487, 922.499921798706, 616.4998710155487 ],
                    "order": 2,
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-122", 0 ],
                    "midpoints": [ 1884.4998211860657, 606.9886677265167, 1884.4998211860657, 606.9886677265167 ],
                    "source": [ "obj-120", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-124", 0 ],
                    "midpoints": [ 1696.999839067459, 819.4998710155487, 1696.999839067459, 819.4998710155487 ],
                    "source": [ "obj-121", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-123", 0 ],
                    "midpoints": [ 1884.4998211860657, 726.4998710155487, 1744.499834537506, 726.4998710155487 ],
                    "source": [ "obj-122", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-125", 2 ],
                    "midpoints": [ 1744.499834537506, 846.9998710155487, 1742.1568691134453, 846.9998710155487 ],
                    "order": 0,
                    "source": [ "obj-123", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-166", 3 ],
                    "midpoints": [ 1744.499834537506, 979.9998710155487, 1583.0104284584522, 979.9998710155487 ],
                    "order": 1,
                    "source": [ "obj-123", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-177", 0 ],
                    "midpoints": [ 1744.499834537506, 991.9998710155487, 1557.1987120211124, 991.9998710155487 ],
                    "order": 2,
                    "source": [ "obj-123", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-125", 1 ],
                    "midpoints": [ 1696.999839067459, 846.9998710155487, 1694.6568691134453, 846.9998710155487 ],
                    "source": [ "obj-124", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-117", 2 ],
                    "midpoints": [ 1647.1568691134453, 937.1338266134262, 1707.4404595229362, 937.1338266134262 ],
                    "order": 0,
                    "source": [ "obj-125", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-131", 2 ],
                    "midpoints": [ 1647.1568691134453, 909.1338266134262, 1649.3437617917855, 909.1338266134262 ],
                    "order": 1,
                    "source": [ "obj-125", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-117", 1 ],
                    "midpoints": [ 1579.374443769455, 937.1338266134262, 1644.6626817451584, 937.1338266134262 ],
                    "order": 0,
                    "source": [ "obj-126", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-131", 1 ],
                    "midpoints": [ 1579.374443769455, 909.1338266134262, 1580.677095125119, 909.1338266134262 ],
                    "order": 1,
                    "source": [ "obj-126", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-129", 0 ],
                    "midpoints": [ 1546.9998533725739, 735.9998710155487, 1546.9998533725739, 735.9998710155487 ],
                    "source": [ "obj-128", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-130", 1 ],
                    "midpoints": [ 1546.9998533725739, 762.9998710155487, 1547.999856710434, 762.9998710155487 ],
                    "order": 0,
                    "source": [ "obj-129", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-147", 1 ],
                    "midpoints": [ 1546.9998533725739, 936.9998710155487, 170.8235675195853, 936.9998710155487 ],
                    "order": 1,
                    "source": [ "obj-129", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "midpoints": [ 486.90584763884544, 1013.6338266134262, 486.90584763884544, 1013.6338266134262 ],
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-117", 0 ],
                    "midpoints": [ 1511.999856710434, 861.4998710155487, 1581.8849039673805, 861.4998710155487 ],
                    "order": 0,
                    "source": [ "obj-130", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-127", 0 ],
                    "midpoints": [ 1511.999856710434, 791.4998710155487, 1511.999856710434, 791.4998710155487 ],
                    "order": 2,
                    "source": [ "obj-130", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-131", 0 ],
                    "midpoints": [ 1511.999856710434, 833.4998710155487, 1512.0104284584522, 833.4998710155487 ],
                    "order": 1,
                    "source": [ "obj-130", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-138", 0 ],
                    "midpoints": [ 1512.0104284584522, 937.6338266134262, 1512.0104284584522, 937.6338266134262 ],
                    "source": [ "obj-131", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-113", 0 ],
                    "midpoints": [ 1512.0104284584522, 1111.6338266134262, 1512.0104284584522, 1111.6338266134262 ],
                    "source": [ "obj-132", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-134", 0 ],
                    "midpoints": [ 1644.4998440742493, 762.9998710155487, 1644.4998440742493, 762.9998710155487 ],
                    "source": [ "obj-133", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-135", 1 ],
                    "midpoints": [ 1644.4998440742493, 799.4998710155487, 1599.7499868869781, 799.4998710155487, 1599.7499868869781, 674.4998710155487, 1558.499856710434, 674.4998710155487 ],
                    "source": [ "obj-134", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-128", 0 ],
                    "midpoints": [ 1511.999856710434, 709.9998710155487, 1546.9998533725739, 709.9998710155487 ],
                    "order": 0,
                    "source": [ "obj-135", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-130", 0 ],
                    "midpoints": [ 1511.999856710434, 736.9998710155487, 1511.999856710434, 736.9998710155487 ],
                    "order": 1,
                    "source": [ "obj-135", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-112", 0 ],
                    "midpoints": [ 1512.0104284584522, 1257.1338266134262, 1556.6569008529186, 1257.1338266134262, 1556.6569008529186, 1160.1338266134262, 1604.4790457487106, 1160.1338266134262 ],
                    "order": 0,
                    "source": [ "obj-136", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-69", 0 ],
                    "midpoints": [ 1512.0104284584522, 1257.1338266134262, 828.1569008529186, 1257.1338266134262, 828.1569008529186, 1213.1338266134262, 147.15690085291862, 1213.1338266134262 ],
                    "order": 1,
                    "source": [ "obj-136", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-94", 0 ],
                    "midpoints": [ 1169.3326114416122, 1013.6338266134262, 1169.3326114416122, 1013.6338266134262 ],
                    "source": [ "obj-137", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-118", 0 ],
                    "midpoints": [ 1512.0104284584522, 1013.6338266134262, 1512.0104284584522, 1013.6338266134262 ],
                    "source": [ "obj-138", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-109", 0 ],
                    "midpoints": [ 216.99998021125793, 516.9998710155487, 1304.499876499176, 516.9998710155487 ],
                    "order": 8,
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-119", 0 ],
                    "midpoints": [ 216.99998021125793, 665.4998710155487, 1579.4998502731323, 665.4998710155487 ],
                    "order": 5,
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "midpoints": [ 216.99998021125793, 516.9998710155487, 576.9999458789825, 516.9998710155487 ],
                    "order": 17,
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-120", 0 ],
                    "midpoints": [ 216.99998021125793, 544.9998710155487, 1884.4998211860657, 544.9998710155487 ],
                    "order": 0,
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-121", 0 ],
                    "midpoints": [ 216.99998021125793, 650.9998710155487, 1696.999839067459, 650.9998710155487 ],
                    "order": 3,
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-133", 0 ],
                    "midpoints": [ 216.99998021125793, 516.9998710155487, 1644.4998440742493, 516.9998710155487 ],
                    "order": 4,
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-148", 0 ],
                    "midpoints": [ 216.99998021125793, 780.9998710155487, 1749.2489171624184, 780.9998710155487 ],
                    "order": 2,
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-154", 0 ],
                    "midpoints": [ 216.99998021125793, 518.4998710155487, 1015.7499868869781, 518.4998710155487, 1015.7499868869781, 498.4998710155487, 1851.9998242855072, 498.4998710155487 ],
                    "order": 1,
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 0 ],
                    "midpoints": [ 216.99998021125793, 516.9998710155487, 279.49997425079346, 516.9998710155487 ],
                    "order": 21,
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-39", 0 ],
                    "midpoints": [ 216.99998021125793, 665.4998710155487, 556.9999477863312, 665.4998710155487 ],
                    "order": 18,
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "midpoints": [ 216.99998021125793, 650.9998710155487, 331.9999692440033, 650.9998710155487 ],
                    "order": 20,
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "midpoints": [ 216.99998021125793, 544.9998710155487, 829.499921798706, 544.9998710155487 ],
                    "order": 14,
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-41", 0 ],
                    "midpoints": [ 216.99998021125793, 650.9998710155487, 674.499936580658, 650.9998710155487 ],
                    "order": 15,
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "midpoints": [ 216.99998021125793, 558.4998710155487, 486.9999544620514, 558.4998710155487 ],
                    "order": 19,
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-56", 0 ],
                    "midpoints": [ 216.99998021125793, 516.9998710155487, 621.9999415874481, 516.9998710155487 ],
                    "order": 16,
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "midpoints": [ 216.99998021125793, 665.4998710155487, 216.99998021125793, 665.4998710155487 ],
                    "order": 22,
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-70", 0 ],
                    "midpoints": [ 216.99998021125793, 665.4998710155487, 896.9999153614044, 665.4998710155487 ],
                    "order": 13,
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-71", 0 ],
                    "midpoints": [ 216.99998021125793, 544.9998710155487, 1169.4998893737793, 544.9998710155487 ],
                    "order": 10,
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-72", 0 ],
                    "midpoints": [ 216.99998021125793, 650.9998710155487, 1014.4999041557312, 650.9998710155487 ],
                    "order": 11,
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-85", 0 ],
                    "midpoints": [ 216.99998021125793, 516.9998710155487, 961.9999091625214, 516.9998710155487 ],
                    "order": 12,
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-95", 0 ],
                    "midpoints": [ 216.99998021125793, 665.4998710155487, 1239.499882698059, 665.4998710155487 ],
                    "order": 9,
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-96", 0 ],
                    "midpoints": [ 216.99998021125793, 544.9998710155487, 1511.999856710434, 544.9998710155487 ],
                    "order": 6,
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-97", 0 ],
                    "midpoints": [ 216.99998021125793, 650.9998710155487, 1356.9998714923859, 650.9998710155487 ],
                    "order": 7,
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-122", 0 ],
                    "midpoints": [ 486.9999544620514, 600.9998710155487, 1884.4998211860657, 600.9998710155487 ],
                    "order": 0,
                    "source": [ "obj-141", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-42", 0 ],
                    "midpoints": [ 486.9999544620514, 600.9998710155487, 829.499921798706, 600.9998710155487 ],
                    "order": 3,
                    "source": [ "obj-141", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-50", 0 ],
                    "midpoints": [ 486.9999544620514, 614.4998710155487, 486.9999544620514, 614.4998710155487 ],
                    "order": 4,
                    "source": [ "obj-141", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-73", 0 ],
                    "midpoints": [ 486.9999544620514, 600.9998710155487, 1169.4998893737793, 600.9998710155487 ],
                    "order": 2,
                    "source": [ "obj-141", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-98", 0 ],
                    "midpoints": [ 486.9999544620514, 600.9998710155487, 1511.999856710434, 600.9998710155487 ],
                    "order": 1,
                    "source": [ "obj-141", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-114", 0 ],
                    "midpoints": [ 1581.8849039673805, 1015.6338266134262, 1581.8849039673805, 1015.6338266134262 ],
                    "source": [ "obj-142", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-90", 0 ],
                    "midpoints": [ 1242.1359571814537, 1015.6338266134262, 1242.1359571814537, 1015.6338266134262 ],
                    "source": [ "obj-143", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-63", 0 ],
                    "midpoints": [ 899.4581401646137, 1015.6338266134262, 899.4581401646137, 1015.6338266134262 ],
                    "source": [ "obj-144", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-33", 0 ],
                    "midpoints": [ 559.2907833456993, 1015.6338266134262, 559.2907833456993, 1015.6338266134262 ],
                    "source": [ "obj-145", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 0 ],
                    "midpoints": [ 217.03137636184692, 1015.6338266134262, 217.03137636184692, 1015.6338266134262 ],
                    "source": [ "obj-146", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-169", 0 ],
                    "midpoints": [ 147.15690085291862, 1184.6338266134262, 147.15690085291862, 1184.6338266134262 ],
                    "source": [ "obj-147", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-168", 0 ],
                    "midpoints": [ 1749.2489171624184, 1111.6338266134262, 1749.2489171624184, 1111.6338266134262 ],
                    "source": [ "obj-148", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-150", 0 ],
                    "midpoints": [ 161.99998545646667, 578.4998710155487, 161.99998545646667, 578.4998710155487 ],
                    "source": [ "obj-149", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-146", 0 ],
                    "midpoints": [ 217.03137636184692, 991.6338266134262, 217.03137636184692, 991.6338266134262 ],
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-151", 0 ],
                    "midpoints": [ 183.99998545646667, 605.4998710155487, 184.49998331069946, 605.4998710155487 ],
                    "source": [ "obj-150", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-152", 0 ],
                    "midpoints": [ 184.49998331069946, 632.4998710155487, 184.49998331069946, 632.4998710155487 ],
                    "source": [ "obj-151", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-153", 0 ],
                    "midpoints": [ 184.49998331069946, 657.9998710155487, 184.49998331069946, 657.9998710155487 ],
                    "source": [ "obj-152", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-141", 0 ],
                    "midpoints": [ 184.49998331069946, 691.4998710155487, 334.99998688697815, 691.4998710155487, 334.99998688697815, 543.4998710155487, 486.9999544620514, 543.4998710155487 ],
                    "source": [ "obj-153", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-159", 0 ],
                    "midpoints": [ 1851.9998242855072, 539.9886677265167, 1884.4998211860657, 539.9886677265167 ],
                    "source": [ "obj-154", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-24", 0 ],
                    "midpoints": [ 204.47907537221909, 1329.1338266134262, 175.15690085291862, 1329.1338266134262, 175.15690085291862, 1239.1338266134262, 147.15690085291862, 1239.1338266134262 ],
                    "source": [ "obj-156", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-156", 1 ],
                    "midpoints": [ 239.20710811018944, 1295.6338266134262, 240.47907537221909, 1295.6338266134262 ],
                    "source": [ "obj-157", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-275", 0 ],
                    "order": 4,
                    "source": [ "obj-158", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-276", 0 ],
                    "order": 3,
                    "source": [ "obj-158", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-277", 0 ],
                    "order": 2,
                    "source": [ "obj-158", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-278", 0 ],
                    "order": 1,
                    "source": [ "obj-158", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-279", 0 ],
                    "order": 0,
                    "source": [ "obj-158", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-116", 0 ],
                    "midpoints": [ 1946.4998211860657, 712.4998710155487, 1769.332598745823, 712.4998710155487 ],
                    "source": [ "obj-159", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "midpoints": [ 1884.4998211860657, 712.4998710155487, 406.9895313382149, 712.4998710155487 ],
                    "source": [ "obj-159", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-35", 0 ],
                    "midpoints": [ 1899.9998211860657, 712.4998710155487, 747.1568881571293, 712.4998710155487 ],
                    "source": [ "obj-159", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-65", 0 ],
                    "midpoints": [ 1915.4998211860657, 712.4998710155487, 1086.905834943056, 712.4998710155487 ],
                    "source": [ "obj-159", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-92", 0 ],
                    "midpoints": [ 1930.9998211860657, 712.4998710155487, 1429.583651959896, 712.4998710155487 ],
                    "source": [ "obj-159", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-67", 0 ],
                    "midpoints": [ 829.5836646556854, 1013.6338266134262, 829.5836646556854, 1013.6338266134262 ],
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-172", 0 ],
                    "midpoints": [ 486.90584763884544, 1184.6338266134262, 486.90584763884544, 1184.6338266134262 ],
                    "source": [ "obj-160", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-158", 0 ],
                    "source": [ "obj-161", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-174", 0 ],
                    "midpoints": [ 827.0732044577599, 1184.6338266134262, 827.0732044577599, 1184.6338266134262 ],
                    "source": [ "obj-162", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-176", 0 ],
                    "midpoints": [ 1169.3326114416122, 1184.6338266134262, 1169.3326114416122, 1184.6338266134262 ],
                    "source": [ "obj-164", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-178", 0 ],
                    "midpoints": [ 1512.0104284584522, 1184.6338266134262, 1512.0104284584522, 1184.6338266134262 ],
                    "source": [ "obj-166", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-147", 2 ],
                    "midpoints": [ 1749.2489171624184, 1142.1338266134262, 194.49023418625197, 1142.1338266134262 ],
                    "order": 4,
                    "source": [ "obj-168", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-160", 2 ],
                    "midpoints": [ 1749.2489171624184, 1142.1338266134262, 534.2391809721788, 1142.1338266134262 ],
                    "order": 3,
                    "source": [ "obj-168", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-162", 2 ],
                    "midpoints": [ 1749.2489171624184, 1142.1338266134262, 874.4065377910932, 1142.1338266134262 ],
                    "order": 2,
                    "source": [ "obj-168", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-164", 2 ],
                    "midpoints": [ 1749.2489171624184, 1142.1338266134262, 1216.6659447749455, 1142.1338266134262 ],
                    "order": 1,
                    "source": [ "obj-168", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-166", 2 ],
                    "midpoints": [ 1749.2489171624184, 1142.1338266134262, 1559.3437617917855, 1142.1338266134262 ],
                    "order": 0,
                    "source": [ "obj-168", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 0 ],
                    "midpoints": [ 147.15690085291862, 1230.1338266134262, 192.65690085291862, 1230.1338266134262, 192.65690085291862, 1160.1338266134262, 239.20710811018944, 1160.1338266134262 ],
                    "order": 0,
                    "source": [ "obj-169", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-69", 0 ],
                    "midpoints": [ 147.15690085291862, 1221.6338266134262, 147.15690085291862, 1221.6338266134262 ],
                    "order": 1,
                    "source": [ "obj-169", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 3 ],
                    "midpoints": [ 406.9895313382149, 909.1338266134262, 353.1569008529186, 909.1338266134262 ],
                    "order": 1,
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 3 ],
                    "midpoints": [ 406.9895313382149, 937.1338266134262, 405.3647096951803, 937.1338266134262 ],
                    "order": 0,
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-169", 1 ],
                    "midpoints": [ 191.92677438259125, 1196.6338266134262, 192.15690085291862, 1196.6338266134262 ],
                    "source": [ "obj-170", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-172", 1 ],
                    "midpoints": [ 534.6045913994312, 1196.6338266134262, 531.9058476388454, 1196.6338266134262 ],
                    "source": [ "obj-171", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-46", 0 ],
                    "midpoints": [ 486.90584763884544, 1222.1338266134262, 486.90584763884544, 1222.1338266134262 ],
                    "source": [ "obj-172", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-174", 1 ],
                    "midpoints": [ 871.8430779874325, 1196.6338266134262, 872.0732044577599, 1196.6338266134262 ],
                    "source": [ "obj-173", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-68", 0 ],
                    "midpoints": [ 827.0732044577599, 1222.1338266134262, 827.0732044577599, 1222.1338266134262 ],
                    "source": [ "obj-174", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-176", 1 ],
                    "midpoints": [ 1217.031355202198, 1196.6338266134262, 1214.3326114416122, 1196.6338266134262 ],
                    "source": [ "obj-175", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-84", 0 ],
                    "midpoints": [ 1169.3326114416122, 1222.1338266134262, 1169.3326114416122, 1222.1338266134262 ],
                    "source": [ "obj-176", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-178", 1 ],
                    "midpoints": [ 1557.1987120211124, 1196.6338266134262, 1557.0104284584522, 1196.6338266134262 ],
                    "source": [ "obj-177", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-136", 0 ],
                    "midpoints": [ 1512.0104284584522, 1222.1338266134262, 1512.0104284584522, 1222.1338266134262 ],
                    "source": [ "obj-178", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "midpoints": [ 217.03137636184692, 1039.6338266134262, 217.03137636184692, 1039.6338266134262 ],
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 1 ],
                    "midpoints": [ 217.03137636184692, 1087.6338266134262, 218.15690085291862, 1087.6338266134262 ],
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 146.99998688697815, 616.4998710155487, 146.99998688697815, 616.4998710155487 ],
                    "order": 6,
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-111", 0 ],
                    "midpoints": [ 146.99998688697815, 616.4998710155487, 1169.4998893737793, 616.4998710155487 ],
                    "order": 1,
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-135", 0 ],
                    "midpoints": [ 146.99998688697815, 616.4998710155487, 1511.999856710434, 616.4998710155487 ],
                    "order": 0,
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-149", 0 ],
                    "midpoints": [ 146.99998688697815, 550.9998710155487, 161.99998545646667, 550.9998710155487 ],
                    "order": 5,
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-157", 0 ],
                    "midpoints": [ 146.99998688697815, 892.9998710155487, 239.20710811018944, 892.9998710155487 ],
                    "order": 4,
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-58", 0 ],
                    "midpoints": [ 146.99998688697815, 616.4998710155487, 486.9999544620514, 616.4998710155487 ],
                    "order": 3,
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-87", 0 ],
                    "midpoints": [ 146.99998688697815, 616.4998710155487, 829.499921798706, 616.4998710155487 ],
                    "order": 2,
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-147", 0 ],
                    "midpoints": [ 147.15690085291862, 1142.1338266134262, 147.15690085291862, 1142.1338266134262 ],
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-22", 0 ],
                    "midpoints": [ 279.49997425079346, 762.9998710155487, 279.49997425079346, 762.9998710155487 ],
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 1 ],
                    "midpoints": [ 279.49997425079346, 799.4998710155487, 235.74998688697815, 799.4998710155487, 235.74998688697815, 674.4998710155487, 193.49998688697815, 674.4998710155487 ],
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "midpoints": [ 147.15690085291862, 1111.6338266134262, 147.15690085291862, 1111.6338266134262 ],
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-139", 0 ],
                    "midpoints": [ 147.15690085291862, 1282.1338266134262, 421.6569008529186, 1282.1338266134262, 421.6569008529186, 1262.1338266134262, 696.9476841986179, 1262.1338266134262 ],
                    "order": 1,
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-140", 0 ],
                    "midpoints": [ 147.15690085291862, 1282.1338266134262, 579.1569008529186, 1282.1338266134262, 579.1569008529186, 1262.1338266134262, 1012.0104390382767, 1262.1338266134262 ],
                    "order": 0,
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "midpoints": [ 147.15690085291862, 1282.1338266134262, 147.15690085291862, 1282.1338266134262, 147.15690085291862, 1262.1338266134262, 147.15690085291862, 1262.1338266134262 ],
                    "order": 3,
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "midpoints": [ 147.15690085291862, 1282.1338266134262, 317.1569008529186, 1282.1338266134262, 317.1569008529186, 1262.1338266134262, 486.90584763884544, 1262.1338266134262 ],
                    "order": 2,
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-126", 0 ],
                    "source": [ "obj-256", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-102", 0 ],
                    "source": [ "obj-257", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-77", 0 ],
                    "source": [ "obj-258", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-47", 0 ],
                    "source": [ "obj-259", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-27", 0 ],
                    "midpoints": [ 147.15690085291862, 1385.6338266134262, 147.15690085291862, 1385.6338266134262 ],
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-61", 0 ],
                    "source": [ "obj-260", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "source": [ "obj-267", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-267", 0 ],
                    "source": [ "obj-269", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-271", 0 ],
                    "source": [ "obj-270", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-275", 1 ],
                    "order": 0,
                    "source": [ "obj-271", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-276", 1 ],
                    "order": 1,
                    "source": [ "obj-271", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-277", 1 ],
                    "source": [ "obj-271", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-278", 1 ],
                    "order": 0,
                    "source": [ "obj-271", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-279", 1 ],
                    "order": 0,
                    "source": [ "obj-271", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-314", 0 ],
                    "order": 1,
                    "source": [ "obj-271", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-315", 0 ],
                    "order": 0,
                    "source": [ "obj-271", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-317", 0 ],
                    "order": 1,
                    "source": [ "obj-271", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-318", 0 ],
                    "order": 1,
                    "source": [ "obj-271", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-273", 0 ],
                    "source": [ "obj-272", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-274", 0 ],
                    "source": [ "obj-273", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-158", 0 ],
                    "source": [ "obj-274", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-161", 0 ],
                    "source": [ "obj-274", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-308", 0 ],
                    "source": [ "obj-275", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-306", 0 ],
                    "source": [ "obj-276", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-300", 0 ],
                    "source": [ "obj-277", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-304", 0 ],
                    "source": [ "obj-278", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-310", 0 ],
                    "source": [ "obj-279", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "midpoints": [ 146.99998688697815, 833.4998710155487, 147.15690085291862, 833.4998710155487 ],
                    "order": 1,
                    "source": [ "obj-28", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "midpoints": [ 146.99998688697815, 861.4998710155487, 217.03137636184692, 861.4998710155487 ],
                    "order": 0,
                    "source": [ "obj-28", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-59", 0 ],
                    "midpoints": [ 146.99998688697815, 791.4998710155487, 146.99998688697815, 791.4998710155487 ],
                    "order": 2,
                    "source": [ "obj-28", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-286", 0 ],
                    "source": [ "obj-280", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-287", 0 ],
                    "source": [ "obj-281", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-288", 0 ],
                    "source": [ "obj-282", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-289", 0 ],
                    "source": [ "obj-283", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-285", 0 ],
                    "source": [ "obj-284", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-290", 0 ],
                    "source": [ "obj-285", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-265", 0 ],
                    "order": 1,
                    "source": [ "obj-286", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-291", 1 ],
                    "order": 0,
                    "source": [ "obj-286", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-264", 0 ],
                    "order": 1,
                    "source": [ "obj-287", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-292", 1 ],
                    "order": 0,
                    "source": [ "obj-287", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-263", 0 ],
                    "order": 1,
                    "source": [ "obj-288", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-293", 1 ],
                    "order": 0,
                    "source": [ "obj-288", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-262", 0 ],
                    "order": 1,
                    "source": [ "obj-289", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-294", 1 ],
                    "order": 0,
                    "source": [ "obj-289", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-160", 1 ],
                    "midpoints": [ 184.49998331069946, 936.9998710155487, 510.57251430551213, 936.9998710155487 ],
                    "order": 0,
                    "source": [ "obj-29", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-28", 1 ],
                    "midpoints": [ 184.49998331069946, 762.9998710155487, 182.99998688697815, 762.9998710155487 ],
                    "order": 1,
                    "source": [ "obj-29", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-261", 0 ],
                    "order": 1,
                    "source": [ "obj-290", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-295", 1 ],
                    "order": 0,
                    "source": [ "obj-290", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 0 ],
                    "source": [ "obj-291", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-56", 0 ],
                    "source": [ "obj-292", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-85", 0 ],
                    "source": [ "obj-293", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-109", 0 ],
                    "source": [ "obj-294", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-133", 0 ],
                    "source": [ "obj-295", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 2 ],
                    "midpoints": [ 284.39539167284966, 909.1338266134262, 284.490234186252, 909.1338266134262 ],
                    "order": 1,
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 2 ],
                    "midpoints": [ 284.39539167284966, 937.1338266134262, 342.5869319174025, 937.1338266134262 ],
                    "order": 0,
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "midpoints": [ 184.49998331069946, 735.9998710155487, 184.49998331069946, 735.9998710155487 ],
                    "source": [ "obj-30", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-282", 0 ],
                    "source": [ "obj-300", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-283", 0 ],
                    "source": [ "obj-304", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-281", 0 ],
                    "source": [ "obj-306", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-280", 0 ],
                    "source": [ "obj-308", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-284", 0 ],
                    "source": [ "obj-310", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-312", 0 ],
                    "source": [ "obj-311", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-tbb", 0 ],
                    "source": [ "obj-312", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-160", 0 ],
                    "midpoints": [ 486.90584763884544, 1142.1338266134262, 486.90584763884544, 1142.1338266134262 ],
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-34", 0 ],
                    "midpoints": [ 559.2907833456993, 1039.6338266134262, 559.2907833456993, 1039.6338266134262 ],
                    "source": [ "obj-33", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-32", 1 ],
                    "midpoints": [ 559.2907833456993, 1087.6338266134262, 557.9058476388454, 1087.6338266134262 ],
                    "source": [ "obj-34", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-37", 3 ],
                    "midpoints": [ 747.1568881571293, 937.1338266134262, 747.6241166790327, 937.1338266134262 ],
                    "order": 0,
                    "source": [ "obj-35", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-54", 3 ],
                    "midpoints": [ 747.1568881571293, 909.1338266134262, 692.9058476388454, 909.1338266134262 ],
                    "order": 1,
                    "source": [ "obj-35", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-145", 0 ],
                    "midpoints": [ 559.2907833456993, 991.6338266134262, 559.2907833456993, 991.6338266134262 ],
                    "source": [ "obj-37", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-55", 0 ],
                    "midpoints": [ 486.90584763884544, 1087.6338266134262, 486.90584763884544, 1087.6338266134262 ],
                    "source": [ "obj-38", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-47", 0 ],
                    "midpoints": [ 556.9999477863312, 846.9998710155487, 556.1558476388454, 846.9998710155487 ],
                    "source": [ "obj-39", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "midpoints": [ 331.9999692440033, 819.4998710155487, 331.9999692440033, 819.4998710155487 ],
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-42", 0 ],
                    "midpoints": [ 829.499921798706, 605.9998710155487, 829.499921798706, 605.9998710155487 ],
                    "source": [ "obj-40", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-44", 0 ],
                    "midpoints": [ 674.499936580658, 819.4998710155487, 674.499936580658, 819.4998710155487 ],
                    "source": [ "obj-41", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-43", 0 ],
                    "midpoints": [ 829.499921798706, 726.4998710155487, 719.4999322891235, 726.4998710155487 ],
                    "source": [ "obj-42", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-160", 3 ],
                    "midpoints": [ 719.4999322891235, 979.9998710155487, 557.9058476388454, 979.9998710155487 ],
                    "order": 1,
                    "source": [ "obj-43", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-171", 0 ],
                    "midpoints": [ 719.4999322891235, 991.9998710155487, 534.6045913994312, 991.9998710155487 ],
                    "order": 2,
                    "source": [ "obj-43", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-45", 2 ],
                    "midpoints": [ 719.4999322891235, 846.9998710155487, 722.0732086896896, 846.9998710155487 ],
                    "order": 0,
                    "source": [ "obj-43", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-45", 1 ],
                    "midpoints": [ 674.499936580658, 846.9998710155487, 674.5732086896896, 846.9998710155487 ],
                    "source": [ "obj-44", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-37", 2 ],
                    "midpoints": [ 627.0732086896896, 937.1338266134262, 684.846338901255, 937.1338266134262 ],
                    "order": 0,
                    "source": [ "obj-45", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-54", 2 ],
                    "midpoints": [ 627.0732086896896, 909.1338266134262, 624.2391809721788, 909.1338266134262 ],
                    "order": 1,
                    "source": [ "obj-45", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 0 ],
                    "midpoints": [ 486.90584763884544, 1257.1338266134262, 533.6569008529186, 1257.1338266134262, 533.6569008529186, 1160.1338266134262, 581.8849251270294, 1160.1338266134262 ],
                    "order": 0,
                    "source": [ "obj-46", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-69", 0 ],
                    "midpoints": [ 486.90584763884544, 1257.1338266134262, 316.6569008529186, 1257.1338266134262, 316.6569008529186, 1213.1338266134262, 147.15690085291862, 1213.1338266134262 ],
                    "order": 1,
                    "source": [ "obj-46", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-37", 1 ],
                    "midpoints": [ 556.1558476388454, 937.1338266134262, 622.0685611234771, 937.1338266134262 ],
                    "order": 0,
                    "source": [ "obj-47", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-54", 1 ],
                    "midpoints": [ 556.1558476388454, 909.1338266134262, 555.5725143055121, 909.1338266134262 ],
                    "order": 1,
                    "source": [ "obj-47", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-52", 0 ],
                    "midpoints": [ 524.4999508857727, 735.9998710155487, 524.4999508857727, 735.9998710155487 ],
                    "source": [ "obj-49", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-50", 0 ],
                    "midpoints": [ 486.9999544620514, 632.9998710155487, 486.9999544620514, 632.9998710155487 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-51", 0 ],
                    "midpoints": [ 486.9999544620514, 739.9998710155487, 379.4999647140503, 739.9998710155487 ],
                    "source": [ "obj-50", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-147", 3 ],
                    "midpoints": [ 379.4999647140503, 979.9998710155487, 218.15690085291862, 979.9998710155487 ],
                    "order": 1,
                    "source": [ "obj-51", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-170", 0 ],
                    "midpoints": [ 379.4999647140503, 991.9998710155487, 191.92677438259125, 991.9998710155487 ],
                    "order": 2,
                    "source": [ "obj-51", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 2 ],
                    "midpoints": [ 379.4999647140503, 846.9998710155487, 379.39539167284966, 846.9998710155487 ],
                    "order": 0,
                    "source": [ "obj-51", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-162", 1 ],
                    "midpoints": [ 524.4999508857727, 936.9998710155487, 850.7398711244265, 936.9998710155487 ],
                    "order": 0,
                    "source": [ "obj-52", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-53", 1 ],
                    "midpoints": [ 524.4999508857727, 762.9998710155487, 522.9999544620514, 762.9998710155487 ],
                    "order": 1,
                    "source": [ "obj-52", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-37", 0 ],
                    "midpoints": [ 486.9999544620514, 861.4998710155487, 559.2907833456993, 861.4998710155487 ],
                    "order": 0,
                    "source": [ "obj-53", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-48", 0 ],
                    "midpoints": [ 486.9999544620514, 791.4998710155487, 486.9999544620514, 791.4998710155487 ],
                    "order": 2,
                    "source": [ "obj-53", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-54", 0 ],
                    "midpoints": [ 486.9999544620514, 833.4998710155487, 486.90584763884544, 833.4998710155487 ],
                    "order": 1,
                    "source": [ "obj-53", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "midpoints": [ 486.90584763884544, 937.6338266134262, 486.90584763884544, 937.6338266134262 ],
                    "source": [ "obj-54", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-32", 0 ],
                    "midpoints": [ 486.90584763884544, 1111.6338266134262, 486.90584763884544, 1111.6338266134262 ],
                    "source": [ "obj-55", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-57", 0 ],
                    "midpoints": [ 621.9999415874481, 762.9998710155487, 621.9999415874481, 762.9998710155487 ],
                    "source": [ "obj-56", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-58", 1 ],
                    "midpoints": [ 621.9999415874481, 799.4998710155487, 576.7499868869781, 799.4998710155487, 576.7499868869781, 674.4998710155487, 533.4999544620514, 674.4998710155487 ],
                    "source": [ "obj-57", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-49", 0 ],
                    "midpoints": [ 486.9999544620514, 709.9998710155487, 524.4999508857727, 709.9998710155487 ],
                    "order": 0,
                    "source": [ "obj-58", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-53", 0 ],
                    "midpoints": [ 486.9999544620514, 736.9998710155487, 486.9999544620514, 736.9998710155487 ],
                    "order": 1,
                    "source": [ "obj-58", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-61", 0 ],
                    "midpoints": [ 216.99998021125793, 846.9998710155487, 217.03137636184692, 846.9998710155487 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 1 ],
                    "midpoints": [ 217.03137636184692, 909.1338266134262, 215.8235675195853, 909.1338266134262 ],
                    "order": 1,
                    "source": [ "obj-61", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 1 ],
                    "midpoints": [ 217.03137636184692, 937.1338266134262, 279.80915413962475, 937.1338266134262 ],
                    "order": 0,
                    "source": [ "obj-61", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-162", 0 ],
                    "midpoints": [ 829.5836646556854, 1142.1338266134262, 827.0732044577599, 1142.1338266134262 ],
                    "source": [ "obj-62", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-64", 0 ],
                    "midpoints": [ 899.4581401646137, 1039.6338266134262, 899.4581401646137, 1039.6338266134262 ],
                    "source": [ "obj-63", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-62", 1 ],
                    "midpoints": [ 899.4581401646137, 1087.6338266134262, 900.5836646556854, 1087.6338266134262 ],
                    "source": [ "obj-64", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-66", 3 ],
                    "midpoints": [ 1086.905834943056, 937.1338266134262, 1087.7914734979472, 937.1338266134262 ],
                    "order": 0,
                    "source": [ "obj-65", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-82", 3 ],
                    "midpoints": [ 1086.905834943056, 909.1338266134262, 1035.5836646556854, 909.1338266134262 ],
                    "order": 1,
                    "source": [ "obj-65", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-144", 0 ],
                    "midpoints": [ 899.4581401646137, 991.6338266134262, 899.4581401646137, 991.6338266134262 ],
                    "source": [ "obj-66", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-83", 0 ],
                    "midpoints": [ 829.5836646556854, 1087.6338266134262, 829.5836646556854, 1087.6338266134262 ],
                    "source": [ "obj-67", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-60", 0 ],
                    "midpoints": [ 827.0732044577599, 1257.1338266134262, 874.1569008529186, 1257.1338266134262, 874.1569008529186, 1160.1338266134262, 922.0522819459438, 1160.1338266134262 ],
                    "order": 0,
                    "source": [ "obj-68", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-69", 0 ],
                    "midpoints": [ 827.0732044577599, 1257.1338266134262, 486.6569008529186, 1257.1338266134262, 486.6569008529186, 1213.1338266134262, 147.15690085291862, 1213.1338266134262 ],
                    "order": 1,
                    "source": [ "obj-68", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-156", 0 ],
                    "midpoints": [ 147.15690085291862, 1271.1338266134262, 204.47907537221909, 1271.1338266134262 ],
                    "source": [ "obj-69", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 1 ],
                    "midpoints": [ 331.9999692440033, 846.9998710155487, 331.89539167284966, 846.9998710155487 ],
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-77", 0 ],
                    "midpoints": [ 896.9999153614044, 846.9998710155487, 896.9476799666882, 846.9998710155487 ],
                    "source": [ "obj-70", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-73", 0 ],
                    "midpoints": [ 1169.4998893737793, 605.9998710155487, 1169.4998893737793, 605.9998710155487 ],
                    "source": [ "obj-71", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-75", 0 ],
                    "midpoints": [ 1014.4999041557312, 819.4998710155487, 1014.4999041557312, 819.4998710155487 ],
                    "source": [ "obj-72", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-74", 0 ],
                    "midpoints": [ 1169.4998893737793, 726.4998710155487, 1061.9998996257782, 726.4998710155487 ],
                    "source": [ "obj-73", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-162", 3 ],
                    "midpoints": [ 1061.9998996257782, 979.9998710155487, 898.0732044577599, 979.9998710155487 ],
                    "order": 1,
                    "source": [ "obj-74", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-173", 0 ],
                    "midpoints": [ 1061.9998996257782, 991.9998710155487, 871.8430779874325, 991.9998710155487 ],
                    "order": 2,
                    "source": [ "obj-74", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-76", 2 ],
                    "midpoints": [ 1061.9998996257782, 846.9998710155487, 1062.240565508604, 846.9998710155487 ],
                    "order": 0,
                    "source": [ "obj-74", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-76", 1 ],
                    "midpoints": [ 1014.4999041557312, 846.9998710155487, 1014.740565508604, 846.9998710155487 ],
                    "source": [ "obj-75", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-66", 2 ],
                    "midpoints": [ 967.240565508604, 937.1338266134262, 1025.0136957201694, 937.1338266134262 ],
                    "order": 0,
                    "source": [ "obj-76", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-82", 2 ],
                    "midpoints": [ 967.240565508604, 909.1338266134262, 966.9169979890188, 909.1338266134262 ],
                    "order": 1,
                    "source": [ "obj-76", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-66", 1 ],
                    "midpoints": [ 896.9476799666882, 937.1338266134262, 962.2359179423916, 937.1338266134262 ],
                    "order": 0,
                    "source": [ "obj-77", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-82", 1 ],
                    "midpoints": [ 896.9476799666882, 909.1338266134262, 898.250331322352, 909.1338266134262 ],
                    "order": 1,
                    "source": [ "obj-77", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-80", 0 ],
                    "midpoints": [ 866.9999182224274, 735.9998710155487, 866.9999182224274, 735.9998710155487 ],
                    "source": [ "obj-79", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-164", 1 ],
                    "midpoints": [ 866.9999182224274, 936.9998710155487, 1192.999278108279, 936.9998710155487 ],
                    "order": 0,
                    "source": [ "obj-80", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-81", 1 ],
                    "midpoints": [ 866.9999182224274, 762.9998710155487, 865.499921798706, 762.9998710155487 ],
                    "order": 1,
                    "source": [ "obj-80", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-66", 0 ],
                    "midpoints": [ 829.499921798706, 861.4998710155487, 899.4581401646137, 861.4998710155487 ],
                    "order": 0,
                    "source": [ "obj-81", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-78", 0 ],
                    "midpoints": [ 829.499921798706, 791.4998710155487, 829.499921798706, 791.4998710155487 ],
                    "order": 2,
                    "source": [ "obj-81", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-82", 0 ],
                    "midpoints": [ 829.499921798706, 833.4998710155487, 829.5836646556854, 833.4998710155487 ],
                    "order": 1,
                    "source": [ "obj-81", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 0 ],
                    "midpoints": [ 829.5836646556854, 937.6338266134262, 829.5836646556854, 937.6338266134262 ],
                    "source": [ "obj-82", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-62", 0 ],
                    "midpoints": [ 829.5836646556854, 1111.6338266134262, 829.5836646556854, 1111.6338266134262 ],
                    "source": [ "obj-83", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-69", 0 ],
                    "midpoints": [ 1169.3326114416122, 1257.1338266134262, 657.6569008529186, 1257.1338266134262, 657.6569008529186, 1213.1338266134262, 147.15690085291862, 1213.1338266134262 ],
                    "order": 1,
                    "source": [ "obj-84", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-88", 0 ],
                    "midpoints": [ 1169.3326114416122, 1257.1338266134262, 1215.6569008529186, 1257.1338266134262, 1215.6569008529186, 1160.1338266134262, 1264.7300989627838, 1160.1338266134262 ],
                    "order": 0,
                    "source": [ "obj-84", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-86", 0 ],
                    "midpoints": [ 961.9999091625214, 762.9998710155487, 961.9999091625214, 762.9998710155487 ],
                    "source": [ "obj-85", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-87", 1 ],
                    "midpoints": [ 961.9999091625214, 799.4998710155487, 917.7499868869781, 799.4998710155487, 917.7499868869781, 674.4998710155487, 875.999921798706, 674.4998710155487 ],
                    "source": [ "obj-86", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-79", 0 ],
                    "midpoints": [ 829.499921798706, 709.9998710155487, 866.9999182224274, 709.9998710155487 ],
                    "order": 0,
                    "source": [ "obj-87", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-81", 0 ],
                    "midpoints": [ 829.499921798706, 736.9998710155487, 829.499921798706, 736.9998710155487 ],
                    "order": 1,
                    "source": [ "obj-87", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-164", 0 ],
                    "midpoints": [ 1169.3326114416122, 1142.1338266134262, 1169.3326114416122, 1142.1338266134262 ],
                    "source": [ "obj-89", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 0 ],
                    "midpoints": [ 147.15690085291862, 1087.6338266134262, 147.15690085291862, 1087.6338266134262 ],
                    "source": [ "obj-9", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-91", 0 ],
                    "midpoints": [ 1242.1359571814537, 1039.6338266134262, 1242.1359571814537, 1039.6338266134262 ],
                    "source": [ "obj-90", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-89", 1 ],
                    "midpoints": [ 1242.1359571814537, 1087.6338266134262, 1240.3326114416122, 1087.6338266134262 ],
                    "source": [ "obj-91", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-107", 3 ],
                    "midpoints": [ 1429.583651959896, 909.1338266134262, 1375.3326114416122, 909.1338266134262 ],
                    "order": 1,
                    "source": [ "obj-92", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-93", 3 ],
                    "midpoints": [ 1429.583651959896, 937.1338266134262, 1430.4692905147872, 937.1338266134262 ],
                    "order": 0,
                    "source": [ "obj-92", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-143", 0 ],
                    "midpoints": [ 1242.1359571814537, 991.6338266134262, 1242.1359571814537, 991.6338266134262 ],
                    "source": [ "obj-93", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-108", 0 ],
                    "midpoints": [ 1169.3326114416122, 1087.6338266134262, 1169.3326114416122, 1087.6338266134262 ],
                    "source": [ "obj-94", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-102", 0 ],
                    "midpoints": [ 1239.499882698059, 846.9998710155487, 1239.2070869505405, 846.9998710155487 ],
                    "source": [ "obj-95", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-98", 0 ],
                    "midpoints": [ 1511.999856710434, 605.9998710155487, 1511.999856710434, 605.9998710155487 ],
                    "source": [ "obj-96", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-100", 0 ],
                    "midpoints": [ 1356.9998714923859, 819.4998710155487, 1356.9998714923859, 819.4998710155487 ],
                    "source": [ "obj-97", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-99", 0 ],
                    "midpoints": [ 1511.999856710434, 726.4998710155487, 1401.9998672008514, 726.4998710155487 ],
                    "source": [ "obj-98", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-101", 2 ],
                    "midpoints": [ 1401.9998672008514, 846.9998710155487, 1401.9895122945309, 846.9998710155487 ],
                    "order": 0,
                    "source": [ "obj-99", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-164", 3 ],
                    "midpoints": [ 1401.9998672008514, 979.9998710155487, 1240.3326114416122, 979.9998710155487 ],
                    "order": 1,
                    "source": [ "obj-99", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-175", 0 ],
                    "midpoints": [ 1401.9998672008514, 991.9998710155487, 1217.031355202198, 991.9998710155487 ],
                    "order": 2,
                    "source": [ "obj-99", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-close", 0 ],
                    "source": [ "obj-delay", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-delay", 0 ],
                    "source": [ "obj-tbb", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-open", 0 ],
                    "source": [ "obj-tbb", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-26": [ "mc.live.gain~", "mc.live.gain~", 0 ],
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}