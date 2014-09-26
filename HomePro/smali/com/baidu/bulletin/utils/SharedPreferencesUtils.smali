.class public Lcom/baidu/bulletin/utils/SharedPreferencesUtils;
.super Ljava/lang/Object;
.source "SharedPreferencesUtils.java"


# static fields
.field private static final AFTER_FIRST_USED:Ljava/lang/String; = "used"

.field private static final AUTO_SYNC:Ljava/lang/String; = "AutoSync"

.field private static final GUIDE_SHOWN:Ljava/lang/String; = "guideshown"

.field private static final MONITOR:Ljava/lang/String; = "monitor"

.field private static final SEMIVIEW_ENABLED:Ljava/lang/String; = "SemiviewEnabled"

.field private static final SUBSCRIPTION:Ljava/lang/String; = "Subscription"

.field private static final SWITCH:Ljava/lang/String; = "switch"

.field private static final XML_NAME:Ljava/lang/String; = "baidustylelauncher2"

.field private static mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Preferences()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 29
    sget-object v1, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 30
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 31
    .local v0, context:Landroid/content/Context;
    const-string v1, "baidustylelauncher2"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 33
    :cond_0
    sget-object v1, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v1
.end method

.method public static checkSemiViewEnabled()Z
    .locals 3

    .prologue
    .line 64
    invoke-static {}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->Preferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SemiviewEnabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static enableBulletin(Z)Z
    .locals 4
    .parameter "enabled"

    .prologue
    .line 116
    invoke-static {}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->Preferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "switch"

    invoke-interface {v2, v3, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    .line 118
    .local v1, result:Z
    if-nez p0, :cond_0

    .line 119
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/SettingsController;->getSettingsController()Lcom/baidu/bulletin/ui/logic/SettingsController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/bulletin/ui/logic/SettingsController;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->getInstance(Landroid/content/Context;)Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    move-result-object v0

    .line 120
    .local v0, floatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;
    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->closeBulletin()V

    .line 122
    .end local v0           #floatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;
    :cond_0
    return v1
.end method

.method public static enableMonitor(Z)Z
    .locals 2
    .parameter "enabled"

    .prologue
    .line 132
    invoke-static {}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->Preferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "monitor"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/SettingsController;->getSettingsController()Lcom/baidu/bulletin/ui/logic/SettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/logic/SettingsController;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 41
    sget-object v0, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 42
    const-string v0, "baidustylelauncher2"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 44
    :cond_0
    return-void
.end method

.method public static initSemiViewInstalled(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 52
    .local v1, manager:Landroid/content/pm/PackageManager;
    invoke-virtual {v1, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .line 53
    .local v3, pkgList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 54
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 55
    .local v2, pI:Landroid/content/pm/PackageInfo;
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.baidu.semiview"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 56
    invoke-static {}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->Preferences()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "SemiviewEnabled"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 61
    .end local v2           #pI:Landroid/content/pm/PackageInfo;
    :goto_1
    return-void

    .line 53
    .restart local v2       #pI:Landroid/content/pm/PackageInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    .end local v2           #pI:Landroid/content/pm/PackageInfo;
    :cond_1
    invoke-static {}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->Preferences()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "SemiviewEnabled"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1
.end method

.method public static isAutoSyncEnabled()Z
    .locals 3

    .prologue
    .line 72
    invoke-static {}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->Preferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "AutoSync"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isBulletinEnabled()Z
    .locals 3

    .prologue
    .line 126
    const/4 v0, 0x1

    .line 127
    .local v0, defaultValue:Z
    sget-object v1, Lcom/baidu/launcher/app/LauncherApplication;->configString:Ljava/lang/String;

    const-string v2, "001"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 128
    invoke-static {}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->Preferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "switch"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isChannelSubscribed(Ljava/lang/String;)Z
    .locals 3
    .parameter "channelId"

    .prologue
    .line 84
    if-nez p0, :cond_0

    .line 85
    const/4 v0, 0x0

    .line 88
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->Preferences()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subscription"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->isDefaultSelection(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method private static isDefaultSelection(Ljava/lang/String;)Z
    .locals 2
    .parameter "channelId"

    .prologue
    const/4 v0, 0x0

    .line 92
    if-nez p0, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "focus_news"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "military"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "entertainment"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "tech"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "finance"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "gym"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "women"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "internet"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "music"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "app"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "history"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "model"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "moko"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "camera"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "sexiy"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isFirstUse()Z
    .locals 3

    .prologue
    .line 140
    invoke-static {}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->Preferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "used"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isGuideShown()Z
    .locals 3

    .prologue
    .line 148
    invoke-static {}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->Preferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "guideshown"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isMonitorEnabled()Z
    .locals 3

    .prologue
    .line 136
    invoke-static {}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->Preferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "monitor"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static notifyBulletinUsed()V
    .locals 3

    .prologue
    .line 144
    invoke-static {}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->Preferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "used"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 145
    return-void
.end method

.method public static release()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 48
    return-void
.end method

.method public static saveGuideShown()V
    .locals 3

    .prologue
    .line 152
    invoke-static {}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->Preferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "guideshown"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 153
    return-void
.end method

.method public static setAutoSync(Z)Z
    .locals 2
    .parameter "enabled"

    .prologue
    .line 68
    invoke-static {}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->Preferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "AutoSync"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public static setChannelSubscription(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "channelId"
    .parameter "enabled"

    .prologue
    .line 76
    if-nez p0, :cond_0

    .line 77
    const/4 v0, 0x0

    .line 80
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->Preferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subscription"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    goto :goto_0
.end method
