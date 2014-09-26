.class Lcom/android/systemui/statusbar/switcher/RotationTracker$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "RotationTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/switcher/RotationTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/systemui/statusbar/switcher/RotationTracker;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/switcher/RotationTracker;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "handler"
    .parameter "context"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/systemui/statusbar/switcher/RotationTracker$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/switcher/RotationTracker;

    .line 121
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 122
    iput-object p3, p0, Lcom/android/systemui/statusbar/switcher/RotationTracker$SettingsObserver;->mContext:Landroid/content/Context;

    .line 123
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BroadcastReceiver Settings onChanged.."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->debug(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/RotationTracker$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/switcher/RotationTracker;

    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/RotationTracker$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/switcher/RotationTracker;->updateStatus(Landroid/content/Context;)V

    .line 139
    return-void
.end method

.method startObserving()V
    .locals 3

    .prologue
    .line 126
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/RotationTracker$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 127
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "accelerometer_rotation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 129
    return-void
.end method

.method stopObserving()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/RotationTracker$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 133
    return-void
.end method
