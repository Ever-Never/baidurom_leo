.class public Lcom/baidu/bulletin/ui/logic/SettingsController;
.super Ljava/lang/Object;
.source "SettingsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/ui/logic/SettingsController$IOnChannelSubscribChangedObserver;
    }
.end annotation


# static fields
.field private static mSettingsController:Lcom/baidu/bulletin/ui/logic/SettingsController;


# instance fields
.field private isLauncherBinded:Z

.field private isVisible:Z

.field private mLauncher:Lcom/baidu/launcher/app/Launcher;

.field private mOnChannelSubscribChangeds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/bulletin/ui/logic/SettingsController$IOnChannelSubscribChangedObserver;",
            ">;"
        }
    .end annotation
.end field

.field private needVisibleInited:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/bulletin/ui/logic/SettingsController;->isLauncherBinded:Z

    .line 20
    iput-boolean v1, p0, Lcom/baidu/bulletin/ui/logic/SettingsController;->needVisibleInited:Z

    .line 21
    iput-boolean v1, p0, Lcom/baidu/bulletin/ui/logic/SettingsController;->isVisible:Z

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/logic/SettingsController;->mOnChannelSubscribChangeds:Ljava/util/ArrayList;

    .line 28
    return-void
.end method

.method public static declared-synchronized getSettingsController()Lcom/baidu/bulletin/ui/logic/SettingsController;
    .locals 2

    .prologue
    .line 31
    const-class v1, Lcom/baidu/bulletin/ui/logic/SettingsController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/bulletin/ui/logic/SettingsController;->mSettingsController:Lcom/baidu/bulletin/ui/logic/SettingsController;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/baidu/bulletin/ui/logic/SettingsController;

    invoke-direct {v0}, Lcom/baidu/bulletin/ui/logic/SettingsController;-><init>()V

    sput-object v0, Lcom/baidu/bulletin/ui/logic/SettingsController;->mSettingsController:Lcom/baidu/bulletin/ui/logic/SettingsController;

    .line 34
    :cond_0
    sget-object v0, Lcom/baidu/bulletin/ui/logic/SettingsController;->mSettingsController:Lcom/baidu/bulletin/ui/logic/SettingsController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized release()V
    .locals 2

    .prologue
    .line 169
    const-class v0, Lcom/baidu/bulletin/ui/logic/SettingsController;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/baidu/bulletin/ui/logic/SettingsController;->mSettingsController:Lcom/baidu/bulletin/ui/logic/SettingsController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    monitor-exit v0

    return-void

    .line 169
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public enableBulletin(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 70
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/SettingsController;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/SettingsController;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/app/Launcher;->showBulletinScreen(Z)V

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/UIController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/UIController;->getUIController()Lcom/baidu/bulletin/ui/logic/UIController;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/bulletin/ui/logic/UIController;->storeSettings(IIZ)V

    goto :goto_0
.end method

.method public getBulletinVisible()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/baidu/bulletin/ui/logic/SettingsController;->isLauncherBinded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/bulletin/ui/logic/SettingsController;->needVisibleInited:Z

    if-eqz v0, :cond_0

    .line 63
    invoke-static {}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->isBulletinEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/bulletin/ui/logic/SettingsController;->isVisible:Z

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/bulletin/ui/logic/SettingsController;->needVisibleInited:Z

    .line 66
    :cond_0
    iget-boolean v0, p0, Lcom/baidu/bulletin/ui/logic/SettingsController;->isVisible:Z

    return v0
.end method

.method public getChannelListItem(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, isSelected:Z
    packed-switch p1, :pswitch_data_0

    .line 155
    const/4 v1, 0x0

    .line 157
    :goto_0
    return v1

    .line 113
    :pswitch_0
    const-string v1, "focus_news"

    invoke-static {v1}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->isChannelSubscribed(Ljava/lang/String;)Z

    move-result v0

    :goto_1
    move v1, v0

    .line 157
    goto :goto_0

    .line 116
    :pswitch_1
    const-string v1, "military"

    invoke-static {v1}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->isChannelSubscribed(Ljava/lang/String;)Z

    move-result v0

    .line 117
    goto :goto_1

    .line 119
    :pswitch_2
    const-string v1, "entertainment"

    invoke-static {v1}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->isChannelSubscribed(Ljava/lang/String;)Z

    move-result v0

    .line 120
    goto :goto_1

    .line 122
    :pswitch_3
    const-string v1, "tech"

    invoke-static {v1}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->isChannelSubscribed(Ljava/lang/String;)Z

    move-result v0

    .line 123
    goto :goto_1

    .line 125
    :pswitch_4
    const-string v1, "finance"

    invoke-static {v1}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->isChannelSubscribed(Ljava/lang/String;)Z

    move-result v0

    .line 126
    goto :goto_1

    .line 128
    :pswitch_5
    const-string v1, "gym"

    invoke-static {v1}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->isChannelSubscribed(Ljava/lang/String;)Z

    move-result v0

    .line 129
    goto :goto_1

    .line 131
    :pswitch_6
    const-string v1, "women"

    invoke-static {v1}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->isChannelSubscribed(Ljava/lang/String;)Z

    move-result v0

    .line 132
    goto :goto_1

    .line 134
    :pswitch_7
    const-string v1, "internet"

    invoke-static {v1}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->isChannelSubscribed(Ljava/lang/String;)Z

    move-result v0

    .line 135
    goto :goto_1

    .line 137
    :pswitch_8
    const-string v1, "music"

    invoke-static {v1}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->isChannelSubscribed(Ljava/lang/String;)Z

    move-result v0

    .line 138
    goto :goto_1

    .line 140
    :pswitch_9
    const-string v1, "app"

    invoke-static {v1}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->isChannelSubscribed(Ljava/lang/String;)Z

    move-result v0

    .line 141
    goto :goto_1

    .line 143
    :pswitch_a
    const-string v1, "camera"

    invoke-static {v1}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->isChannelSubscribed(Ljava/lang/String;)Z

    move-result v0

    .line 144
    goto :goto_1

    .line 146
    :pswitch_b
    const-string v1, "moko"

    invoke-static {v1}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->isChannelSubscribed(Ljava/lang/String;)Z

    move-result v0

    .line 147
    goto :goto_1

    .line 149
    :pswitch_c
    const-string v1, "model"

    invoke-static {v1}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->isChannelSubscribed(Ljava/lang/String;)Z

    move-result v0

    .line 150
    goto :goto_1

    .line 152
    :pswitch_d
    const-string v1, "sexiy"

    invoke-static {v1}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->isChannelSubscribed(Ljava/lang/String;)Z

    move-result v0

    .line 153
    goto :goto_1

    .line 111
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
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_d
        :pswitch_c
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public getChannelListMask()I
    .locals 4

    .prologue
    .line 161
    const/4 v1, 0x0

    .line 162
    .local v1, mask:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0xb

    if-ge v0, v2, :cond_1

    .line 163
    shl-int v3, v1, v0

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/logic/SettingsController;->getChannelListItem(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    or-int v1, v3, v2

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 165
    :cond_1
    return v1
.end method

.method public getConfigListItem(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, isSelected:Z
    packed-switch p1, :pswitch_data_0

    .line 100
    :goto_0
    const/4 v1, 0x0

    .line 102
    :goto_1
    return v1

    .line 92
    :pswitch_0
    invoke-static {}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->isAutoSyncEnabled()Z

    move-result v0

    :goto_2
    move v1, v0

    .line 102
    goto :goto_1

    .line 95
    :pswitch_1
    invoke-static {}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->isMonitorEnabled()Z

    move-result v0

    .line 96
    goto :goto_2

    .line 98
    :pswitch_2
    invoke-static {}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->isBulletinEnabled()Z

    move-result v0

    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/SettingsController;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    return-object v0
.end method

.method public registChannleSubscribObserver(Lcom/baidu/bulletin/ui/logic/SettingsController$IOnChannelSubscribChangedObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/SettingsController;->mOnChannelSubscribChangeds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/SettingsController;->mOnChannelSubscribChangeds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_0
    return-void
.end method

.method public setBulletinVisible(Z)Z
    .locals 1
    .parameter "visible"

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/baidu/bulletin/ui/logic/SettingsController;->isVisible:Z

    .line 85
    invoke-static {p1}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->enableBulletin(Z)Z

    move-result v0

    return v0
.end method

.method public setChannelSubscription(Ljava/lang/String;Z)Z
    .locals 1
    .parameter "channelId"
    .parameter "enabled"

    .prologue
    .line 106
    invoke-static {p1, p2}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->setChannelSubscription(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setLauncher(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 50
    check-cast p1, Lcom/baidu/launcher/app/Launcher;

    .end local p1
    iput-object p1, p0, Lcom/baidu/bulletin/ui/logic/SettingsController;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    .line 51
    return-void
.end method

.method public setLauncherBinded(Z)V
    .locals 0
    .parameter "isBinded"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/baidu/bulletin/ui/logic/SettingsController;->isLauncherBinded:Z

    .line 59
    return-void
.end method

.method public unregistChannelSubscribObserver(Lcom/baidu/bulletin/ui/logic/SettingsController$IOnChannelSubscribChangedObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/SettingsController;->mOnChannelSubscribChangeds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/SettingsController;->mOnChannelSubscribChangeds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 47
    :cond_0
    return-void
.end method
