.class public Lcom/baidu/launcher/thememanager/util/KillThemeTimerTask;
.super Ljava/util/TimerTask;
.source "KillThemeTimerTask.java"


# static fields
.field public static final FLAG_BACKKEY:I = 0x0

.field public static final FLAG_LAUNCHER:I = 0x1


# instance fields
.field private flag:I

.field private processMananager:Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;


# direct methods
.method public constructor <init>(Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;I)V
    .locals 1
    .parameter "processMananager"
    .parameter "flag"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 13
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/launcher/thememanager/util/KillThemeTimerTask;->flag:I

    .line 17
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/util/KillThemeTimerTask;->processMananager:Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;

    .line 18
    iput p2, p0, Lcom/baidu/launcher/thememanager/util/KillThemeTimerTask;->flag:I

    .line 19
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 26
    :try_start_0
    iget v1, p0, Lcom/baidu/launcher/thememanager/util/KillThemeTimerTask;->flag:I

    if-nez v1, :cond_0

    .line 27
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/util/KillThemeTimerTask;->processMananager:Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;

    invoke-virtual {v1}, Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;->KillProcess()V

    .line 29
    :cond_0
    iget v1, p0, Lcom/baidu/launcher/thememanager/util/KillThemeTimerTask;->flag:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 30
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/util/KillThemeTimerTask;->processMananager:Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;

    invoke-virtual {v1}, Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;->killBackGroundProcess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :cond_1
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
