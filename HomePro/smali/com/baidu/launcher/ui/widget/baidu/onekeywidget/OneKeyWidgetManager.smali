.class public Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetManager;
.super Ljava/lang/Object;
.source "OneKeyWidgetManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "OneKeyWidgetManager"

.field private static sSingleInstance:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetManager;


# instance fields
.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetCount:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetManager;->mContext:Ljava/lang/ref/WeakReference;

    .line 27
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 30
    const-class v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetManager;->sSingleInstance:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetManager;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetManager;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetManager;->sSingleInstance:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetManager;

    .line 33
    :cond_0
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetManager;->sSingleInstance:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getWigetCount()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetManager;->mWidgetCount:I

    return v0
.end method

.method public declared-synchronized onOneKeyWidgetAdd()V
    .locals 3

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetManager;->mWidgetCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetManager;->mWidgetCount:I

    .line 46
    const/4 v0, 0x1

    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetManager;->mWidgetCount:I

    if-ne v0, v1, :cond_0

    .line 47
    const-string v0, "OneKeyWidgetManager"

    const-string v1, "startService"

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetManager;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetManager;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetManager;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.baidu.launcher.onekeywidget.optimization_update_service"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_0
    monitor-exit p0

    return-void

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onOneKeyWidgetRemove()V
    .locals 3

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetManager;->mWidgetCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetManager;->mWidgetCount:I

    .line 61
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetManager;->mWidgetCount:I

    if-nez v0, :cond_0

    .line 62
    const-string v0, "OneKeyWidgetManager"

    const-string v1, "stopService"

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetManager;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetManager;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetManager;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.baidu.launcher.onekeywidget.optimization_update_service"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :cond_0
    monitor-exit p0

    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
