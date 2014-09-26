.class public Lcom/android/systemui/statusbar/switcher/FlashLightTracker;
.super Lcom/android/systemui/statusbar/switcher/SwitchTracker;
.source "FlashLightTracker.java"


# static fields
.field private static final ACTION_FLASHLIGHT_STATE_CHANGED:Ljava/lang/String; = "com.baidu.action.FLASHLIGHT_STATE_CHANGED"

.field private static final KEY_FLASHLIGHT:Ljava/lang/String; = "flashlight_click"

.field public static final TAG:Ljava/lang/String; = "FlashLightTracker"

.field private static isOn:Z


# instance fields
.field private final mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mNotificationBlamePopup:Landroid/widget/PopupWindow;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/statusbar/switcher/FlashLightTracker;->isOn:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v0, Lcom/android/systemui/statusbar/switcher/FlashLightTracker$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/switcher/FlashLightTracker$1;-><init>(Lcom/android/systemui/statusbar/switcher/FlashLightTracker;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/switcher/FlashLightTracker;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    .line 110
    new-instance v0, Lcom/android/systemui/statusbar/switcher/FlashLightTracker$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/switcher/FlashLightTracker$2;-><init>(Lcom/android/systemui/statusbar/switcher/FlashLightTracker;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/switcher/FlashLightTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/switcher/FlashLightTracker;->mContext:Landroid/content/Context;

    .line 39
    invoke-direct {p0}, Lcom/android/systemui/statusbar/switcher/FlashLightTracker;->init()V

    .line 40
    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    sput-boolean p0, Lcom/android/systemui/statusbar/switcher/FlashLightTracker;->isOn:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/switcher/FlashLightTracker;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/FlashLightTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkFirstClick()V
    .locals 8

    .prologue
    .line 160
    iget-object v5, p0, Lcom/android/systemui/statusbar/switcher/FlashLightTracker;->mContext:Landroid/content/Context;

    const-string v6, "com.android.systemui_preferences"

    const/4 v7, 0x4

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 162
    .local v3, share:Landroid/content/SharedPreferences;
    const-string v5, "flashlight_click"

    const/4 v6, 0x1

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 163
    .local v2, result:Z
    const-string v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    .line 166
    .local v4, windowManager:Landroid/view/IWindowManager;
    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v4}, Landroid/view/IWindowManager;->hasNavigationBar()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "FlashLightTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Check hasNavigationBar failed:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 173
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v5, "flashlight_click"

    const/4 v6, 0x0

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 174
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 175
    invoke-direct {p0}, Lcom/android/systemui/statusbar/switcher/FlashLightTracker;->showFirstClickNotification()V

    goto :goto_0
.end method

.method private dissmissPopup()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/FlashLightTracker;->mNotificationBlamePopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/FlashLightTracker;->mNotificationBlamePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/FlashLightTracker;->mNotificationBlamePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/switcher/FlashLightTracker;->mNotificationBlamePopup:Landroid/widget/PopupWindow;

    .line 207
    :cond_0
    return-void
.end method

.method private init()V
    .locals 10

    .prologue
    .line 52
    :try_start_0
    sget-boolean v0, Lcom/android/systemui/statusbar/switcher/FlashLightTracker;->isOn:Z

    if-eqz v0, :cond_0

    .line 53
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    const-string v2, "package"

    const-string v3, "com.baidu.flashlight"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 55
    .local v1, intent:Landroid/content/Intent;
    const/4 v9, 0x0

    .line 56
    .local v9, info:Landroid/content/pm/ApplicationInfo;
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/FlashLightTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.baidu.flashlight"

    const/16 v3, 0x2000

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 57
    const-string v0, "android.intent.extra.PACKAGES"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "com.baidu.flashlight"

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const-string v0, "android.intent.extra.UID"

    iget v2, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 59
    const-string v0, "android.intent.extra.user_handle"

    iget v2, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/FlashLightTracker;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/switcher/FlashLightTracker;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v1           #intent:Landroid/content/Intent;
    .end local v9           #info:Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v8

    .line 64
    .local v8, e:Ljava/lang/Exception;
    const-string v0, "FlashLightTracker"

    const-string v2, "no install flashlight"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showFirstClickNotification()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 179
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/FlashLightTracker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040008

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 181
    .local v0, layout:Landroid/view/View;
    if-nez v0, :cond_0

    .line 192
    :goto_0
    return-void

    .line 183
    :cond_0
    new-instance v1, Landroid/widget/PopupWindow;

    const v2, 0x7f0e004c

    const v3, 0x7f0e004d

    invoke-direct {v1, v0, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/switcher/FlashLightTracker;->mNotificationBlamePopup:Landroid/widget/PopupWindow;

    .line 185
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/FlashLightTracker;->mNotificationBlamePopup:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 186
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/FlashLightTracker;->mNotificationBlamePopup:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 187
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/FlashLightTracker;->mNotificationBlamePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 189
    const v1, 0x7f02029d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 190
    iget-object v2, p0, Lcom/android/systemui/statusbar/switcher/FlashLightTracker;->mNotificationBlamePopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/FlashLightTracker;->getSwitcherItemView()Lcom/android/systemui/statusbar/switcher/SwitcherItemView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/16 v3, 0x10

    invoke-virtual {v2, v1, v3, v4, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 70
    sget-boolean v0, Lcom/android/systemui/statusbar/switcher/FlashLightTracker;->isOn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getSwitcherId()B
    .locals 1

    .prologue
    .line 211
    const/16 v0, 0xc

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->onAttach(Landroid/content/Context;)V

    .line 99
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 100
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.baidu.action.FLASHLIGHT_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/FlashLightTracker;->mView:Lcom/android/systemui/statusbar/switcher/SwitcherItemView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/switcher/FlashLightTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 102
    return-void
.end method

.method public onDetach(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->onAttach(Landroid/content/Context;)V

    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/FlashLightTracker;->mView:Lcom/android/systemui/statusbar/switcher/SwitcherItemView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/FlashLightTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 108
    return-void
.end method

.method public onLongClick(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 149
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->onLongClick(Landroid/content/Context;)V

    .line 151
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.baidu.flashlight.ACTION_OPEN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 152
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.baidu.flashlight"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    iget-object v2, p0, Lcom/android/systemui/statusbar/switcher/FlashLightTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FlashLightTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Flashlight cann\'t start:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPanelVisibilityChanged(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 196
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->onPanelVisibilityChanged(I)V

    .line 197
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 198
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/switcher/FlashLightTracker;->dissmissPopup()V

    .line 199
    :cond_1
    return-void
.end method

.method public setState(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "desiredState"

    .prologue
    .line 94
    return-void
.end method

.method protected toggleStateChange(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->toggleStateChange(Landroid/content/Context;)V

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.camera.flash"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/android/systemui/statusbar/switcher/FlashLightTracker;->checkFirstClick()V

    .line 128
    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/switcher/FlashLightTracker;->mCurrentState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 130
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.baidu.flashlight.ACTION_CLOSE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.baidu.flashlight"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    iget-object v2, p0, Lcom/android/systemui/statusbar/switcher/FlashLightTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FlashLightTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Flashlight cann\'t start:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 138
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.baidu.flashlight.ACTION_OPEN_SHORTCUT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "com.baidu.flashlight"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    iget-object v2, p0, Lcom/android/systemui/statusbar/switcher/FlashLightTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 141
    .end local v1           #intent:Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 142
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v2, "FlashLightTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Flashlight cann\'t start:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateView(Landroid/content/Context;Lcom/android/systemui/statusbar/switcher/SwitcherItemView;)V
    .locals 6
    .parameter "context"
    .parameter "view"

    .prologue
    const v5, 0x7f020086

    const v4, 0x7f020085

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateView FlashLightTracker:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/switcher/FlashLightTracker;->mCurrentState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->debug(Ljava/lang/String;)V

    .line 76
    iget v0, p0, Lcom/android/systemui/statusbar/switcher/FlashLightTracker;->mCurrentState:I

    if-ne v0, v2, :cond_1

    .line 77
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/switcher/FlashLightTracker;->mIsEnabled:Z

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p2, v5, v2, v2}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->updateView(IZZ)V

    .line 89
    :goto_0
    const v0, 0x7f0c00b8

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->setTitle(I)V

    .line 90
    return-void

    .line 80
    :cond_0
    invoke-virtual {p2, v5, v2, v3}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->updateView(IZZ)V

    goto :goto_0

    .line 83
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/switcher/FlashLightTracker;->mIsEnabled:Z

    if-eqz v0, :cond_2

    .line 84
    invoke-virtual {p2, v4, v2, v2}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->updateView(IZZ)V

    goto :goto_0

    .line 86
    :cond_2
    invoke-virtual {p2, v4, v2, v3}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->updateView(IZZ)V

    goto :goto_0
.end method
