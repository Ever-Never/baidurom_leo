.class public Lcom/android/systemui/statusbar/holiday/GifView;
.super Landroid/view/View;
.source "GifView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/holiday/GifAction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/holiday/GifView$3;,
        Lcom/android/systemui/statusbar/holiday/GifView$DrawThread;,
        Lcom/android/systemui/statusbar/holiday/GifView$HolidayVersion;,
        Lcom/android/systemui/statusbar/holiday/GifView$Service;,
        Lcom/android/systemui/statusbar/holiday/GifView$GifImageType;
    }
.end annotation


# static fields
.field private static final HTTP_OKAY:I = 0xc8

.field private static final HTTP_RESOURCE_MISS:I = 0x194

.field private static final HTTP_RESOURCE_NO_UPDATE:I = 0x130

.field private static final HTTP_RESOURCE_REDIRECT:I = 0x12e

.field private static final SYSTEMUI_PREFERENCE_NAME:Ljava/lang/String; = "com.android.systemui_preferences"

.field private static final SYSTEM_BAR_HOLIDAY_VERSION:Ljava/lang/String; = "holiday_version"

.field private static final holidayPath:Ljava/lang/String; = "holiday.gif"

.field private static final holidayVersionPath:Ljava/lang/String; = "holidayVersion"


# instance fields
.field private animationType:Lcom/android/systemui/statusbar/holiday/GifView$GifImageType;

.field private currentImage:Landroid/graphics/Bitmap;

.field private drawThread:Lcom/android/systemui/statusbar/holiday/GifView$DrawThread;

.field private gifDecoder:Lcom/android/systemui/statusbar/holiday/GifDecoder;

.field private holidayVision:Lcom/android/systemui/statusbar/holiday/GifView$HolidayVersion;

.field private isPlay:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLoop:I

.field private oa:Landroid/animation/ObjectAnimator;

.field private pause:Z

.field private rect:Landroid/graphics/Rect;

.field private redrawHandler:Landroid/os/Handler;

.field private showHeight:I

