.class public Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtManager;
.super Ljava/lang/Object;
.source "SwitchExtManager.java"


# static fields
.field private static sSwitchExtManager:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtManager;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Lcom/baidu/launcher/app/Launcher;

.field private mSwitchExtLayer:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "SwitchExtManager"

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtManager;->TAG:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public static getInstance()Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtManager;
    .locals 2

    .prologue
    .line 32
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtManager;->sSwitchExtManager:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtManager;

    if-nez v0, :cond_1

    .line 33
    const-class v1, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtManager;

    monitor-enter v1

    .line 34
    :try_start_0
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtManager;->sSwitchExtManager:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtManager;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtManager;

    invoke-direct {v0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtManager;-><init>()V

    sput-object v0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtManager;->sSwitchExtManager:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtManager;

    .line 37
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :cond_1
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtManager;->sSwitchExtManager:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtManager;

    return-object v0

    .line 37
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtManager;->mSwitchExtLayer:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtManager;->mSwitchExtLayer:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->startCloseAnimation()V

    .line 72
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtManager;->mContext:Lcom/baidu/launcher/app/Launcher;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtManager;->mContext:Lcom/baidu/launcher/app/Launcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/app/Launcher;->setStatusBarTransparent(Z)V

    .line 76
    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtManager;->mSwitchExtLayer:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtManager;->mSwitchExtLayer:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->isVisible()Z

    move-result v0

    .line 85
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public open(Landroid/content/Context;Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;)V
    .locals 2
    .parameter "context"
    .parameter "aSwitchWidgetBar"

    .prologue
    .line 49
    instance-of v0, p1, Lcom/baidu/launcher/app/Launcher;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 50
    check-cast v0, Lcom/baidu/launcher/app/Launcher;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtManager;->mContext:Lcom/baidu/launcher/app/Launcher;

    .line 53
    :cond_0
    check-cast p1, Lcom/baidu/launcher/app/Launcher;

    .end local p1
    const v0, 0x7f080176

    invoke-virtual {p1, v0}, Lcom/baidu/launcher/app/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtManager;->mSwitchExtLayer:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;

    .line 54
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtManager;->mSwitchExtLayer:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;

    new-instance v1, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtManager$1;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtManager$1;-><init>(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtManager;)V

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtManager;->mContext:Lcom/baidu/launcher/app/Launcher;

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtManager;->mContext:Lcom/baidu/launcher/app/Launcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/app/Launcher;->setStatusBarTransparent(Z)V

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtManager;->mSwitchExtLayer:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;

    invoke-virtual {v0, p2}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->startOpenAnimation(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;)V

    .line 67
    return-void
.end method
