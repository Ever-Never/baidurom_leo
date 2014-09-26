.class Lcom/android/systemui/statusbar/phone/TrafficView$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "TrafficView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/TrafficView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/TrafficView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/TrafficView;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "handler"
    .parameter "context"

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TrafficView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/TrafficView;

    .line 173
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 174
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/TrafficView$SettingsObserver;->mContext:Landroid/content/Context;

    .line 175
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 189
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrafficView$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/BaiduTelephonyUtils;->getPreferredDataSlot(Landroid/content/Context;)I

    move-result v0

    .line 190
    .local v0, curSlotId:I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrafficView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/TrafficView;

    #getter for: Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficManager:Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/TrafficView;->access$300(Lcom/android/systemui/statusbar/phone/TrafficView;)Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;->setCurrentSimId(I)V

    .line 191
    return-void
.end method

.method startObserving()V
    .locals 3

    .prologue
    .line 178
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrafficView$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 179
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, ""

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 181
    return-void
.end method

.method stopObserving()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TrafficView$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 185
    return-void
.end method