.field private showWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 104
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 39
    iput-object v1, p0, Lcom/android/systemui/statusbar/holiday/GifView;->gifDecoder:Lcom/android/systemui/statusbar/holiday/GifDecoder;

    .line 40
    iput-object v1, p0, Lcom/android/systemui/statusbar/holiday/GifView;->currentImage:Landroid/graphics/Bitmap;

    .line 43
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/holiday/GifView;->pause:Z

    .line 44
    iput v0, p0, Lcom/android/systemui/statusbar/holiday/GifView;->mLoop:I

    .line 46
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/holiday/GifView;->isPlay:Z

    .line 48
    iput v0, p0, Lcom/android/systemui/statusbar/holiday/GifView;->showWidth:I

    .line 49
    iput v0, p0, Lcom/android/systemui/statusbar/holiday/GifView;->showHeight:I

    .line 50
    iput-object v1, p0, Lcom/android/systemui/statusbar/holiday/GifView;->rect:Landroid/graphics/Rect;

    .line 52
    iput-object v1, p0, Lcom/android/systemui/statusbar/holiday/GifView;->drawThread:Lcom/android/systemui/statusbar/holiday/GifView$DrawThread;

    .line 64
    new-instance v0, Lcom/android/systemui/statusbar/holiday/GifView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/holiday/GifView$1;-><init>(Lcom/android/systemui/statusbar/holiday/GifView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifView;->mHandler:Landroid/os/Handler;

    .line 91
    sget-object v0, Lcom/android/systemui/statusbar/holiday/GifView$GifImageType;->WAIT_FINISH:Lcom/android/systemui/statusbar/holiday/GifView$GifImageType;

    iput-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifView;->animationType:Lcom/android/systemui/statusbar/holiday/GifView$GifImageType;

    .line 268
    new-instance v0, Lcom/android/systemui/statusbar/holiday/GifView$HolidayVersion;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/holiday/GifView$HolidayVersion;-><init>(Lcom/android/systemui/statusbar/holiday/GifView;Lcom/android/systemui/statusbar/holiday/GifView$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifView;->holidayVision:Lcom/android/systemui/statusbar/holiday/GifView$HolidayVersion;

    .line 501
    new-instance v0, Lcom/android/systemui/statusbar/holiday/GifView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/holiday/GifView$2;-><init>(Lcom/android/systemui/statusbar/holiday/GifView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifView;->redrawHandler:Landroid/os/Handler;

    .line 105
    iput-object p1, p0, Lcom/android/systemui/statusbar/holiday/GifView;->mContext:Landroid/content/Context;

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/holiday/GifView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 110
    iput-object p1, p0, Lcom/android/systemui/statusbar/holiday/GifView;->mContext:Landroid/content/Context;

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 114
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    iput-object v1, p0, Lcom/android/systemui/statusbar/holiday/GifView;->gifDecoder:Lcom/android/systemui/statusbar/holiday/GifDecoder;

    .line 40
    iput-object v1, p0, Lcom/android/systemui/statusbar/holiday/GifView;->currentImage:Landroid/graphics/Bitmap;

    .line 43
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/holiday/GifView;->pause:Z

    .line 44
    iput v0, p0, Lcom/android/systemui/statusbar/holiday/GifView;->mLoop:I

    .line 46
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/holiday/GifView;->isPlay:Z

    .line 48
    iput v0, p0, Lcom/android/systemui/statusbar/holiday/GifView;->showWidth:I

    .line 49
    iput v0, p0, Lcom/android/systemui/statusbar/holiday/GifView;->showHeight:I

    .line 50
    iput-object v1, p0, Lcom/android/systemui/statusbar/holiday/GifView;->rect:Landroid/graphics/Rect;

    .line 52
    iput-object v1, p0, Lcom/android/systemui/statusbar/holiday/GifView;->drawThread:Lcom/android/systemui/statusbar/holiday/GifView$DrawThread;

    .line 64
    new-instance v0, Lcom/android/systemui/statusbar/holiday/GifView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/holiday/GifView$1;-><init>(Lcom/android/systemui/statusbar/holiday/GifView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifView;->mHandler:Landroid/os/Handler;

    .line 91
    sget-object v0, Lcom/android/systemui/statusbar/holiday/GifView$GifImageType;->WAIT_FINISH:Lcom/android/systemui/statusbar/holiday/GifView$GifImageType;

    iput-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifView;->animationType:Lcom/android/systemui/statusbar/holiday/GifView$GifImageType;

    .line 268
    new-instance v0, Lcom/android/systemui/statusbar/holiday/GifView$HolidayVersion;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/holiday/GifView$HolidayVersion;-><init>(Lcom/android/systemui/statusbar/holiday/GifView;Lcom/android/systemui/statusbar/holiday/GifView$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifView;->holidayVision:Lcom/android/systemui/statusbar/holiday/GifView$HolidayVersion;

    .line 501
    new-instance v0, Lcom/android/systemui/statusbar/holiday/GifView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/holiday/GifView$2;-><init>(Lcom/android/systemui/statusbar/holiday/GifView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifView;->redrawHandler:Landroid/os/Handler;

    .line 115
    iput-object p1, p0, Lcom/android/systemui/statusbar/holiday/GifView;->mContext:Landroid/content/Context;

    .line 117
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/holiday/GifView;Lcom/android/systemui/statusbar/holiday/GifView$DrawThread;)Lcom/android/systemui/statusbar/holiday/GifView$DrawThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/systemui/statusbar/holiday/GifView;->drawThread:Lcom/android/systemui/statusbar/holiday/GifView$DrawThread;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/holiday/GifView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/android/systemui/statusbar/holiday/GifView;->mLoop:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/holiday/GifView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/holiday/GifView;->isPlay:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/holiday/GifView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/holiday/GifView;->pause:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/holiday/GifView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifView;->currentImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/systemui/statusbar/holiday/GifView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/systemui/statusbar/holiday/GifView;->currentImage:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/holiday/GifView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifView;->redrawHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/holiday/GifView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/holiday/GifView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/holiday/GifView;)Lcom/android/systemui/statusbar/holiday/GifView$HolidayVersion;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifView;->holidayVision:Lcom/android/systemui/statusbar/holiday/GifView$HolidayVersion;

    return-object v0
.end method

.method static synthetic access$500(I)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-static {p0}, Lcom/android/systemui/statusbar/holiday/GifView;->getWeek(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/holiday/GifView;[B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/holiday/GifView;->setGifDecoderImage([B)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/holiday/GifView;)Lcom/android/systemui/statusbar/holiday/GifDecoder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifView;->gifDecoder:Lcom/android/systemui/statusbar/holiday/GifDecoder;

    return-object v0
.end method

.method private static getWeek(I)Ljava/lang/String;
    .locals 1
    .parameter "day"

    .prologue
    .line 271
    const-string v0, ""

    .line 272
    .local v0, revalue:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 296
    const-string v0, ""

    .line 299
    :goto_0
    return-object v0

    .line 274
    :pswitch_0
    const-string v0, "Sun"

    .line 275
    goto :goto_0

    .line 277
    :pswitch_1
    const-string v0, "Mon"

    .line 278
    goto :goto_0

    .line 280
    :pswitch_2
    const-string v0, " Tue"

    .line 281
    goto :goto_0

    .line 283
    :pswitch_3
    const-string v0, "Wed"

    .line 284
    goto :goto_0

    .line 286
    :pswitch_4
    const-string v0, "Thu"

    .line 287
    goto :goto_0

    .line 289
    :pswitch_5
    const-string v0, "Fri"

    .line 290
    goto :goto_0

    .line 292
    :pswitch_6
    const-string v0, "Sat"

    .line 293
    goto :goto_0

    .line 272
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private reDraw()V
    .locals 2

    .prologue
    .line 495
    iget-object v1, p0, Lcom/android/systemui/statusbar/holiday/GifView;->redrawHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 496
    iget-object v1, p0, Lcom/android/systemui/statusbar/holiday/GifView;->redrawHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 497
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/statusbar/holiday/GifView;->redrawHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 499
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private setGifDecoderImage(Ljava/io/InputStream;)V
    .locals 2
    .parameter "is"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifView;->gifDecoder:Lcom/android/systemui/statusbar/holiday/GifDecoder;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifView;->gifDecoder:Lcom/android/systemui/statusbar/holiday/GifDecoder;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/holiday/GifDecoder;->free()V

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifView;->gifDecoder:Lcom/android/systemui/statusbar/holiday/GifDecoder;

    .line 133
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/holiday/GifDecoder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/holiday/GifView;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p1, p0, v1}, Lcom/android/systemui/statusbar/holiday/GifDecoder;-><init>(Ljava/io/InputStream;Lcom/android/systemui/statusbar/holiday/GifAction;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifView;->gifDecoder:Lcom/android/systemui/statusbar/holiday/GifDecoder;

    .line 134
    iget-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifView;->gifDecoder:Lcom/android/systemui/statusbar/holiday/GifDecoder;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/holiday/GifDecoder;->start()V

    .line 135
    return-void
.end method

.method private setGifDecoderImage([B)V
    .locals 2
    .parameter "gif"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifView;->gifDecoder:Lcom/android/systemui/statusbar/holiday/GifDecoder;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifView;->gifDecoder:Lcom/android/systemui/statusbar/holiday/GifDecoder;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/holiday/GifDecoder;->free()V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifView;->gifDecoder:Lcom/android/systemui/statusbar/holiday/GifDecoder;

    .line 124
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/holiday/GifDecoder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/holiday/GifView;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p1, p0, v1}, Lcom/android/systemui/statusbar/holiday/GifDecoder;-><init>([BLcom/android/systemui/statusbar/holiday/GifAction;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifView;->gifDecoder:Lcom/android/systemui/statusbar/holiday/GifDecoder;

    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifView;->gifDecoder:Lcom/android/systemui/statusbar/holiday/GifDecoder;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/holiday/GifDecoder;->start()V

    .line 126
    return-void
.end method


# virtual methods
.method public getHoliday()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 559
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/holiday/GifView;->isPlay:Z

    if-eqz v1, :cond_0

    .line 575
    :goto_0
    return-void

    .line 563
    :cond_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4024

    mul-double/2addr v3, v5

    double-to-int v1, v3

    rem-int/lit8 v0, v1, 0x5

    .line 565
    .local v0, showTimeCode:I
    const-string v1, "Holiday"

    const/4 v3, 0x3

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 566
    const-string v3, "Holiday"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get holiday"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v0, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :cond_1
    if-nez v0, :cond_3

    .line 570
    iget-object v1, p0, Lcom/android/systemui/statusbar/holiday/GifView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/holiday/GifView;->setGifImage(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 566
    goto :goto_1

    .line 572
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/holiday/GifView;->setHolidayContentVisiable(Z)V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 303
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 304
    iget-object v1, p0, Lcom/android/systemui/statusbar/holiday/GifView;->gifDecoder:Lcom/android/systemui/statusbar/holiday/GifDecoder;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/holiday/GifView;->isPlay:Z

    if-nez v1, :cond_1

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/holiday/GifView;->currentImage:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 307
    iget-object v1, p0, Lcom/android/systemui/statusbar/holiday/GifView;->gifDecoder:Lcom/android/systemui/statusbar/holiday/GifDecoder;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/holiday/GifDecoder;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/holiday/GifView;->currentImage:Landroid/graphics/Bitmap;

    .line 309
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/holiday/GifView;->currentImage:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 312
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    .line 313
    .local v0, saveCount:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 314
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/holiday/GifView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/holiday/GifView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 315
    iget v1, p0, Lcom/android/systemui/statusbar/holiday/GifView;->showWidth:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 316
    iget-object v1, p0, Lcom/android/systemui/statusbar/holiday/GifView;->currentImage:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 320
    :goto_1
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    .line 318
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/holiday/GifView;->currentImage:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/systemui/statusbar/holiday/GifView;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, v3, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 9
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 379
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/holiday/GifView;->getPaddingLeft()I

    move-result v3

    .line 380
    .local v3, pleft:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/holiday/GifView;->getPaddingRight()I

    move-result v4

    .line 381
    .local v4, pright:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/holiday/GifView;->getPaddingTop()I

    move-result v5

    .line 382
    .local v5, ptop:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/holiday/GifView;->getPaddingBottom()I

    move-result v2

    .line 390
    .local v2, pbottom:I
    iget-object v8, p0, Lcom/android/systemui/statusbar/holiday/GifView;->gifDecoder:Lcom/android/systemui/statusbar/holiday/GifDecoder;

    if-nez v8, :cond_0

    .line 391
    const/4 v6, 0x1

    .line 392
    .local v6, w:I
    const/4 v0, 0x1

    .line 398
    .local v0, h:I
    :goto_0
    add-int v8, v3, v4

    add-int/2addr v6, v8

    .line 399
    add-int v8, v5, v2

    add-int/2addr v0, v8

    .line 401
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/holiday/GifView;->getSuggestedMinimumWidth()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 402
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/holiday/GifView;->getSuggestedMinimumHeight()I

    move-result v8

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 404
    invoke-static {v6, p1}, Lcom/android/systemui/statusbar/holiday/GifView;->resolveSize(II)I

    move-result v7

    .line 405
    .local v7, widthSize:I
    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/holiday/GifView;->resolveSize(II)I

    move-result v1

    .line 407
    .local v1, heightSize:I
    invoke-virtual {p0, v7, v1}, Lcom/android/systemui/statusbar/holiday/GifView;->setMeasuredDimension(II)V

    .line 408
    return-void

    .line 394
    .end local v0           #h:I
    .end local v1           #heightSize:I
    .end local v6           #w:I
    .end local v7           #widthSize:I
    :cond_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/holiday/GifView;->gifDecoder:Lcom/android/systemui/statusbar/holiday/GifDecoder;

    iget v6, v8, Lcom/android/systemui/statusbar/holiday/GifDecoder;->width:I

    .line 395
    .restart local v6       #w:I
    iget-object v8, p0, Lcom/android/systemui/statusbar/holiday/GifView;->gifDecoder:Lcom/android/systemui/statusbar/holiday/GifDecoder;

    iget v0, v8, Lcom/android/systemui/statusbar/holiday/GifDecoder;->height:I

    .restart local v0       #h:I
    goto :goto_0
.end method

.method public parseOk(ZI)V
    .locals 6
    .parameter "parseStatus"
    .parameter "frameIndex"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 442
    if-eqz p1, :cond_0

    .line 443
    iget-object v1, p0, Lcom/android/systemui/statusbar/holiday/GifView;->gifDecoder:Lcom/android/systemui/statusbar/holiday/GifDecoder;

    if-eqz v1, :cond_6

    .line 444
    sget-object v1, Lcom/android/systemui/statusbar/holiday/GifView$3;->$SwitchMap$com$android$systemui$statusbar$holiday$GifView$GifImageType:[I

    iget-object v2, p0, Lcom/android/systemui/statusbar/holiday/GifView;->animationType:Lcom/android/systemui/statusbar/holiday/GifView$GifImageType;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/holiday/GifView$GifImageType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 446
    :pswitch_0
    if-ne p2, v4, :cond_0

    .line 447
    iget-object v1, p0, Lcom/android/systemui/statusbar/holiday/GifView;->gifDecoder:Lcom/android/systemui/statusbar/holiday/GifDecoder;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/holiday/GifDecoder;->getFrameCount()I

    move-result v1

    if-le v1, v3, :cond_1

    .line 448
    new-instance v0, Lcom/android/systemui/statusbar/holiday/GifView$DrawThread;

    invoke-direct {v0, p0, v5}, Lcom/android/systemui/statusbar/holiday/GifView$DrawThread;-><init>(Lcom/android/systemui/statusbar/holiday/GifView;Lcom/android/systemui/statusbar/holiday/GifView$1;)V

    .line 449
    .local v0, dt:Lcom/android/systemui/statusbar/holiday/GifView$DrawThread;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/holiday/GifView$DrawThread;->start()V

    .line 450
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/holiday/GifView;->isPlay:Z

    goto :goto_0

    .line 452
    .end local v0           #dt:Lcom/android/systemui/statusbar/holiday/GifView$DrawThread;
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/holiday/GifView;->reDraw()V

    goto :goto_0

    .line 457
    :pswitch_1
    if-ne p2, v3, :cond_2

    .line 458
    iget-object v1, p0, Lcom/android/systemui/statusbar/holiday/GifView;->gifDecoder:Lcom/android/systemui/statusbar/holiday/GifDecoder;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/holiday/GifDecoder;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/holiday/GifView;->currentImage:Landroid/graphics/Bitmap;

    .line 459
    invoke-direct {p0}, Lcom/android/systemui/statusbar/holiday/GifView;->reDraw()V

    goto :goto_0

    .line 460
    :cond_2
    if-ne p2, v4, :cond_0

    .line 461
    iget-object v1, p0, Lcom/android/systemui/statusbar/holiday/GifView;->gifDecoder:Lcom/android/systemui/statusbar/holiday/GifDecoder;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/holiday/GifDecoder;->getFrameCount()I

    move-result v1

    if-le v1, v3, :cond_3

    .line 462
    iget-object v1, p0, Lcom/android/systemui/statusbar/holiday/GifView;->drawThread:Lcom/android/systemui/statusbar/holiday/GifView$DrawThread;

    if-nez v1, :cond_0

    .line 463
    new-instance v1, Lcom/android/systemui/statusbar/holiday/GifView$DrawThread;

    invoke-direct {v1, p0, v5}, Lcom/android/systemui/statusbar/holiday/GifView$DrawThread;-><init>(Lcom/android/systemui/statusbar/holiday/GifView;Lcom/android/systemui/statusbar/holiday/GifView$1;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/holiday/GifView;->drawThread:Lcom/android/systemui/statusbar/holiday/GifView$DrawThread;

    .line 464
    iget-object v1, p0, Lcom/android/systemui/statusbar/holiday/GifView;->drawThread:Lcom/android/systemui/statusbar/holiday/GifView$DrawThread;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/holiday/GifView$DrawThread;->start()V

    goto :goto_0

    .line 467
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/holiday/GifView;->reDraw()V

    goto :goto_0

    .line 472
    :pswitch_2
    if-ne p2, v3, :cond_4

    .line 473
    iget-object v1, p0, Lcom/android/systemui/statusbar/holiday/GifView;->gifDecoder:Lcom/android/systemui/statusbar/holiday/GifDecoder;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/holiday/GifDecoder;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/holiday/GifView;->currentImage:Landroid/graphics/Bitmap;

    .line 474
    invoke-direct {p0}, Lcom/android/systemui/statusbar/holiday/GifView;->reDraw()V

    goto :goto_0

    .line 475
    :cond_4
    if-ne p2, v4, :cond_5

    .line 476
    invoke-direct {p0}, Lcom/android/systemui/statusbar/holiday/GifView;->reDraw()V

    goto :goto_0

    .line 478
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/holiday/GifView;->drawThread:Lcom/android/systemui/statusbar/holiday/GifView$DrawThread;

    if-nez v1, :cond_0

    .line 479
    new-instance v1, Lcom/android/systemui/statusbar/holiday/GifView$DrawThread;

    invoke-direct {v1, p0, v5}, Lcom/android/systemui/statusbar/holiday/GifView$DrawThread;-><init>(Lcom/android/systemui/statusbar/holiday/GifView;Lcom/android/systemui/statusbar/holiday/GifView$1;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/holiday/GifView;->drawThread:Lcom/android/systemui/statusbar/holiday/GifView$DrawThread;

    .line 480
    iget-object v1, p0, Lcom/android/systemui/statusbar/holiday/GifView;->drawThread:Lcom/android/systemui/statusbar/holiday/GifView$DrawThread;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/holiday/GifView$DrawThread;->start()V

    .line 481
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/holiday/GifView;->isPlay:Z

    goto :goto_0

    .line 488
    :cond_6
    const-string v1, "gif"

    const-string v2, "parse error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 444
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public saveHoliday([B)V
    .locals 6
    .parameter "result"

    .prologue
    .line 350
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/systemui/statusbar/holiday/GifView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "holiday.gif"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 351
    .local v1, file:Ljava/io/File;
    const/4 v2, 0x0

    .line 354
    .local v2, fos:Ljava/io/FileOutputStream;
    if-eqz p1, :cond_0

    :try_start_0
    array-length v4, p1

    if-lez v4, :cond_0

    .line 356
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 358
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .local v3, fos:Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    :try_start_1
    array-length v5, p1

    invoke-virtual {v3, p1, v4, v5}, Ljava/io/FileOutputStream;->write([BII)V

    .line 359
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    move-object v2, v3

    .line 367
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :cond_0
    if-eqz v2, :cond_1

    .line 369
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 376
    :cond_1
    :goto_0
    return-void

    .line 370
    :catch_0
    move-exception v0

    .line 371
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 362
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 363
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 367
    if-eqz v2, :cond_1

    .line 369
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 370
    :catch_2
    move-exception v0

    .line 371
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 364
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 365
    .restart local v0       #e:Ljava/io/IOException;
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 367
    if-eqz v2, :cond_1

    .line 369
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 370
    :catch_4
    move-exception v0

    .line 371
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 367
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v2, :cond_2

    .line 369
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 372
    :cond_2
    :goto_4
    throw v4

    .line 370
    :catch_5
    move-exception v0

    .line 371
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 367
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 364
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 362
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public setGifImage(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/holiday/GifView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 147
    .local v1, r:Landroid/content/res/Resources;
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 148
    .local v0, is:Ljava/io/InputStream;
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/holiday/GifView;->setGifDecoderImage(Ljava/io/InputStream;)V

    .line 149
    return-void
.end method

.method public setGifImage(Ljava/io/InputStream;)V
    .locals 0
    .parameter "is"

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/holiday/GifView;->setGifDecoderImage(Ljava/io/InputStream;)V

    .line 143
    return-void
.end method

.method public setGifImage(Ljava/lang/String;)V
    .locals 3
    .parameter "resPath"

    .prologue
    .line 152
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    new-instance v0, Lcom/android/systemui/statusbar/holiday/GifView$Service;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/holiday/GifView$Service;-><init>(Lcom/android/systemui/statusbar/holiday/GifView;Lcom/android/systemui/statusbar/holiday/GifView$1;)V

    .line 154
    .local v0, service:Lcom/android/systemui/statusbar/holiday/GifView$Service;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/holiday/GifView$Service;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 156
    .end local v0           #service:Lcom/android/systemui/statusbar/holiday/GifView$Service;
    :cond_0
    return-void
.end method

.method public setGifImage([B)V
    .locals 0
    .parameter "gif"

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/holiday/GifView;->setGifDecoderImage([B)V

    .line 139
    return-void
.end method

.method public setGifImageType(Lcom/android/systemui/statusbar/holiday/GifView$GifImageType;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifView;->gifDecoder:Lcom/android/systemui/statusbar/holiday/GifDecoder;

    if-nez v0, :cond_0

    .line 426
    iput-object p1, p0, Lcom/android/systemui/statusbar/holiday/GifView;->animationType:Lcom/android/systemui/statusbar/holiday/GifView$GifImageType;

    .line 427
    :cond_0
    return-void
.end method

.method public setHolidayContentVisiable(Z)V
    .locals 1
    .parameter "isShow"

    .prologue
    .line 551
    if-nez p1, :cond_0

    .line 552
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/holiday/GifView;->setVisibility(I)V

    .line 556
    :goto_0
    return-void

    .line 554
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/holiday/GifView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setLoop(I)V
    .locals 0
    .parameter "l"

    .prologue
    .line 578
    iput p1, p0, Lcom/android/systemui/statusbar/holiday/GifView;->mLoop:I

    .line 579
    return-void
.end method

.method public setShowDimension(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, 0x0

    .line 430
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 431
    iput p1, p0, Lcom/android/systemui/statusbar/holiday/GifView;->showWidth:I

    .line 432
    iput p2, p0, Lcom/android/systemui/statusbar/holiday/GifView;->showHeight:I

    .line 433
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifView;->rect:Landroid/graphics/Rect;

    .line 434
    iget-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifView;->rect:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 435
    iget-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifView;->rect:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 436
    iget-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifView;->rect:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 437
    iget-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifView;->rect:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    .line 439
    :cond_0
    return-void
.end method

.method public showAnimation()V
    .locals 1

    .prologue
    .line 419
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/holiday/GifView;->pause:Z

    if-eqz v0, :cond_0

    .line 420
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/holiday/GifView;->pause:Z

    .line 422
    :cond_0
    return-void
.end method

.method public showCover()V
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifView;->gifDecoder:Lcom/android/systemui/statusbar/holiday/GifDecoder;

    if-nez v0, :cond_0

    .line 416
    :goto_0
    return-void

    .line 413
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/holiday/GifView;->pause:Z

    .line 414
    iget-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifView;->gifDecoder:Lcom/android/systemui/statusbar/holiday/GifDecoder;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/holiday/GifDecoder;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifView;->currentImage:Landroid/graphics/Bitmap;

    .line 415
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/holiday/GifView;->invalidate()V

    goto :goto_0
.end method
