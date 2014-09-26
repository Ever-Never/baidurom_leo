.class public Lcom/baidu/bulletin/ui/screen/Screen;
.super Ljava/lang/Object;
.source "Screen.java"

# interfaces
.implements Lcom/baidu/bulletin/ui/screen/IScreen;


# static fields
.field private static sDefaultScreen:Lcom/baidu/bulletin/ui/screen/Screen;


# instance fields
.field private mDPIType:I

.field private mHeight:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/bulletin/ui/screen/Screen;->sDefaultScreen:Lcom/baidu/bulletin/ui/screen/Screen;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static getInstance()Lcom/baidu/bulletin/ui/screen/Screen;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/baidu/bulletin/ui/screen/Screen;->sDefaultScreen:Lcom/baidu/bulletin/ui/screen/Screen;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/baidu/bulletin/ui/screen/Screen;

    invoke-direct {v0}, Lcom/baidu/bulletin/ui/screen/Screen;-><init>()V

    sput-object v0, Lcom/baidu/bulletin/ui/screen/Screen;->sDefaultScreen:Lcom/baidu/bulletin/ui/screen/Screen;

    .line 18
    :cond_0
    sget-object v0, Lcom/baidu/bulletin/ui/screen/Screen;->sDefaultScreen:Lcom/baidu/bulletin/ui/screen/Screen;

    return-object v0
.end method


# virtual methods
.method public getDPI()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/baidu/bulletin/ui/screen/Screen;->mDPIType:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/baidu/bulletin/ui/screen/Screen;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/baidu/bulletin/ui/screen/Screen;->mWidth:I

    return v0
.end method

.method public initialize(Landroid/app/Activity;)V
    .locals 5
    .parameter "activity"

    .prologue
    const/16 v4, 0xf0

    const/16 v3, 0xa0

    const/16 v2, 0x78

    .line 32
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 33
    .local v0, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 36
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    if-gt v1, v2, :cond_1

    .line 37
    const/4 v1, 0x0

    iput v1, p0, Lcom/baidu/bulletin/ui/screen/Screen;->mDPIType:I

    .line 48
    :cond_0
    :goto_0
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/baidu/bulletin/ui/screen/Screen;->mWidth:I

    .line 49
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/baidu/bulletin/ui/screen/Screen;->mHeight:I

    .line 50
    return-void

    .line 38
    :cond_1
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    if-le v1, v2, :cond_2

    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    if-gt v1, v3, :cond_2

    .line 40
    const/4 v1, 0x1

    iput v1, p0, Lcom/baidu/bulletin/ui/screen/Screen;->mDPIType:I

    goto :goto_0

    .line 41
    :cond_2
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    if-le v1, v3, :cond_3

    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    if-gt v1, v4, :cond_3

    .line 43
    const/4 v1, 0x2

    iput v1, p0, Lcom/baidu/bulletin/ui/screen/Screen;->mDPIType:I

    goto :goto_0

    .line 44
    :cond_3
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    if-le v1, v4, :cond_0

    .line 45
    const/4 v1, 0x3

    iput v1, p0, Lcom/baidu/bulletin/ui/screen/Screen;->mDPIType:I

    goto :goto_0
.end method
