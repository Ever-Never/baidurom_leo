.class public Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;
.super Ljava/lang/Object;
.source "ResourceHolder.java"


# static fields
.field private static mInstance:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;


# instance fields
.field public mBitmapDarkCloud0:Landroid/graphics/Bitmap;

.field public mBitmapDarkCloud1:Landroid/graphics/Bitmap;

.field public mBitmapDarkCloud2:Landroid/graphics/Bitmap;

.field private mBitmapDayDotBig:Landroid/graphics/Bitmap;

.field private mBitmapDayDotMedium:Landroid/graphics/Bitmap;

.field private mBitmapDayDotSmall:Landroid/graphics/Bitmap;

.field private mBitmapNightDotBig:Landroid/graphics/Bitmap;

.field private mBitmapNightDotMedium:Landroid/graphics/Bitmap;

.field private mBitmapNightDotSmall:Landroid/graphics/Bitmap;

.field private mBitmapSnowDotBig:Landroid/graphics/Bitmap;

.field private mBitmapSnowDotMedium:Landroid/graphics/Bitmap;

.field private mBitmapSnowDotSmall:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->mInstance:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "ctx"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v1, "ResourceHolder"

    const-string v2, "init"

    invoke-static {v1, v2}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 39
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f02011c

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->mBitmapDayDotBig:Landroid/graphics/Bitmap;

    .line 40
    const v1, 0x7f02011d

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->mBitmapDayDotMedium:Landroid/graphics/Bitmap;

    .line 41
    const v1, 0x7f02011e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->mBitmapDayDotSmall:Landroid/graphics/Bitmap;

    .line 43
    const v1, 0x7f02011f

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->mBitmapNightDotBig:Landroid/graphics/Bitmap;

    .line 44
    const v1, 0x7f020120

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->mBitmapNightDotMedium:Landroid/graphics/Bitmap;

    .line 45
    const v1, 0x7f020121

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->mBitmapNightDotSmall:Landroid/graphics/Bitmap;

    .line 47
    const v1, 0x7f020122

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->mBitmapSnowDotBig:Landroid/graphics/Bitmap;

    .line 48
    const v1, 0x7f020123

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->mBitmapSnowDotMedium:Landroid/graphics/Bitmap;

    .line 49
    const v1, 0x7f020124

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->mBitmapSnowDotSmall:Landroid/graphics/Bitmap;

    .line 51
    const v1, 0x7f02037b

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->mBitmapDarkCloud0:Landroid/graphics/Bitmap;

    .line 52
    const v1, 0x7f02037c

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->mBitmapDarkCloud1:Landroid/graphics/Bitmap;

    .line 53
    const v1, 0x7f02037d

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->mBitmapDarkCloud2:Landroid/graphics/Bitmap;

    .line 54
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;
    .locals 2
    .parameter "ctx"

    .prologue
    .line 57
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->mInstance:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;

    if-nez v0, :cond_1

    .line 58
    const-class v1, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;

    monitor-enter v1

    .line 59
    :try_start_0
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->mInstance:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->mInstance:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;

    .line 62
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :cond_1
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->mInstance:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;

    return-object v0

    .line 62
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getDayDotBitmapBig()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->mBitmapDayDotBig:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getDayDotBitmapMedium()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->mBitmapDayDotMedium:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getDayDotBitmapSmall()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->mBitmapDayDotSmall:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getNightDotBitmapBig()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->mBitmapNightDotBig:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getNightDotBitmapMedium()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->mBitmapNightDotMedium:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getNightDotBitmapSmall()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->mBitmapNightDotSmall:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getSnowDotBitmapBig()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->mBitmapSnowDotBig:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getSnowDotBitmapMedium()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->mBitmapSnowDotMedium:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getSnowDotBitmapSmall()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->mBitmapSnowDotSmall:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->mBitmapDayDotBig:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->mBitmapDayDotBig:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->mBitmapDayDotBig:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 72
    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->mBitmapDayDotBig:Landroid/graphics/Bitmap;

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->mBitmapDayDotMedium:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->mBitmapDayDotMedium:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->mBitmapDayDotMedium:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 77
    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->mBitmapDayDotMedium:Landroid/graphics/Bitmap;

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->mBitmapDayDotSmall:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->mBitmapDayDotSmall:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 81
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->mBitmapDayDotSmall:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 82
    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->mBitmapDayDotSmall:Landroid/graphics/Bitmap;

    .line 85
    :cond_2
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->mBitmapNightDotBig:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->mBitmapNightDotBig:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 86
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->mBitmapNightDotBig:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 87
    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->mBitmapNightDotBig:Landroid/graphics/Bitmap;

    .line 90
    :cond_3
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->mBitmapNightDotMedium:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->mBitmapNightDotMedium:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 91
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->mBitmapNightDotMedium:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 92
    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->mBitmapNightDotMedium:Landroid/graphics/Bitmap;

    .line 95
    :cond_4
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->mBitmapNightDotSmall:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->mBitmapNightDotSmall:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 96
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->mBitmapNightDotSmall:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 97
    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->mBitmapNightDotSmall:Landroid/graphics/Bitmap;

    .line 100
    :cond_5
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->mBitmapDarkCloud0:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->mBitmapDarkCloud0:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_6

    .line 101
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->mBitmapDarkCloud0:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 102
    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->mBitmapDarkCloud0:Landroid/graphics/Bitmap;

    .line 105
    :cond_6
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->mBitmapDarkCloud1:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->mBitmapDarkCloud1:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 106
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->mBitmapDarkCloud1:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 107
    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->mBitmapDarkCloud1:Landroid/graphics/Bitmap;

    .line 110
    :cond_7
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->mBitmapDarkCloud2:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->mBitmapDarkCloud2:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 111
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->mBitmapDarkCloud2:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 112
    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->mBitmapDarkCloud2:Landroid/graphics/Bitmap;

    .line 115
    :cond_8
    sput-object v1, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->mInstance:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;

    .line 116
    return-void
.end method
