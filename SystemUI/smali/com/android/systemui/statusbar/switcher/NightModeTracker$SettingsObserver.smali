.class Lcom/android/systemui/statusbar/switcher/NightModeTracker$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "NightModeTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/switcher/NightModeTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/systemui/statusbar/switcher/NightModeTracker;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/switcher/NightModeTracker;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "handler"
    .parameter "context"

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/systemui/statusbar/switcher/NightModeTracker$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/switcher/NightModeTracker;

    .line 169
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 170
    iput-object p3, p0, Lcom/android/systemui/statusbar/switcher/NightModeTracker$SettingsObserver;->mContext:Landroid/content/Context;

    .line 171
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    const/4 v3, 0x0

    .line 187
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/NightModeTracker$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "night_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 188
    .local v0, nightModeSwitch:I
    if-nez v0, :cond_1

    .line 189
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/NightModeTracker$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/switcher/NightModeTracker;

    #calls: Lcom/android/systemui/statusbar/switcher/NightModeTracker;->removeNightView()Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/switcher/NightModeTracker;->access$000(Lcom/android/systemui/statusbar/switcher/NightModeTracker;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    invoke-static {v3}, Lcom/android/systemui/statusbar/switcher/NightModeTracker;->access$102(Z)Z

    .line 195
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/NightModeTracker$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/switcher/NightModeTracker;

    iget-object v2, p0, Lcom/android/systemui/statusbar/switcher/NightModeTracker$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/switcher/NightModeTracker;->updateStatus(Landroid/content/Context;)V

    .line 196
    return-void

    .line 192
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/NightModeTracker$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/switcher/NightModeTracker;

    #calls: Lcom/android/systemui/statusbar/switcher/NightModeTracker;->addNightView()Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/switcher/NightModeTracker;->access$200(Lcom/android/systemui/statusbar/switcher/NightModeTracker;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/systemui/statusbar/switcher/NightModeTracker;->access$102(Z)Z

    goto :goto_0
.end method

.method startObserving()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 174
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/NightModeTracker$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 175
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "night_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 177
    const-string v1, "night_mode_enable"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 179
    return-void
.end method

.method stopObserving()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/NightModeTracker$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 183
    return-void
.end method
