.class public Lcom/baidu/bulletin/monitor/Monitor;
.super Ljava/lang/Object;
.source "Monitor.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mMonitorView:Lcom/baidu/bulletin/monitor/MonitorView;

.field private static sIsShown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "Monitor"

    sput-object v0, Lcom/baidu/bulletin/monitor/Monitor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIsShown()Z
    .locals 1

    .prologue
    .line 26
    sget-boolean v0, Lcom/baidu/bulletin/monitor/Monitor;->sIsShown:Z

    return v0
.end method

.method public static hideMonitorView(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 88
    sget-object v1, Lcom/baidu/bulletin/monitor/Monitor;->mMonitorView:Lcom/baidu/bulletin/monitor/MonitorView;

    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 91
    .local v0, wm:Landroid/view/WindowManager;
    sget-object v1, Lcom/baidu/bulletin/monitor/Monitor;->mMonitorView:Lcom/baidu/bulletin/monitor/MonitorView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 92
    const/4 v1, 0x0

    sput-object v1, Lcom/baidu/bulletin/monitor/Monitor;->mMonitorView:Lcom/baidu/bulletin/monitor/MonitorView;

    .line 94
    .end local v0           #wm:Landroid/view/WindowManager;
    :cond_0
    return-void
.end method

.method public static setIsShown(Z)V
    .locals 0
    .parameter "isShown"

    .prologue
    .line 30
    sput-boolean p0, Lcom/baidu/bulletin/monitor/Monitor;->sIsShown:Z

    .line 31
    return-void
.end method

.method public static showMonitorView(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v8, -0x2

    const/4 v5, 0x0

    .line 34
    sget-object v6, Lcom/baidu/bulletin/monitor/Monitor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showMonitorView is start in condition, isBulletin = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v7, Lcom/baidu/bulletin/ui/logic/UIController;->isBulletin:Z

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ","

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", monitorEnable = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->isMonitorEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " isShown = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/baidu/bulletin/monitor/Monitor;->getIsShown()Z

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    sget-boolean v3, Lcom/baidu/bulletin/ui/logic/UIController;->isBulletin:Z

    if-nez v3, :cond_0

    invoke-static {}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->isMonitorEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/baidu/bulletin/monitor/Monitor;->getIsShown()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 85
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v3, v5

    .line 34
    goto :goto_0

    .line 43
    :cond_2
    sget-object v3, Lcom/baidu/bulletin/monitor/Monitor;->TAG:Ljava/lang/String;

    const-string v6, "showMonitorView is start"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    sget-object v3, Lcom/baidu/bulletin/monitor/Monitor;->mMonitorView:Lcom/baidu/bulletin/monitor/MonitorView;

    if-nez v3, :cond_0

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v6, "layout_inflater"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 47
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f030031

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/baidu/bulletin/monitor/MonitorView;

    sput-object v3, Lcom/baidu/bulletin/monitor/Monitor;->mMonitorView:Lcom/baidu/bulletin/monitor/MonitorView;

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v6, "window"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 52
    .local v2, wm:Landroid/view/WindowManager;
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 53
    .local v1, params:Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x7d3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 54
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 55
    const/16 v3, 0x328

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 59
    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 60
    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 61
    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 62
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 63
    const/16 v3, 0x33

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 64
    sget-object v3, Lcom/baidu/bulletin/monitor/Monitor;->mMonitorView:Lcom/baidu/bulletin/monitor/MonitorView;

    const/16 v4, 0x32

    invoke-virtual {v3, v5, v4}, Lcom/baidu/bulletin/monitor/MonitorView;->initLocation(II)V

    .line 65
    sget-object v3, Lcom/baidu/bulletin/monitor/Monitor;->mMonitorView:Lcom/baidu/bulletin/monitor/MonitorView;

    invoke-interface {v2, v3, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    sget-object v3, Lcom/baidu/bulletin/monitor/Monitor;->mMonitorView:Lcom/baidu/bulletin/monitor/MonitorView;

    new-instance v4, Lcom/baidu/bulletin/monitor/Monitor$1;

    invoke-direct {v4, p0}, Lcom/baidu/bulletin/monitor/Monitor$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Lcom/baidu/bulletin/monitor/MonitorView;->setClickListener(Lcom/baidu/bulletin/monitor/MonitorView$BulletinTriggerListener;)V

    goto :goto_1
.end method
