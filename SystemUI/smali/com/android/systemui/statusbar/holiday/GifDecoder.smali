.class public Lcom/android/systemui/statusbar/holiday/GifDecoder;
.super Ljava/lang/Thread;
.source "GifDecoder.java"


# static fields
.field private static final MaxStackSize:I = 0x1000

.field public static final STATUS_FINISH:I = -0x1

.field public static final STATUS_FORMAT_ERROR:I = 0x1

.field public static final STATUS_OPEN_ERROR:I = 0x2

.field public static final STATUS_PARSING:I


# instance fields
.field private act:[I

.field private action:Lcom/android/systemui/statusbar/holiday/GifAction;

.field private alreadyLoopCount:I

.field private bgColor:I

.field private bgIndex:I

.field private block:[B

.field private blockSize:I

.field private currentFrame:Lcom/android/systemui/statusbar/holiday/GifFrame;

.field private delay:I

.field private dispose:I

.field private frameCount:I

.field private gct:[I

.field private gctFlag:Z

.field private gctSize:I

.field private gifData:[B

.field private gifFrame:Lcom/android/systemui/statusbar/holiday/GifFrame;

.field public height:I

.field private ih:I

.field private image:Landroid/graphics/Bitmap;

.field private in:Ljava/io/InputStream;

.field private interlace:Z

.field private isShow:Z

.field private iw:I

.field private ix:I

.field private iy:I

.field private lastBgColor:I

.field private lastDispose:I

.field private lastImage:Landroid/graphics/Bitmap;

.field private lct:[I

.field private lctFlag:Z

.field private lctSize:I

.field private loopCount:I

.field private lrh:I

.field private lrw:I

.field private lrx:I

.field private lry:I

.field private mHandler:Landroid/os/Handler;

.field private pixelAspect:I

.field private pixelStack:[B

.field private pixels:[B

.field private prefix:[S

.field private status:I

.field private suffix:[B

.field private transIndex:I

.field private transparency:Z

.field public width:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/android/systemui/statusbar/holiday/GifAction;Landroid/os/Handler;)V
    .locals 3
    .parameter "is"
    .parameter "act"
    .parameter "handler"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->loopCount:I

    .line 28
    iput v1, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->alreadyLoopCount:I

    .line 47
    iput-object v2, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->currentFrame:Lcom/android/systemui/statusbar/holiday/GifFrame;

    .line 49
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->isShow:Z

    .line 52
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->block:[B

    .line 53
    iput v1, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->blockSize:I

    .line 56
    iput v1, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->dispose:I

    .line 58
    iput v1, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->lastDispose:I

    .line 59
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->transparency:Z

    .line 60
    iput v1, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->delay:I

    .line 75
    iput-object v2, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->action:Lcom/android/systemui/statusbar/holiday/GifAction;

    .line 80
    iput-object v2, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->gifData:[B

    .line 90
    iput-object p1, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->in:Ljava/io/InputStream;

    .line 91
    iput-object p2, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->action:Lcom/android/systemui/statusbar/holiday/GifAction;

    .line 92
    iput-object p3, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->mHandler:Landroid/os/Handler;

    .line 93
    return-void
.end method

.method public constructor <init>([BLcom/android/systemui/statusbar/holiday/GifAction;Landroid/os/Handler;)V
    .locals 3
    .parameter "data"
    .parameter "act"
    .parameter "handler"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->loopCount:I

    .line 28
    iput v1, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->alreadyLoopCount:I

    .line 47
    iput-object v2, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->currentFrame:Lcom/android/systemui/statusbar/holiday/GifFrame;

    .line 49
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->isShow:Z

    .line 52
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->block:[B

    .line 53
    iput v1, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->blockSize:I

    .line 56
    iput v1, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->dispose:I

    .line 58
    iput v1, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->lastDispose:I

    .line 59
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->transparency:Z

    .line 60
    iput v1, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->delay:I

    .line 75
    iput-object v2, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->action:Lcom/android/systemui/statusbar/holiday/GifAction;

    .line 80
    iput-object v2, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->gifData:[B

    .line 84
    iput-object p1, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->gifData:[B

    .line 85
    iput-object p2, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->action:Lcom/android/systemui/statusbar/holiday/GifAction;

    .line 86
    iput-object p3, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->mHandler:Landroid/os/Handler;

    .line 87
    return-void
.end method

.method private decodeImageData()V
    .locals 25

    .prologue
    .line 335
    const/4 v2, -0x1

    .line 336
    .local v2, NullCode:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->iw:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->ih:I

    move/from16 v24, v0

    mul-int v17, v23, v24

    .line 339
    .local v17, npix:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->pixels:[B

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->pixels:[B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, v17

    if-ge v0, v1, :cond_1

    .line 340
    :cond_0
    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/holiday/GifDecoder;->pixels:[B

    .line 342
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->prefix:[S

    move-object/from16 v23, v0

    if-nez v23, :cond_2

    .line 343
    const/16 v23, 0x1000

    move/from16 v0, v23

    new-array v0, v0, [S

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/holiday/GifDecoder;->prefix:[S

    .line 345
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->suffix:[B

    move-object/from16 v23, v0

    if-nez v23, :cond_3

    .line 346
    const/16 v23, 0x1000

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/holiday/GifDecoder;->suffix:[B

    .line 348
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->pixelStack:[B

    move-object/from16 v23, v0

    if-nez v23, :cond_4

    .line 349
    const/16 v23, 0x1001

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/holiday/GifDecoder;->pixelStack:[B

    .line 352
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/holiday/GifDecoder;->read()I

    move-result v11

    .line 353
    .local v11, data_size:I
    const/16 v23, 0x1

    shl-int v6, v23, v11

    .line 354
    .local v6, clear:I
    add-int/lit8 v13, v6, 0x1

    .line 355
    .local v13, end_of_information:I
    add-int/lit8 v3, v6, 0x2

    .line 356
    .local v3, available:I
    move/from16 v18, v2

    .line 357
    .local v18, old_code:I
    add-int/lit8 v9, v11, 0x1

    .line 358
    .local v9, code_size:I
    const/16 v23, 0x1

    shl-int v23, v23, v9

    add-int/lit8 v8, v23, -0x1

    .line 359
    .local v8, code_mask:I
    const/4 v7, 0x0

    .local v7, code:I
    :goto_0
    if-ge v7, v6, :cond_5

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->prefix:[S

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-short v24, v23, v7

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->suffix:[B

    move-object/from16 v23, v0

    int-to-byte v0, v7

    move/from16 v24, v0

    aput-byte v24, v23, v7

    .line 359
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 365
    :cond_5
    const/4 v4, 0x0

    .local v4, bi:I
    move/from16 v19, v4

    .local v19, pi:I
    move/from16 v21, v4

    .local v21, top:I
    move v14, v4

    .local v14, first:I
    move v10, v4

    .local v10, count:I
    move v5, v4

    .local v5, bits:I
    move v12, v4

    .line 366
    .local v12, datum:I
    const/4 v15, 0x0

    .local v15, i:I
    move/from16 v20, v19

    .end local v19           #pi:I
    .local v20, pi:I
    move/from16 v22, v21

    .end local v21           #top:I
    .local v22, top:I
    :goto_1
    move/from16 v0, v17

    if-ge v15, v0, :cond_11

    .line 367
    if-nez v22, :cond_12

    .line 368
    if-ge v5, v9, :cond_8

    .line 370
    if-nez v10, :cond_7

    .line 372
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/holiday/GifDecoder;->readBlock()I

    move-result v10

    .line 373
    if-gtz v10, :cond_6

    move/from16 v21, v22

    .line 438
    .end local v22           #top:I
    .restart local v21       #top:I
    :goto_2
    move/from16 v15, v20

    :goto_3
    move/from16 v0, v17

    if-ge v15, v0, :cond_10

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->pixels:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-byte v24, v23, v15

    .line 438
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 376
    .end local v21           #top:I
    .restart local v22       #top:I
    :cond_6
    const/4 v4, 0x0

    .line 378
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->block:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v4

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    shl-int v23, v23, v5

    add-int v12, v12, v23

    .line 379
    add-int/lit8 v5, v5, 0x8

    .line 380
    add-int/lit8 v4, v4, 0x1

    .line 381
    add-int/lit8 v10, v10, -0x1

    .line 382
    goto :goto_1

    .line 385
    :cond_8
    and-int v7, v12, v8

    .line 386
    shr-int/2addr v12, v9

    .line 387
    sub-int/2addr v5, v9

    .line 390
    if-gt v7, v3, :cond_11

    if-ne v7, v13, :cond_9

    move/from16 v21, v22

    .line 391
    .end local v22           #top:I
    .restart local v21       #top:I
    goto :goto_2

    .line 393
    .end local v21           #top:I
    .restart local v22       #top:I
    :cond_9
    if-ne v7, v6, :cond_a

    .line 395
    add-int/lit8 v9, v11, 0x1

    .line 396
    const/16 v23, 0x1

    shl-int v23, v23, v9

    add-int/lit8 v8, v23, -0x1

    .line 397
    add-int/lit8 v3, v6, 0x2

    .line 398
    move/from16 v18, v2

    .line 399
    goto :goto_1

    .line 401
    :cond_a
    move/from16 v0, v18

    if-ne v0, v2, :cond_b

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->pixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22           #top:I
    .restart local v21       #top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->suffix:[B

    move-object/from16 v24, v0

    aget-byte v24, v24, v7

    aput-byte v24, v23, v22

    .line 403
    move/from16 v18, v7

    .line 404
    move v14, v7

    move/from16 v22, v21

    .line 405
    .end local v21           #top:I
    .restart local v22       #top:I
    goto :goto_1

    .line 407
    :cond_b
    move/from16 v16, v7

    .line 408
    .local v16, in_code:I
    if-ne v7, v3, :cond_c

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->pixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22           #top:I
    .restart local v21       #top:I
    int-to-byte v0, v14

    move/from16 v24, v0

    aput-byte v24, v23, v22

    .line 410
    move/from16 v7, v18

    move/from16 v22, v21

    .line 412
    .end local v21           #top:I
    .restart local v22       #top:I
    :cond_c
    :goto_4
    if-le v7, v6, :cond_d

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->pixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22           #top:I
    .restart local v21       #top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->suffix:[B

    move-object/from16 v24, v0

    aget-byte v24, v24, v7

    aput-byte v24, v23, v22

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->prefix:[S

    move-object/from16 v23, v0

    aget-short v7, v23, v7

    move/from16 v22, v21

    .end local v21           #top:I
    .restart local v22       #top:I
    goto :goto_4

    .line 416
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->suffix:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v7

    move/from16 v0, v23

    and-int/lit16 v14, v0, 0xff

    .line 418
    const/16 v23, 0x1000

    move/from16 v0, v23

    if-lt v3, v0, :cond_e

    move/from16 v21, v22

    .line 419
    .end local v22           #top:I
    .restart local v21       #top:I
    goto/16 :goto_2

    .line 421
    .end local v21           #top:I
    .restart local v22       #top:I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->pixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22           #top:I
    .restart local v21       #top:I
    int-to-byte v0, v14

    move/from16 v24, v0

    aput-byte v24, v23, v22

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->prefix:[S

    move-object/from16 v23, v0

    move/from16 v0, v18

    int-to-short v0, v0

    move/from16 v24, v0

    aput-short v24, v23, v3

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->suffix:[B

    move-object/from16 v23, v0

    int-to-byte v0, v14

    move/from16 v24, v0

    aput-byte v24, v23, v3

    .line 424
    add-int/lit8 v3, v3, 0x1

    .line 425
    and-int v23, v3, v8

    if-nez v23, :cond_f

    const/16 v23, 0x1000

    move/from16 v0, v23

    if-ge v3, v0, :cond_f

    .line 427
    add-int/lit8 v9, v9, 0x1

    .line 428
    add-int/2addr v8, v3

    .line 430
    :cond_f
    move/from16 v18, v16

    .line 434
    .end local v16           #in_code:I
    :goto_5
    add-int/lit8 v21, v21, -0x1

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->pixels:[B

    move-object/from16 v23, v0

    add-int/lit8 v19, v20, 0x1

    .end local v20           #pi:I
    .restart local v19       #pi:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->pixelStack:[B

    move-object/from16 v24, v0

    aget-byte v24, v24, v21

    aput-byte v24, v23, v20

    .line 436
    add-int/lit8 v15, v15, 0x1

    move/from16 v20, v19

    .end local v19           #pi:I
    .restart local v20       #pi:I
    move/from16 v22, v21

    .end local v21           #top:I
    .restart local v22       #top:I
    goto/16 :goto_1

    .line 441
    .end local v22           #top:I
    .restart local v21       #top:I
    :cond_10
    return-void

    .end local v21           #top:I
    .restart local v22       #top:I
    :cond_11
    move/from16 v21, v22

    .end local v22           #top:I
    .restart local v21       #top:I
    goto/16 :goto_2

    .end local v21           #top:I
    .restart local v22       #top:I
    :cond_12
    move/from16 v21, v22

    .end local v22           #top:I
    .restart local v21       #top:I
    goto :goto_5
.end method

.method private err()Z
    .locals 1

    .prologue
    .line 444
    iget v0, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->status:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 448
    iput v1, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->status:I

    .line 449
    iput v1, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->frameCount:I

    .line 450
    iput-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->gifFrame:Lcom/android/systemui/statusbar/holiday/GifFrame;

    .line 451
    iput-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->gct:[I

    .line 452
    iput-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->lct:[I

    .line 453
    return-void
.end method

.method private read()I
    .locals 3

    .prologue
    .line 456
    const/4 v0, 0x0

    .line 459
    .local v0, curByte:I
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 463
    :goto_0
    return v0

    .line 460
    :catch_0
    move-exception v1

    .line 461
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->status:I

    goto :goto_0
.end method

.method private readBlock()I
    .locals 6

    .prologue
    .line 470
    invoke-direct {p0}, Lcom/android/systemui/statusbar/holiday/GifDecoder;->read()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->blockSize:I

    .line 471
    const/4 v2, 0x0

    .line 472
    .local v2, n:I
    iget v3, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->blockSize:I

    if-lez v3, :cond_1

    .line 474
    const/4 v0, 0x0

    .line 475
    .local v0, count:I
    :goto_0
    :try_start_0
    iget v3, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->blockSize:I

    if-ge v2, v3, :cond_0

    .line 476
    iget-object v3, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->in:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->block:[B

    iget v5, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->blockSize:I

    sub-int/2addr v5, v2

    invoke-virtual {v3, v4, v2, v5}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 477
    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    .line 485
    :cond_0
    :goto_1
    iget v3, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->blockSize:I

    if-ge v2, v3, :cond_1

    .line 486
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->status:I

    .line 489
    .end local v0           #count:I
    :cond_1
    return v2

    .line 480
    .restart local v0       #count:I
    :cond_2
    add-int/2addr v2, v0

    goto :goto_0

    .line 482
    :catch_0
    move-exception v1

    .line 483
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private readByte()I
    .locals 2

    .prologue
    .line 297
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->gifData:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->in:Ljava/io/InputStream;

    .line 298
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->gifData:[B

    .line 299
    invoke-direct {p0}, Lcom/android/systemui/statusbar/holiday/GifDecoder;->readStream()I

    move-result v0

    return v0
.end method

.method private readColorTable(I)[I
    .locals 14
    .parameter "ncolors"

    .prologue
    .line 493
    mul-int/lit8 v9, p1, 0x3

    .line 494
    .local v9, nbytes:I
    const/4 v11, 0x0

    .line 495
    .local v11, tab:[I
    new-array v1, v9, [B

    .line 496
    .local v1, c:[B
    const/4 v8, 0x0

    .line 498
    .local v8, n:I
    :try_start_0
    iget-object v12, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->in:Ljava/io/InputStream;

    invoke-virtual {v12, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 502
    :goto_0
    if-ge v8, v9, :cond_1

    .line 503
    const/4 v12, 0x1

    iput v12, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->status:I

    .line 515
    :cond_0
    return-object v11

    .line 499
    :catch_0
    move-exception v2

    .line 500
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 505
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    const/16 v12, 0x100

    new-array v11, v12, [I

    .line 506
    const/4 v4, 0x0

    .line 507
    .local v4, i:I
    const/4 v6, 0x0

    .local v6, j:I
    move v7, v6

    .end local v6           #j:I
    .local v7, j:I
    move v5, v4

    .line 508
    .end local v4           #i:I
    .local v5, i:I
    :goto_1
    if-ge v5, p1, :cond_0

    .line 509
    add-int/lit8 v6, v7, 0x1

    .end local v7           #j:I
    .restart local v6       #j:I
    aget-byte v12, v1, v7

    and-int/lit16 v10, v12, 0xff

    .line 510
    .local v10, r:I
    add-int/lit8 v7, v6, 0x1

    .end local v6           #j:I
    .restart local v7       #j:I
    aget-byte v12, v1, v6

    and-int/lit16 v3, v12, 0xff

    .line 511
    .local v3, g:I
    add-int/lit8 v6, v7, 0x1

    .end local v7           #j:I
    .restart local v6       #j:I
    aget-byte v12, v1, v7

    and-int/lit16 v0, v12, 0xff

    .line 512
    .local v0, b:I
    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    const/high16 v12, -0x100

    shl-int/lit8 v13, v10, 0x10

    or-int/2addr v12, v13

    shl-int/lit8 v13, v3, 0x8

    or-int/2addr v12, v13

    or-int/2addr v12, v0

    aput v12, v11, v5

    move v7, v6

    .end local v6           #j:I
    .restart local v7       #j:I
    move v5, v4

    .line 513
    .end local v4           #i:I
    .restart local v5       #i:I
    goto :goto_1
.end method

.method private readContents()V
    .locals 6

    .prologue
    .line 520
    const/4 v2, 0x0

    .line 521
    .local v2, done:Z
    :goto_0
    :sswitch_0
    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/holiday/GifDecoder;->err()Z

    move-result v4

    if-nez v4, :cond_2

    .line 522
    invoke-direct {p0}, Lcom/android/systemui/statusbar/holiday/GifDecoder;->read()I

    move-result v1

    .line 523
    .local v1, code:I
    sparse-switch v1, :sswitch_data_0

    .line 555
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->status:I

    goto :goto_0

    .line 525
    :sswitch_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/holiday/GifDecoder;->readImage()V

    goto :goto_0

    .line 528
    :sswitch_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/holiday/GifDecoder;->read()I

    move-result v1

    .line 529
    sparse-switch v1, :sswitch_data_1

    .line 546
    invoke-direct {p0}, Lcom/android/systemui/statusbar/holiday/GifDecoder;->skip()V

    goto :goto_0

    .line 531
    :sswitch_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/holiday/GifDecoder;->readGraphicControlExt()V

    goto :goto_0

    .line 534
    :sswitch_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/holiday/GifDecoder;->readBlock()I

    .line 535
    const-string v0, ""

    .line 536
    .local v0, app:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    const/16 v4, 0xb

    if-ge v3, v4, :cond_0

    .line 537
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->block:[B

    aget-byte v5, v5, v3

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 536
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 539
    :cond_0
    const-string v4, "NETSCAPE2.0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 540
    invoke-direct {p0}, Lcom/android/systemui/statusbar/holiday/GifDecoder;->readNetscapeExt()V

    goto :goto_0

    .line 542
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/holiday/GifDecoder;->skip()V

    goto :goto_0

    .line 550
    .end local v0           #app:Ljava/lang/String;
    .end local v3           #i:I
    :sswitch_5
    const/4 v2, 0x1

    .line 551
    goto :goto_0

    .line 558
    .end local v1           #code:I
    :cond_2
    return-void

    .line 523
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x21 -> :sswitch_2
        0x2c -> :sswitch_1
        0x3b -> :sswitch_5
    .end sparse-switch

    .line 529
    :sswitch_data_1
    .sparse-switch
        0xf9 -> :sswitch_3
        0xff -> :sswitch_4
    .end sparse-switch
.end method

.method private readGraphicControlExt()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 561
    invoke-direct {p0}, Lcom/android/systemui/statusbar/holiday/GifDecoder;->read()I

    .line 562
    invoke-direct {p0}, Lcom/android/systemui/statusbar/holiday/GifDecoder;->read()I

    move-result v0

    .line 563
    .local v0, packed:I
    and-int/lit8 v2, v0, 0x1c

    shr-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->dispose:I

    .line 564
    iget v2, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->dispose:I

    if-nez v2, :cond_0

    .line 565
    iput v1, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->dispose:I

    .line 567
    :cond_0
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->transparency:Z

    .line 568
    invoke-direct {p0}, Lcom/android/systemui/statusbar/holiday/GifDecoder;->readShort()I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->delay:I

    .line 569
    invoke-direct {p0}, Lcom/android/systemui/statusbar/holiday/GifDecoder;->read()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->transIndex:I

    .line 570
    invoke-direct {p0}, Lcom/android/systemui/statusbar/holiday/GifDecoder;->read()I

    .line 571
    return-void

    .line 567
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private readHeader()V
    .locals 4

    .prologue
    .line 574
    const-string v1, ""

    .line 575
    .local v1, id:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    .line 576
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/holiday/GifDecoder;->read()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 575
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 578
    :cond_0
    const-string v2, "GIF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 579
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->status:I

    .line 587
    :cond_1
    :goto_1
    return-void

    .line 582
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/holiday/GifDecoder;->readLSD()V

    .line 583
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->gctFlag:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/holiday/GifDecoder;->err()Z

    move-result v2

    if-nez v2, :cond_1

    .line 584
    iget v2, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->gctSize:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/holiday/GifDecoder;->readColorTable(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->gct:[I

    .line 585
    iget-object v2, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->gct:[I

    iget v3, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->bgIndex:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->bgColor:I

    goto :goto_1
.end method

.method private readImage()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 590
    invoke-direct {p0}, Lcom/android/systemui/statusbar/holiday/GifDecoder;->readShort()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->ix:I

    .line 591
    invoke-direct {p0}, Lcom/android/systemui/statusbar/holiday/GifDecoder;->readShort()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->iy:I

    .line 592
    invoke-direct {p0}, Lcom/android/systemui/statusbar/holiday/GifDecoder;->readShort()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->iw:I

    .line 593
    invoke-direct {p0}, Lcom/android/systemui/statusbar/holiday/GifDecoder;->readShort()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->ih:I

    .line 594
    invoke-direct {p0}, Lcom/android/systemui/statusbar/holiday/GifDecoder;->read()I

    move-result v1

    .line 595
    .local v1, packed:I
    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_4

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->lctFlag:Z

    .line 596
    and-int/lit8 v3, v1, 0x40

    if-eqz v3, :cond_5

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->interlace:Z

    .line 599
    const/4 v3, 0x2

    and-int/lit8 v6, v1, 0x7

    shl-int/2addr v3, v6

    iput v3, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->lctSize:I

    .line 600
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->lctFlag:Z

    if-eqz v3, :cond_6

    .line 601
    iget v3, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->lctSize:I

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/holiday/GifDecoder;->readColorTable(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->lct:[I

    .line 602
    iget-object v3, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->lct:[I

    iput-object v3, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->act:[I

    .line 609
    :cond_0
    :goto_2
    const/4 v2, 0x0

    .line 610
    .local v2, save:I
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->transparency:Z

    if-eqz v3, :cond_1

    .line 611
    iget-object v3, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->act:[I

    iget v6, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->transIndex:I

    aget v2, v3, v6

    .line 612
    iget-object v3, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->act:[I

    iget v6, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->transIndex:I

    aput v5, v3, v6

    .line 614
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->act:[I

    if-nez v3, :cond_2

    .line 615
    iput v4, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->status:I

    .line 617
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/holiday/GifDecoder;->err()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 647
    :cond_3
    :goto_3
    return-void

    .end local v2           #save:I
    :cond_4
    move v3, v5

    .line 595
    goto :goto_0

    :cond_5
    move v3, v5

    .line 596
    goto :goto_1

    .line 604
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->gct:[I

    iput-object v3, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->act:[I

    .line 605
    iget v3, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->bgIndex:I

    iget v6, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->transIndex:I

    if-ne v3, v6, :cond_0

    .line 606
    iput v5, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->bgColor:I

    goto :goto_2

    .line 620
    .restart local v2       #save:I
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/holiday/GifDecoder;->decodeImageData()V

    .line 621
    invoke-direct {p0}, Lcom/android/systemui/statusbar/holiday/GifDecoder;->skip()V

    .line 622
    invoke-direct {p0}, Lcom/android/systemui/statusbar/holiday/GifDecoder;->err()Z

    move-result v3

    if-nez v3, :cond_3

    .line 625
    iget v3, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->frameCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->frameCount:I

    .line 627
    iget v3, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->width:I

    iget v5, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->height:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->image:Landroid/graphics/Bitmap;

    .line 629
    invoke-direct {p0}, Lcom/android/systemui/statusbar/holiday/GifDecoder;->setPixels()V

    .line 630
    iget-object v3, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->gifFrame:Lcom/android/systemui/statusbar/holiday/GifFrame;

    if-nez v3, :cond_9

    .line 631
    new-instance v3, Lcom/android/systemui/statusbar/holiday/GifFrame;

    iget-object v5, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->image:Landroid/graphics/Bitmap;

    iget v6, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->delay:I

    invoke-direct {v3, v5, v6}, Lcom/android/systemui/statusbar/holiday/GifFrame;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->gifFrame:Lcom/android/systemui/statusbar/holiday/GifFrame;

    .line 632
    iget-object v3, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->gifFrame:Lcom/android/systemui/statusbar/holiday/GifFrame;

    iput-object v3, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->currentFrame:Lcom/android/systemui/statusbar/holiday/GifFrame;

    .line 642
    :goto_4
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->transparency:Z

    if-eqz v3, :cond_8

    .line 643
    iget-object v3, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->act:[I

    iget v5, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->transIndex:I

    aput v2, v3, v5

    .line 645
    :cond_8
    invoke-direct {p0}, Lcom/android/systemui/statusbar/holiday/GifDecoder;->resetFrame()V

    .line 646
    iget-object v3, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->action:Lcom/android/systemui/statusbar/holiday/GifAction;

    iget v5, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->frameCount:I

    invoke-interface {v3, v4, v5}, Lcom/android/systemui/statusbar/holiday/GifAction;->parseOk(ZI)V

    goto :goto_3

    .line 634
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->gifFrame:Lcom/android/systemui/statusbar/holiday/GifFrame;

    .line 635
    .local v0, f:Lcom/android/systemui/statusbar/holiday/GifFrame;
    :goto_5
    iget-object v3, v0, Lcom/android/systemui/statusbar/holiday/GifFrame;->nextFrame:Lcom/android/systemui/statusbar/holiday/GifFrame;

    if-eqz v3, :cond_a

    .line 636
    iget-object v0, v0, Lcom/android/systemui/statusbar/holiday/GifFrame;->nextFrame:Lcom/android/systemui/statusbar/holiday/GifFrame;

    goto :goto_5

    .line 638
    :cond_a
    new-instance v3, Lcom/android/systemui/statusbar/holiday/GifFrame;

    iget-object v5, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->image:Landroid/graphics/Bitmap;

    iget v6, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->delay:I

    invoke-direct {v3, v5, v6}, Lcom/android/systemui/statusbar/holiday/GifFrame;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v3, v0, Lcom/android/systemui/statusbar/holiday/GifFrame;->nextFrame:Lcom/android/systemui/statusbar/holiday/GifFrame;

    goto :goto_4
.end method

.method private readLSD()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 651
    invoke-direct {p0}, Lcom/android/systemui/statusbar/holiday/GifDecoder;->readShort()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->width:I

    .line 652
    invoke-direct {p0}, Lcom/android/systemui/statusbar/holiday/GifDecoder;->readShort()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->height:I

    .line 653
    iget v3, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->width:I

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->height:I

    if-eqz v3, :cond_0

    .line 655
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 656
    .local v0, msg:Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 657
    iget-object v3, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 660
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/holiday/GifDecoder;->read()I

    move-result v1

    .line 661
    .local v1, packed:I
    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_1

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->gctFlag:Z

    .line 664
    const/4 v2, 0x2

    and-int/lit8 v3, v1, 0x7

    shl-int/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->gctSize:I

    .line 665
    invoke-direct {p0}, Lcom/android/systemui/statusbar/holiday/GifDecoder;->read()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->bgIndex:I

    .line 666
    invoke-direct {p0}, Lcom/android/systemui/statusbar/holiday/GifDecoder;->read()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->pixelAspect:I

    .line 667
    return-void

    .line 661
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private readNetscapeExt()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 671
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/holiday/GifDecoder;->readBlock()I

    .line 672
    iget-object v2, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->block:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    if-ne v2, v4, :cond_1

    .line 674
    iget-object v2, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->block:[B

    aget-byte v2, v2, v4

    and-int/lit16 v0, v2, 0xff

    .line 675
    .local v0, b1:I
    iget-object v2, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->block:[B

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    and-int/lit16 v1, v2, 0xff

    .line 676
    .local v1, b2:I
    shl-int/lit8 v2, v1, 0x8

    or-int/2addr v2, v0

    iput v2, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->loopCount:I

    .line 678
    .end local v0           #b1:I
    .end local v1           #b2:I
    :cond_1
    iget v2, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->blockSize:I

    if-lez v2, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/holiday/GifDecoder;->err()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 679
    :cond_2
    return-void
.end method

.method private readShort()I
    .locals 2

    .prologue
    .line 683
    invoke-direct {p0}, Lcom/android/systemui/statusbar/holiday/GifDecoder;->read()I

    move-result v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/holiday/GifDecoder;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method private readStream()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 308
    invoke-direct {p0}, Lcom/android/systemui/statusbar/holiday/GifDecoder;->init()V

    .line 309
    iget-object v1, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->in:Ljava/io/InputStream;

    if-eqz v1, :cond_2

    .line 310
    invoke-direct {p0}, Lcom/android/systemui/statusbar/holiday/GifDecoder;->readHeader()V

    .line 311
    invoke-direct {p0}, Lcom/android/systemui/statusbar/holiday/GifDecoder;->err()Z

    move-result v1

    if-nez v1, :cond_0

    .line 312
    invoke-direct {p0}, Lcom/android/systemui/statusbar/holiday/GifDecoder;->readContents()V

    .line 313
    iget v1, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->frameCount:I

    if-gez v1, :cond_1

    .line 314
    iput v4, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->status:I

    .line 315
    iget-object v1, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->action:Lcom/android/systemui/statusbar/holiday/GifAction;

    invoke-interface {v1, v3, v2}, Lcom/android/systemui/statusbar/holiday/GifAction;->parseOk(ZI)V

    .line 322
    :cond_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :goto_1
    iget v1, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->status:I

    return v1

    .line 317
    :cond_1
    iput v2, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->status:I

    .line 318
    iget-object v1, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->action:Lcom/android/systemui/statusbar/holiday/GifAction;

    invoke-interface {v1, v4, v2}, Lcom/android/systemui/statusbar/holiday/GifAction;->parseOk(ZI)V

    goto :goto_0

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 328
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->status:I

    .line 329
    iget-object v1, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->action:Lcom/android/systemui/statusbar/holiday/GifAction;

    invoke-interface {v1, v3, v2}, Lcom/android/systemui/statusbar/holiday/GifAction;->parseOk(ZI)V

    goto :goto_1
.end method

.method private resetFrame()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 687
    iget v0, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->dispose:I

    iput v0, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->lastDispose:I

    .line 688
    iget v0, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->ix:I

    iput v0, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->lrx:I

    .line 689
    iget v0, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->iy:I

    iput v0, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->lry:I

    .line 690
    iget v0, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->iw:I

    iput v0, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->lrw:I

    .line 691
    iget v0, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->ih:I

    iput v0, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->lrh:I

    .line 692
    iget-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->image:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->lastImage:Landroid/graphics/Bitmap;

    .line 693
    iget v0, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->bgColor:I

    iput v0, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->lastBgColor:I

    .line 694
    iput v1, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->dispose:I

    .line 695
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->transparency:Z

    .line 696
    iput v1, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->delay:I

    .line 697
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->lct:[I

    .line 698
    return-void
.end method

.method private setPixels()V
    .locals 25

    .prologue
    .line 167
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->width:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->height:I

    mul-int/2addr v2, v4

    new-array v3, v2, [I

    .line 169
    .local v3, dest:[I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->lastDispose:I

    if-lez v2, :cond_4

    .line 170
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->lastDispose:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    .line 172
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->frameCount:I

    add-int/lit8 v19, v2, -0x2

    .line 173
    .local v19, n:I
    if-lez v19, :cond_2

    .line 174
    add-int/lit8 v2, v19, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/holiday/GifDecoder;->getFrameImage(I)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->lastImage:Landroid/graphics/Bitmap;

    .line 179
    .end local v19           #n:I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->lastImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    .line 180
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->lastImage:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->width:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->width:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->height:I

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 182
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->lastDispose:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    .line 184
    const/4 v10, 0x0

    .line 185
    .local v10, c:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->transparency:Z

    if-nez v2, :cond_1

    .line 186
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->lastBgColor:I

    .line 188
    :cond_1
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->lrh:I

    if-ge v13, v2, :cond_4

    .line 189
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->lry:I

    add-int/2addr v2, v13

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->width:I

    mul-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->lrx:I

    add-int v20, v2, v4

    .line 190
    .local v20, n1:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->lrw:I

    add-int v21, v20, v2

    .line 191
    .local v21, n2:I
    move/from16 v17, v20

    .local v17, k:I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    .line 192
    aput v10, v3, v17

    .line 191
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 176
    .end local v10           #c:I
    .end local v13           #i:I
    .end local v17           #k:I
    .end local v20           #n1:I
    .end local v21           #n2:I
    .restart local v19       #n:I
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->lastImage:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 188
    .end local v19           #n:I
    .restart local v10       #c:I
    .restart local v13       #i:I
    .restart local v17       #k:I
    .restart local v20       #n1:I
    .restart local v21       #n2:I
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 200
    .end local v10           #c:I
    .end local v13           #i:I
    .end local v17           #k:I
    .end local v20           #n1:I
    .end local v21           #n2:I
    :cond_4
    const/16 v22, 0x1

    .line 201
    .local v22, pass:I
    const/16 v15, 0x8

    .line 202
    .local v15, inc:I
    const/4 v14, 0x0

    .line 203
    .local v14, iline:I
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->ih:I

    if-ge v13, v2, :cond_a

    .line 204
    move/from16 v18, v13

    .line 205
    .local v18, line:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->interlace:Z

    if-eqz v2, :cond_6

    .line 206
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->ih:I

    if-lt v14, v2, :cond_5

    .line 207
    add-int/lit8 v22, v22, 0x1

    .line 208
    packed-switch v22, :pswitch_data_0

    .line 221
    :cond_5
    :goto_4
    move/from16 v18, v14

    .line 222
    add-int/2addr v14, v15

    .line 224
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->iy:I

    add-int v18, v18, v2

    .line 225
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->height:I

    move/from16 v0, v18

    if-ge v0, v2, :cond_9

    .line 226
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->width:I

    mul-int v17, v18, v2

    .line 227
    .restart local v17       #k:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->ix:I

    add-int v12, v17, v2

    .line 228
    .local v12, dx:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->iw:I

    add-int v11, v12, v2

    .line 229
    .local v11, dlim:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->width:I

    add-int v2, v2, v17

    if-ge v2, v11, :cond_7

    .line 230
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->width:I

    add-int v11, v17, v2

    .line 232
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->iw:I

    mul-int v23, v13, v2

    .local v23, sx:I
    move/from16 v24, v23

    .line 233
    .end local v23           #sx:I
    .local v24, sx:I
    :goto_5
    if-ge v12, v11, :cond_9

    .line 235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->pixels:[B

    add-int/lit8 v23, v24, 0x1

    .end local v24           #sx:I
    .restart local v23       #sx:I
    aget-byte v2, v2, v24

    and-int/lit16 v0, v2, 0xff

    move/from16 v16, v0

    .line 236
    .local v16, index:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->act:[I

    aget v10, v2, v16

    .line 237
    .restart local v10       #c:I
    if-eqz v10, :cond_8

    .line 238
    aput v10, v3, v12

    .line 240
    :cond_8
    add-int/lit8 v12, v12, 0x1

    move/from16 v24, v23

    .line 241
    .end local v23           #sx:I
    .restart local v24       #sx:I
    goto :goto_5

    .line 210
    .end local v10           #c:I
    .end local v11           #dlim:I
    .end local v12           #dx:I
    .end local v16           #index:I
    .end local v17           #k:I
    .end local v24           #sx:I
    :pswitch_0
    const/4 v14, 0x4

    .line 211
    goto :goto_4

    .line 213
    :pswitch_1
    const/4 v14, 0x2

    .line 214
    const/4 v15, 0x4

    .line 215
    goto :goto_4

    .line 217
    :pswitch_2
    const/4 v14, 0x1

    .line 218
    const/4 v15, 0x2

    goto :goto_4

    .line 203
    :cond_9
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 244
    .end local v18           #line:I
    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->width:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->height:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4, v5}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->image:Landroid/graphics/Bitmap;

    .line 245
    return-void

    .line 208
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private skip()V
    .locals 1

    .prologue
    .line 705
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/holiday/GifDecoder;->readBlock()I

    .line 706
    iget v0, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->blockSize:I

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/holiday/GifDecoder;->err()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 707
    :cond_1
    return-void
.end method


# virtual methods
.method public free()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 105
    iget-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->gifFrame:Lcom/android/systemui/statusbar/holiday/GifFrame;

    .line 106
    .local v0, fg:Lcom/android/systemui/statusbar/holiday/GifFrame;
    :goto_0
    if-eqz v0, :cond_1

    .line 107
    iget-object v1, v0, Lcom/android/systemui/statusbar/holiday/GifFrame;->image:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/systemui/statusbar/holiday/GifFrame;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/systemui/statusbar/holiday/GifFrame;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 108
    :cond_0
    iput-object v2, v0, Lcom/android/systemui/statusbar/holiday/GifFrame;->image:Landroid/graphics/Bitmap;

    .line 109
    const/4 v0, 0x0

    .line 110
    iget-object v1, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->gifFrame:Lcom/android/systemui/statusbar/holiday/GifFrame;

    iget-object v1, v1, Lcom/android/systemui/statusbar/holiday/GifFrame;->nextFrame:Lcom/android/systemui/statusbar/holiday/GifFrame;

    iput-object v1, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->gifFrame:Lcom/android/systemui/statusbar/holiday/GifFrame;

    .line 111
    iget-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->gifFrame:Lcom/android/systemui/statusbar/holiday/GifFrame;

    goto :goto_0

    .line 113
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->in:Ljava/io/InputStream;

    if-eqz v1, :cond_2

    .line 115
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_1
    iput-object v2, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->in:Ljava/io/InputStream;

    .line 119
    :cond_2
    iput-object v2, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->gifData:[B

    .line 120
    return-void

    .line 116
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public getCurrentFrame()Lcom/android/systemui/statusbar/holiday/GifFrame;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->currentFrame:Lcom/android/systemui/statusbar/holiday/GifFrame;

    return-object v0
.end method

.method public getDelay(I)I
    .locals 2
    .parameter "n"

    .prologue
    .line 131
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->delay:I

    .line 132
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->frameCount:I

    if-ge p1, v1, :cond_0

    .line 134
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/holiday/GifDecoder;->getFrame(I)Lcom/android/systemui/statusbar/holiday/GifFrame;

    move-result-object v0

    .line 135
    .local v0, f:Lcom/android/systemui/statusbar/holiday/GifFrame;
    if-eqz v0, :cond_0

    .line 136
    iget v1, v0, Lcom/android/systemui/statusbar/holiday/GifFrame;->delay:I

    iput v1, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->delay:I

    .line 138
    .end local v0           #f:Lcom/android/systemui/statusbar/holiday/GifFrame;
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->delay:I

    return v1
.end method

.method public getDelays()[I
    .locals 4

    .prologue
    .line 142
    iget-object v1, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->gifFrame:Lcom/android/systemui/statusbar/holiday/GifFrame;

    .line 143
    .local v1, f:Lcom/android/systemui/statusbar/holiday/GifFrame;
    iget v3, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->frameCount:I

    new-array v0, v3, [I

    .line 144
    .local v0, d:[I
    const/4 v2, 0x0

    .line 145
    .local v2, i:I
    :goto_0
    if-eqz v1, :cond_0

    iget v3, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->frameCount:I

    if-ge v2, v3, :cond_0

    .line 146
    iget v3, v1, Lcom/android/systemui/statusbar/holiday/GifFrame;->delay:I

    aput v3, v0, v2

    .line 147
    iget-object v1, v1, Lcom/android/systemui/statusbar/holiday/GifFrame;->nextFrame:Lcom/android/systemui/statusbar/holiday/GifFrame;

    .line 148
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 150
    :cond_0
    return-object v0
.end method

.method public getFrame(I)Lcom/android/systemui/statusbar/holiday/GifFrame;
    .locals 2
    .parameter "n"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->gifFrame:Lcom/android/systemui/statusbar/holiday/GifFrame;

    .line 261
    .local v0, frame:Lcom/android/systemui/statusbar/holiday/GifFrame;
    const/4 v1, 0x0

    .line 262
    .local v1, i:I
    :goto_0
    if-eqz v0, :cond_1

    .line 263
    if-ne v1, p1, :cond_0

    .line 270
    .end local v0           #frame:Lcom/android/systemui/statusbar/holiday/GifFrame;
    :goto_1
    return-object v0

    .line 266
    .restart local v0       #frame:Lcom/android/systemui/statusbar/holiday/GifFrame;
    :cond_0
    iget-object v0, v0, Lcom/android/systemui/statusbar/holiday/GifFrame;->nextFrame:Lcom/android/systemui/statusbar/holiday/GifFrame;

    .line 268
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 270
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getFrameCount()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->frameCount:I

    return v0
.end method

.method public getFrameImage(I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "n"

    .prologue
    .line 248
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/holiday/GifDecoder;->getFrame(I)Lcom/android/systemui/statusbar/holiday/GifFrame;

    move-result-object v0

    .line 249
    .local v0, frame:Lcom/android/systemui/statusbar/holiday/GifFrame;
    if-nez v0, :cond_0

    .line 250
    const/4 v1, 0x0

    .line 252
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/statusbar/holiday/GifFrame;->image:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/holiday/GifDecoder;->getFrameImage(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getLoopCount()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->loopCount:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->status:I

    return v0
.end method

.method public next()Lcom/android/systemui/statusbar/holiday/GifFrame;
    .locals 1

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->isShow:Z

    if-nez v0, :cond_0

    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->isShow:Z

    .line 280
    iget-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->gifFrame:Lcom/android/systemui/statusbar/holiday/GifFrame;

    .line 292
    :goto_0
    return-object v0

    .line 282
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->status:I

    if-nez v0, :cond_2

    .line 283
    iget-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->currentFrame:Lcom/android/systemui/statusbar/holiday/GifFrame;

    iget-object v0, v0, Lcom/android/systemui/statusbar/holiday/GifFrame;->nextFrame:Lcom/android/systemui/statusbar/holiday/GifFrame;

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->currentFrame:Lcom/android/systemui/statusbar/holiday/GifFrame;

    iget-object v0, v0, Lcom/android/systemui/statusbar/holiday/GifFrame;->nextFrame:Lcom/android/systemui/statusbar/holiday/GifFrame;

    iput-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->currentFrame:Lcom/android/systemui/statusbar/holiday/GifFrame;

    .line 292
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->currentFrame:Lcom/android/systemui/statusbar/holiday/GifFrame;

    goto :goto_0

    .line 287
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->currentFrame:Lcom/android/systemui/statusbar/holiday/GifFrame;

    iget-object v0, v0, Lcom/android/systemui/statusbar/holiday/GifFrame;->nextFrame:Lcom/android/systemui/statusbar/holiday/GifFrame;

    iput-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->currentFrame:Lcom/android/systemui/statusbar/holiday/GifFrame;

    .line 288
    iget-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->currentFrame:Lcom/android/systemui/statusbar/holiday/GifFrame;

    if-nez v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->gifFrame:Lcom/android/systemui/statusbar/holiday/GifFrame;

    iput-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->currentFrame:Lcom/android/systemui/statusbar/holiday/GifFrame;

    goto :goto_1
.end method

.method public parseOk()Z
    .locals 2

    .prologue
    .line 127
    iget v0, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->status:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->gifFrame:Lcom/android/systemui/statusbar/holiday/GifFrame;

    iput-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->currentFrame:Lcom/android/systemui/statusbar/holiday/GifFrame;

    .line 275
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 98
    invoke-direct {p0}, Lcom/android/systemui/statusbar/holiday/GifDecoder;->readStream()I

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifDecoder;->gifData:[B

    if-eqz v0, :cond_0

    .line 100
    invoke-direct {p0}, Lcom/android/systemui/statusbar/holiday/GifDecoder;->readByte()I

    goto :goto_0
.end method
