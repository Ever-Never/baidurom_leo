.class Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "ProtectEyesTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "handler"
    .parameter "context"

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;

    .line 173
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 174
    iput-object p3, p0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker$SettingsObserver;->mContext:Landroid/content/Context;

    .line 175
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    const/4 v3, 0x0

    .line 191
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "protect_eyes"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 192
    .local v0, nightModeSwitch:I
    if-nez v0, :cond_1

    .line 193
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;

    #calls: Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->removeProtectView()Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->access$000(Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    invoke-static {v3}, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->access$102(Z)Z

    .line 199
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;

    iget-object v2, p0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->updateStatus(Landroid/content/Context;)V

    .line 200
    return-void

    .line 196
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;

    #calls: Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->addProtectView()Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->access$200(Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->access$102(Z)Z

    goto :goto_0
.end method

.method startObserving()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 178
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 179
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "protect_eyes"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 181
    const-string v1, "protect_eyes_enable"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 183
    return-void
.end method

.method stopObserving()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 187
    return-void
.end method
