.class public Lcom/android/systemui/statusbar/switcher/RotationTracker;
.super Lcom/android/systemui/statusbar/switcher/SwitchTracker;
.source "RotationTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/switcher/RotationTracker$SettingsObserver;
    }
.end annotation


# instance fields
.field private mDisplay:Landroid/view/Display;

.field private mNotificationBlamePopup:Landroid/widget/PopupWindow;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowManagerService:Landroid/view/IWindowManager;

.field private sSettingsObserver:Lcom/android/systemui/statusbar/switcher/RotationTracker$SettingsObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;-><init>(Landroid/content/Context;)V

    .line 45
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/switcher/RotationTracker;->mWindowManager:Landroid/view/WindowManager;

    .line 46
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/switcher/RotationTracker;->mWindowManagerService:Landroid/view/IWindowManager;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/switcher/RotationTracker;)Landroid/widget/PopupWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/RotationTracker;->mNotificationBlamePopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private showLockedNotification(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v1, v3, Landroid/content/res/Configuration;->orientation:I

    .line 170
    .local v1, rotation:I
    if-eq v1, v7, :cond_0

    .line 171
    const v3, 0x10900df

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 172
    .local v0, content:Landroid/view/View;
    new-instance v3, Landroid/widget/PopupWindow;

    const v4, 0x7f0e004c

    const v5, 0x7f0e004d

    invoke-direct {v3, v0, v4, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/switcher/RotationTracker;->mNotificationBlamePopup:Landroid/widget/PopupWindow;

    .line 174
    const v3, 0x102000b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 175
    .local v2, tv:Landroid/widget/TextView;
    const v3, 0x7f0c0109

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 176
    iget-object v3, p0, Lcom/android/systemui/statusbar/switcher/RotationTracker;->mNotificationBlamePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v7}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 177
    iget-object v3, p0, Lcom/android/systemui/statusbar/switcher/RotationTracker;->mNotificationBlamePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v8}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 178
    iget-object v4, p0, Lcom/android/systemui/statusbar/switcher/RotationTracker;->mNotificationBlamePopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/RotationTracker;->getSwitcherItemView()Lcom/android/systemui/statusbar/switcher/SwitcherItemView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x105000b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v4, v3, v7, v8, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 181
    iget-object v3, p0, Lcom/android/systemui/statusbar/switcher/RotationTracker;->mNotificationBlamePopup:Landroid/widget/PopupWindow;

    const v4, 0x1030004

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 182
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/android/systemui/statusbar/switcher/RotationTracker$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/switcher/RotationTracker$1;-><init>(Lcom/android/systemui/statusbar/switcher/RotationTracker;)V

    const-wide/16 v5, 0xbb8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 189
    .end local v0           #content:Landroid/view/View;
    .end local v2           #tv:Landroid/widget/TextView;
    :cond_0
    return-void
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accelerometer_rotation"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected getSwitcherId()B
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x6

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->onAttach(Landroid/content/Context;)V

    .line 99
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/RotationTracker;->sSettingsObserver:Lcom/android/systemui/statusbar/switcher/RotationTracker$SettingsObserver;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/android/systemui/statusbar/switcher/RotationTracker$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/statusbar/switcher/RotationTracker$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/switcher/RotationTracker;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/switcher/RotationTracker;->sSettingsObserver:Lcom/android/systemui/statusbar/switcher/RotationTracker$SettingsObserver;

    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/RotationTracker;->sSettingsObserver:Lcom/android/systemui/statusbar/switcher/RotationTracker$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/switcher/RotationTracker$SettingsObserver;->startObserving()V

    .line 104
    :cond_0
    return-void
.end method

.method public onDetach(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->onAttach(Landroid/content/Context;)V

    .line 110
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/RotationTracker;->sSettingsObserver:Lcom/android/systemui/statusbar/switcher/RotationTracker$SettingsObserver;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/RotationTracker;->sSettingsObserver:Lcom/android/systemui/statusbar/switcher/RotationTracker$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/switcher/RotationTracker$SettingsObserver;->stopObserving()V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/switcher/RotationTracker;->sSettingsObserver:Lcom/android/systemui/statusbar/switcher/RotationTracker$SettingsObserver;

    .line 114
    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 144
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->onLongClick(Landroid/content/Context;)V

    .line 146
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.DISPLAY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 148
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setState(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "desiredState"

    .prologue
    const/4 v1, 0x1

    .line 76
    if-nez p2, :cond_1

    .line 77
    iget-object v2, p0, Lcom/android/systemui/statusbar/switcher/RotationTracker;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/switcher/RotationTracker;->mDisplay:Landroid/view/Display;

    .line 78
    iget-object v2, p0, Lcom/android/systemui/statusbar/switcher/RotationTracker;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 79
    .local v0, rotation:I
    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 81
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/switcher/RotationTracker;->mWindowManagerService:Landroid/view/IWindowManager;

    invoke-interface {v2, v0}, Landroid/view/IWindowManager;->freezeRotation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 91
    .end local v0           #rotation:I
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accelerometer_rotation"

    if-ne p2, v1, :cond_3

    :goto_1
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 93
    return-void

    .line 86
    .restart local v0       #rotation:I
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/switcher/RotationTracker;->mWindowManagerService:Landroid/view/IWindowManager;

    const/4 v3, -0x1

    invoke-interface {v2, v3}, Landroid/view/IWindowManager;->freezeRotation(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 87
    :catch_0
    move-exception v2

    goto :goto_0

    .line 91
    .end local v0           #rotation:I
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 82
    .restart local v0       #rotation:I
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method protected toggleStateChange(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 161
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->toggleStateChange(Landroid/content/Context;)V

    .line 162
    iget v0, p0, Lcom/android/systemui/statusbar/switcher/RotationTracker;->mCurrentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 164
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/switcher/RotationTracker;->showLockedNotification(Landroid/content/Context;)V

    .line 166
    :cond_0
    return-void
.end method

.method public updateView(Landroid/content/Context;Lcom/android/systemui/statusbar/switcher/SwitcherItemView;)V
    .locals 6
    .parameter "context"
    .parameter "view"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateView.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/switcher/RotationTracker;->mCurrentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->debug(Ljava/lang/String;)V

    .line 58
    iget v1, p0, Lcom/android/systemui/statusbar/switcher/RotationTracker;->mCurrentState:I

    if-ne v1, v4, :cond_0

    .line 59
    const v1, 0x7f02009c

    invoke-virtual {p2, v1, v4, v4}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->updateView(IZZ)V

    .line 71
    :goto_0
    const v1, 0x7f0c00b2

    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->setTitle(I)V

    .line 72
    return-void

    .line 61
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "user_rotation"

    const/4 v3, -0x2

    invoke-static {v1, v2, v5, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 65
    .local v0, rotation:I
    if-nez v0, :cond_1

    .line 66
    const v1, 0x7f02009a

    invoke-virtual {p2, v1, v5, v4}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->updateView(IZZ)V

    goto :goto_0

    .line 68
    :cond_1
    const v1, 0x7f02009b

    invoke-virtual {p2, v1, v5, v4}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->updateView(IZZ)V

    goto :goto_0
.end method
