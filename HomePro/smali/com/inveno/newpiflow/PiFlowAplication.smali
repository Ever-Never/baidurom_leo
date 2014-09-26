.class public Lcom/inveno/newpiflow/PiFlowAplication;
.super Landroid/app/Application;
.source "PiFlowAplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method private SaveScreenSize()V
    .locals 5

    .prologue
    .line 23
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 24
    .local v2, size:Landroid/util/DisplayMetrics;
    const-string v3, "window"

    invoke-virtual {p0, v3}, Lcom/inveno/newpiflow/PiFlowAplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 25
    .local v1, manager:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 26
    invoke-static {p0}, Lcom/inveno/newpiflow/tools/DeviceConfig;->getInstance(Landroid/content/Context;)Lcom/inveno/newpiflow/tools/DeviceConfig;

    move-result-object v0

    .line 27
    .local v0, config:Lcom/inveno/newpiflow/tools/DeviceConfig;
    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v3}, Lcom/inveno/newpiflow/tools/DeviceConfig;->setHeight(I)V

    .line 28
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, v3}, Lcom/inveno/newpiflow/tools/DeviceConfig;->setWidth(I)V

    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u624b\u673a\u5c4f\u5e55:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/inveno/newpiflow/tools/DeviceConfig;->w:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "X"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/inveno/newpiflow/tools/DeviceConfig;->h:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/inveno/flyshare/utils/LogTools;->showLogB(Ljava/lang/String;)V

    .line 31
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 15
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 16
    invoke-direct {p0}, Lcom/inveno/newpiflow/PiFlowAplication;->SaveScreenSize()V

    .line 17
    return-void
.end method
