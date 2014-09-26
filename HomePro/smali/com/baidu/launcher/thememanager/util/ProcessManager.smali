.class public Lcom/baidu/launcher/thememanager/util/ProcessManager;
.super Ljava/lang/Object;
.source "ProcessManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkThemeAndWallpaper(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 9
    const-string v0, "com.baidu.launcher.theme"

    invoke-static {p0, v0}, Lcom/baidu/launcher/thememanager/util/Utils;->getCurrentProcessFromName(Landroid/content/Context;Ljava/lang/String;)Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10
    invoke-static {p0}, Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;->getProcessMananager(Landroid/content/Context;)Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;->startBackGroundTimer()V

    .line 12
    :cond_0
    return-void
.end method
