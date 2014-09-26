.class public Lcom/baidu/bulletin/utils/ChangeNotifyManager;
.super Ljava/lang/Object;
.source "ChangeNotifyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager;,
        Lcom/baidu/bulletin/utils/ChangeNotifyManager$Observer;,
        Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static nofityChange(Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;Ljava/lang/Object;)V
    .locals 1
    .parameter "event"
    .parameter "data"

    .prologue
    .line 150
    invoke-static {}, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->isBulletinEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-static {}, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager;->getInstance()Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager;->notify(Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;Ljava/lang/Object;)V

    .line 153
    :cond_0
    return-void
.end method

.method public static register(Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;Lcom/baidu/bulletin/utils/ChangeNotifyManager$Observer;)V
    .locals 1
    .parameter "event"
    .parameter "observer"

    .prologue
    .line 142
    invoke-static {}, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager;->getInstance()Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager;->register(Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;Lcom/baidu/bulletin/utils/ChangeNotifyManager$Observer;)V

    .line 143
    return-void
.end method

.method public static trim()V
    .locals 1

    .prologue
    .line 156
    invoke-static {}, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    invoke-static {}, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager;->getInstance()Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager;->trim()V

    .line 159
    :cond_0
    return-void
.end method

.method public static unregister(Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;Lcom/baidu/bulletin/utils/ChangeNotifyManager$Observer;)V
    .locals 1
    .parameter "event"
    .parameter "observer"

    .prologue
    .line 146
    invoke-static {}, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager;->getInstance()Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager;->unregister(Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;Lcom/baidu/bulletin/utils/ChangeNotifyManager$Observer;)V

    .line 147
    return-void
.end method
