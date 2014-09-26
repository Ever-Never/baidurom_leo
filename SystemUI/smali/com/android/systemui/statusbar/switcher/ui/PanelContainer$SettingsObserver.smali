.class Lcom/android/systemui/statusbar/switcher/ui/PanelContainer$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "PanelContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/switcher/ui/PanelContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/systemui/statusbar/switcher/ui/PanelContainer;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/switcher/ui/PanelContainer;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "handler"
    .parameter "context"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/systemui/statusbar/switcher/ui/PanelContainer$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/switcher/ui/PanelContainer;

    .line 118
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 119
    iput-object p3, p0, Lcom/android/systemui/statusbar/switcher/ui/PanelContainer$SettingsObserver;->mContext:Landroid/content/Context;

    .line 120
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/ui/PanelContainer$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/switcher/ui/PanelContainer;

    #getter for: Lcom/android/systemui/statusbar/switcher/ui/PanelContainer;->mBrightnessController:Lcom/android/systemui/statusbar/policy/BrightnessController;
    invoke-static {v0}, Lcom/android/systemui/statusbar/switcher/ui/PanelContainer;->access$000(Lcom/android/systemui/statusbar/switcher/ui/PanelContainer;)Lcom/android/systemui/statusbar/policy/BrightnessController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/ui/PanelContainer$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/switcher/ui/PanelContainer;

    #getter for: Lcom/android/systemui/statusbar/switcher/ui/PanelContainer;->mBrightnessController:Lcom/android/systemui/statusbar/policy/BrightnessController;
    invoke-static {v0}, Lcom/android/systemui/statusbar/switcher/ui/PanelContainer;->access$000(Lcom/android/systemui/statusbar/switcher/ui/PanelContainer;)Lcom/android/systemui/statusbar/policy/BrightnessController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/ui/PanelContainer$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/switcher/ui/PanelContainer;

    #getter for: Lcom/android/systemui/statusbar/switcher/ui/PanelContainer;->mBrightSeekBar:Lcom/android/systemui/statusbar/policy/ToggleSlider;
    invoke-static {v1}, Lcom/android/systemui/statusbar/switcher/ui/PanelContainer;->access$100(Lcom/android/systemui/statusbar/switcher/ui/PanelContainer;)Lcom/android/systemui/statusbar/policy/ToggleSlider;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/BrightnessController;->onInit(Lcom/android/systemui/statusbar/policy/ToggleSlider;)V

    .line 138
    :cond_0
    return-void
.end method

.method startObserving()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 123
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/ui/PanelContainer$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 125
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 127
    const-string v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 129
    return-void
.end method

.method stopObserving()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/ui/PanelContainer$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 133
    return-void
.end method
