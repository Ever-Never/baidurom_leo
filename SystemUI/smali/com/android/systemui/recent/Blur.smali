.class public Lcom/android/systemui/recent/Blur;
.super Ljava/lang/Object;
.source "Blur.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Blur"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fastblur(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 46
    .parameter "context"
    .parameter "sentBitmap"
    .parameter "radius"

    .prologue
    .line 18
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-le v4, v6, :cond_0

    .line 19
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 21
    .local v2, bitmap:Landroid/graphics/Bitmap;
    invoke-static/range {p0 .. p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v31

    .line 22
    .local v31, rs:Landroid/renderscript/RenderScript;
    sget-object v4, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v6, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-static {v0, v1, v4, v6}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v23

    .line 24
    .local v23, input:Landroid/renderscript/Allocation;
    invoke-virtual/range {v23 .. v23}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-static {v0, v4}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v24

    .line 25
    .local v24, output:Landroid/renderscript/Allocation;
    invoke-static/range {v31 .. v31}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-static {v0, v4}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v33

    .line 26
    .local v33, script:Landroid/renderscript/ScriptIntrinsicBlur;
    move/from16 v0, p2

    int-to-float v4, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 27
    move-object/from16 v0, v33

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 28
    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 29
    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    move-object v4, v2

    .line 229
    .end local v23           #input:Landroid/renderscript/Allocation;
    .end local v24           #output:Landroid/renderscript/Allocation;
    .end local v31           #rs:Landroid/renderscript/RenderScript;
    .end local v33           #script:Landroid/renderscript/ScriptIntrinsicBlur;
    :goto_0
    return-object v4

    .line 33
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 35
    .restart local v2       #bitmap:Landroid/graphics/Bitmap;
    const/4 v4, 0x1

    move/from16 v0, p2

    if-ge v0, v4, :cond_1

    .line 36
    const/4 v4, 0x0

    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 40
    .local v5, w:I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 42
    .local v9, h:I
    mul-int v4, v5, v9

    new-array v3, v4, [I

    .line 43
    .local v3, pix:[I
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 45
    add-int/lit8 v40, v5, -0x1

    .line 46
    .local v40, wm:I
    add-int/lit8 v21, v9, -0x1

    .line 47
    .local v21, hm:I
    mul-int v39, v5, v9

    .line 48
    .local v39, wh:I
    add-int v4, p2, p2

    add-int/lit8 v14, v4, 0x1

    .line 50
    .local v14, div:I
    move/from16 v0, v39

    new-array v0, v0, [I

    move-object/from16 v26, v0

    .line 51
    .local v26, r:[I
    move/from16 v0, v39

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 52
    .local v17, g:[I
    move/from16 v0, v39

    new-array v10, v0, [I

    .line 54
    .local v10, b:[I
    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    new-array v0, v4, [I

    move-object/from16 v38, v0

    .line 56
    .local v38, vmin:[I
    add-int/lit8 v4, v14, 0x1

    shr-int/lit8 v15, v4, 0x1

    .line 57
    .local v15, divsum:I
    mul-int/2addr v15, v15

    .line 58
    mul-int/lit16 v4, v15, 0x100

    new-array v0, v4, [I

    move-object/from16 v16, v0

    .line 59
    .local v16, dv:[I
    const/16 v22, 0x0

    .local v22, i:I
    :goto_1
    mul-int/lit16 v4, v15, 0x100

    move/from16 v0, v22

    if-ge v0, v4, :cond_2

    .line 60
    div-int v4, v22, v15

    aput v4, v16, v22

    .line 59
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 63
    :cond_2
    const/16 v43, 0x0

    .local v43, yi:I
    move/from16 v45, v43

    .line 65
    .local v45, yw:I
    const/4 v4, 0x3

    filled-new-array {v14, v4}, [I

    move-result-object v4

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, [[I

    .line 70
    .local v35, stack:[[I
    add-int/lit8 v27, p2, 0x1

    .line 74
    .local v27, r1:I
    const/16 v42, 0x0

    .local v42, y:I
    :goto_2
    move/from16 v0, v42

    if-ge v0, v9, :cond_7

    .line 75
    const/4 v13, 0x0

    .local v13, bsum:I
    move/from16 v20, v13

    .local v20, gsum:I
    move/from16 v32, v13

    .local v32, rsum:I
    move v12, v13

    .local v12, boutsum:I
    move/from16 v19, v13

    .local v19, goutsum:I
    move/from16 v30, v13

    .local v30, routsum:I
    move v11, v13

    .local v11, binsum:I
    move/from16 v18, v13

    .local v18, ginsum:I
    move/from16 v29, v13

    .line 76
    .local v29, rinsum:I
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v22, v0

    :goto_3
    move/from16 v0, v22

    move/from16 v1, p2

    if-gt v0, v1, :cond_4

    .line 77
    const/4 v4, 0x0

    move/from16 v0, v22

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    move/from16 v0, v40

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int v4, v4, v43

    aget v25, v3, v4

    .line 78
    .local v25, p:I
    add-int v4, v22, p2

    aget-object v34, v35, v4

    .line 79
    .local v34, sir:[I
    const/4 v4, 0x0

    const/high16 v6, 0xff

    and-int v6, v6, v25

    shr-int/lit8 v6, v6, 0x10

    aput v6, v34, v4

    .line 80
    const/4 v4, 0x1

    const v6, 0xff00

    and-int v6, v6, v25

    shr-int/lit8 v6, v6, 0x8

    aput v6, v34, v4

    .line 81
    const/4 v4, 0x2

    move/from16 v0, v25

    and-int/lit16 v6, v0, 0xff

    aput v6, v34, v4

    .line 82
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int v28, v27, v4

    .line 83
    .local v28, rbs:I
    const/4 v4, 0x0

    aget v4, v34, v4

    mul-int v4, v4, v28

    add-int v32, v32, v4

    .line 84
    const/4 v4, 0x1

    aget v4, v34, v4

    mul-int v4, v4, v28

    add-int v20, v20, v4

    .line 85
    const/4 v4, 0x2

    aget v4, v34, v4

    mul-int v4, v4, v28

    add-int/2addr v13, v4

    .line 86
    if-lez v22, :cond_3

    .line 87
    const/4 v4, 0x0

    aget v4, v34, v4

    add-int v29, v29, v4

    .line 88
    const/4 v4, 0x1

    aget v4, v34, v4

    add-int v18, v18, v4

    .line 89
    const/4 v4, 0x2

    aget v4, v34, v4

    add-int/2addr v11, v4

    .line 76
    :goto_4
    add-int/lit8 v22, v22, 0x1

    goto :goto_3

    .line 91
    :cond_3
    const/4 v4, 0x0

    aget v4, v34, v4

    add-int v30, v30, v4

    .line 92
    const/4 v4, 0x1

    aget v4, v34, v4

    add-int v19, v19, v4

    .line 93
    const/4 v4, 0x2

    aget v4, v34, v4

    add-int/2addr v12, v4

    goto :goto_4

    .line 96
    .end local v25           #p:I
    .end local v28           #rbs:I
    .end local v34           #sir:[I
    :cond_4
    move/from16 v36, p2

    .line 98
    .local v36, stackpointer:I
    const/16 v41, 0x0

    .local v41, x:I
    :goto_5
    move/from16 v0, v41

    if-ge v0, v5, :cond_6

    .line 100
    aget v4, v16, v32

    aput v4, v26, v43

    .line 101
    aget v4, v16, v20

    aput v4, v17, v43

    .line 102
    aget v4, v16, v13

    aput v4, v10, v43

    .line 104
    sub-int v32, v32, v30

    .line 105
    sub-int v20, v20, v19

    .line 106
    sub-int/2addr v13, v12

    .line 108
    sub-int v4, v36, p2

    add-int v37, v4, v14

    .line 109
    .local v37, stackstart:I
    rem-int v4, v37, v14

    aget-object v34, v35, v4

    .line 111
    .restart local v34       #sir:[I
    const/4 v4, 0x0

    aget v4, v34, v4

    sub-int v30, v30, v4

    .line 112
    const/4 v4, 0x1

    aget v4, v34, v4

    sub-int v19, v19, v4

    .line 113
    const/4 v4, 0x2

    aget v4, v34, v4

    sub-int/2addr v12, v4

    .line 115
    if-nez v42, :cond_5

    .line 116
    add-int v4, v41, p2

    add-int/lit8 v4, v4, 0x1

    move/from16 v0, v40

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    aput v4, v38, v41

    .line 118
    :cond_5
    aget v4, v38, v41

    add-int v4, v4, v45

    aget v25, v3, v4

    .line 120
    .restart local v25       #p:I
    const/4 v4, 0x0

    const/high16 v6, 0xff

    and-int v6, v6, v25

    shr-int/lit8 v6, v6, 0x10

    aput v6, v34, v4

    .line 121
    const/4 v4, 0x1

    const v6, 0xff00

    and-int v6, v6, v25

    shr-int/lit8 v6, v6, 0x8

    aput v6, v34, v4

    .line 122
    const/4 v4, 0x2

    move/from16 v0, v25

    and-int/lit16 v6, v0, 0xff

    aput v6, v34, v4

    .line 124
    const/4 v4, 0x0

    aget v4, v34, v4

    add-int v29, v29, v4

    .line 125
    const/4 v4, 0x1

    aget v4, v34, v4

    add-int v18, v18, v4

    .line 126
    const/4 v4, 0x2

    aget v4, v34, v4

    add-int/2addr v11, v4

    .line 128
    add-int v32, v32, v29

    .line 129
    add-int v20, v20, v18

    .line 130
    add-int/2addr v13, v11

    .line 132
    add-int/lit8 v4, v36, 0x1

    rem-int v36, v4, v14

    .line 133
    rem-int v4, v36, v14

    aget-object v34, v35, v4

    .line 135
    const/4 v4, 0x0

    aget v4, v34, v4

    add-int v30, v30, v4

    .line 136
    const/4 v4, 0x1

    aget v4, v34, v4

    add-int v19, v19, v4

    .line 137
    const/4 v4, 0x2

    aget v4, v34, v4

    add-int/2addr v12, v4

    .line 139
    const/4 v4, 0x0

    aget v4, v34, v4

    sub-int v29, v29, v4

    .line 140
    const/4 v4, 0x1

    aget v4, v34, v4

    sub-int v18, v18, v4

    .line 141
    const/4 v4, 0x2

    aget v4, v34, v4

    sub-int/2addr v11, v4

    .line 143
    add-int/lit8 v43, v43, 0x1

    .line 98
    add-int/lit8 v41, v41, 0x1

    goto/16 :goto_5

    .line 145
    .end local v25           #p:I
    .end local v34           #sir:[I
    .end local v37           #stackstart:I
    :cond_6
    add-int v45, v45, v5

    .line 74
    add-int/lit8 v42, v42, 0x1

    goto/16 :goto_2

    .line 147
    .end local v11           #binsum:I
    .end local v12           #boutsum:I
    .end local v13           #bsum:I
    .end local v18           #ginsum:I
    .end local v19           #goutsum:I
    .end local v20           #gsum:I
    .end local v29           #rinsum:I
    .end local v30           #routsum:I
    .end local v32           #rsum:I
    .end local v36           #stackpointer:I
    .end local v41           #x:I
    :cond_7
    const/16 v41, 0x0

    .restart local v41       #x:I
    :goto_6
    move/from16 v0, v41

    if-ge v0, v5, :cond_d

    .line 148
    const/4 v13, 0x0

    .restart local v13       #bsum:I
    move/from16 v20, v13

    .restart local v20       #gsum:I
    move/from16 v32, v13

    .restart local v32       #rsum:I
    move v12, v13

    .restart local v12       #boutsum:I
    move/from16 v19, v13

    .restart local v19       #goutsum:I
    move/from16 v30, v13

    .restart local v30       #routsum:I
    move v11, v13

    .restart local v11       #binsum:I
    move/from16 v18, v13

    .restart local v18       #ginsum:I
    move/from16 v29, v13

    .line 149
    .restart local v29       #rinsum:I
    move/from16 v0, p2

    neg-int v4, v0

    mul-int v44, v4, v5

    .line 150
    .local v44, yp:I
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v22, v0

    :goto_7
    move/from16 v0, v22

    move/from16 v1, p2

    if-gt v0, v1, :cond_a

    .line 151
    const/4 v4, 0x0

    move/from16 v0, v44

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int v43, v4, v41

    .line 153
    add-int v4, v22, p2

    aget-object v34, v35, v4

    .line 155
    .restart local v34       #sir:[I
    const/4 v4, 0x0

    aget v6, v26, v43

    aput v6, v34, v4

    .line 156
    const/4 v4, 0x1

    aget v6, v17, v43

    aput v6, v34, v4

    .line 157
    const/4 v4, 0x2

    aget v6, v10, v43

    aput v6, v34, v4

    .line 159
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int v28, v27, v4

    .line 161
    .restart local v28       #rbs:I
    aget v4, v26, v43

    mul-int v4, v4, v28

    add-int v32, v32, v4

    .line 162
    aget v4, v17, v43

    mul-int v4, v4, v28

    add-int v20, v20, v4

    .line 163
    aget v4, v10, v43

    mul-int v4, v4, v28

    add-int/2addr v13, v4

    .line 165
    if-lez v22, :cond_9

    .line 166
    const/4 v4, 0x0

    aget v4, v34, v4

    add-int v29, v29, v4

    .line 167
    const/4 v4, 0x1

    aget v4, v34, v4

    add-int v18, v18, v4

    .line 168
    const/4 v4, 0x2

    aget v4, v34, v4

    add-int/2addr v11, v4

    .line 175
    :goto_8
    move/from16 v0, v22

    move/from16 v1, v21

    if-ge v0, v1, :cond_8

    .line 176
    add-int v44, v44, v5

    .line 150
    :cond_8
    add-int/lit8 v22, v22, 0x1

    goto :goto_7

    .line 170
    :cond_9
    const/4 v4, 0x0

    aget v4, v34, v4

    add-int v30, v30, v4

    .line 171
    const/4 v4, 0x1

    aget v4, v34, v4

    add-int v19, v19, v4

    .line 172
    const/4 v4, 0x2

    aget v4, v34, v4

    add-int/2addr v12, v4

    goto :goto_8

    .line 179
    .end local v28           #rbs:I
    .end local v34           #sir:[I
    :cond_a
    move/from16 v43, v41

    .line 180
    move/from16 v36, p2

    .line 181
    .restart local v36       #stackpointer:I
    const/16 v42, 0x0

    :goto_9
    move/from16 v0, v42

    if-ge v0, v9, :cond_c

    .line 183
    const/high16 v4, -0x100

    aget v6, v3, v43

    and-int/2addr v4, v6

    aget v6, v16, v32

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v4, v6

    aget v6, v16, v20

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v4, v6

    aget v6, v16, v13

    or-int/2addr v4, v6

    aput v4, v3, v43

    .line 185
    sub-int v32, v32, v30

    .line 186
    sub-int v20, v20, v19

    .line 187
    sub-int/2addr v13, v12

    .line 189
    sub-int v4, v36, p2

    add-int v37, v4, v14

    .line 190
    .restart local v37       #stackstart:I
    rem-int v4, v37, v14

    aget-object v34, v35, v4

    .line 192
    .restart local v34       #sir:[I
    const/4 v4, 0x0

    aget v4, v34, v4

    sub-int v30, v30, v4

    .line 193
    const/4 v4, 0x1

    aget v4, v34, v4

    sub-int v19, v19, v4

    .line 194
    const/4 v4, 0x2

    aget v4, v34, v4

    sub-int/2addr v12, v4

    .line 196
    if-nez v41, :cond_b

    .line 197
    add-int v4, v42, v27

    move/from16 v0, v21

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    mul-int/2addr v4, v5

    aput v4, v38, v42

    .line 199
    :cond_b
    aget v4, v38, v42

    add-int v25, v41, v4

    .line 201
    .restart local v25       #p:I
    const/4 v4, 0x0

    aget v6, v26, v25

    aput v6, v34, v4

    .line 202
    const/4 v4, 0x1

    aget v6, v17, v25

    aput v6, v34, v4

    .line 203
    const/4 v4, 0x2

    aget v6, v10, v25

    aput v6, v34, v4

    .line 205
    const/4 v4, 0x0

    aget v4, v34, v4

    add-int v29, v29, v4

    .line 206
    const/4 v4, 0x1

    aget v4, v34, v4

    add-int v18, v18, v4

    .line 207
    const/4 v4, 0x2

    aget v4, v34, v4

    add-int/2addr v11, v4

    .line 209
    add-int v32, v32, v29

    .line 210
    add-int v20, v20, v18

    .line 211
    add-int/2addr v13, v11

    .line 213
    add-int/lit8 v4, v36, 0x1

    rem-int v36, v4, v14

    .line 214
    aget-object v34, v35, v36

    .line 216
    const/4 v4, 0x0

    aget v4, v34, v4

    add-int v30, v30, v4

    .line 217
    const/4 v4, 0x1

    aget v4, v34, v4

    add-int v19, v19, v4

    .line 218
    const/4 v4, 0x2

    aget v4, v34, v4

    add-int/2addr v12, v4

    .line 220
    const/4 v4, 0x0

    aget v4, v34, v4

    sub-int v29, v29, v4

    .line 221
    const/4 v4, 0x1

    aget v4, v34, v4

    sub-int v18, v18, v4

    .line 222
    const/4 v4, 0x2

    aget v4, v34, v4

    sub-int/2addr v11, v4

    .line 224
    add-int v43, v43, v5

    .line 181
    add-int/lit8 v42, v42, 0x1

    goto/16 :goto_9

    .line 147
    .end local v25           #p:I
    .end local v34           #sir:[I
    .end local v37           #stackstart:I
    :cond_c
    add-int/lit8 v41, v41, 0x1

    goto/16 :goto_6

    .line 228
    .end local v11           #binsum:I
    .end local v12           #boutsum:I
    .end local v13           #bsum:I
    .end local v18           #ginsum:I
    .end local v19           #goutsum:I
    .end local v20           #gsum:I
    .end local v29           #rinsum:I
    .end local v30           #routsum:I
    .end local v32           #rsum:I
    .end local v36           #stackpointer:I
    .end local v44           #yp:I
    :cond_d
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    move-object v4, v2

    .line 229
    goto/16 :goto_0
.end method
