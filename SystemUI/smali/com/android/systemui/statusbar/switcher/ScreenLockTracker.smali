.class public Lcom/android/systemui/statusbar/switcher/ScreenLockTracker;
.super Lcom/android/systemui/statusbar/switcher/SwitchTracker;
.source "ScreenLockTracker.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ScreenLockTracker"

.field private static isOn:Z


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/statusbar/switcher/ScreenLockTracker;->isOn:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/switcher/ScreenLockTracker;->mContext:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 27
    const/4 v0, 0x1

    return v0
.end method

.method protected getSwitcherId()B
    .locals 1

    .prologue
    .line 70
    const/16 v0, 0xe

    return v0
.end method

.method public onLongClick(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->onLongClick(Landroid/content/Context;)V

    .line 44
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$CommonLockScreenSettingsActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .local v0, cpn:Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 47
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 48
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 49
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v0           #cpn:Landroid/content/ComponentName;
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public setState(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "desiredState"

    .prologue
    .line 38
    return-void
.end method

.method protected toggleStateChange(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 56
    iget-object v4, p0, Lcom/android/systemui/statusbar/switcher/ScreenLockTracker;->mContext:Landroid/content/Context;

    const-string v5, "device_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 57
    .local v2, policyManager:Landroid/app/admin/DevicePolicyManager;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/systemui/statusbar/switcher/ScreenLockTracker;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/systemui/AdminReceiver;

    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    .local v1, mAdminName:Landroid/content/ComponentName;
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v2, v1, v4}, Landroid/app/admin/DevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;Z)V

    .line 60
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->lockNow()V

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/switcher/ScreenLockTracker;->getActualState(Landroid/content/Context;)I

    move-result v4

    int-to-byte v3, v4

    .line 62
    .local v3, state:B
    invoke-static {p1}, Lcom/android/systemui/UBCManager;->getDefault(Landroid/content/Context;)Lcom/android/systemui/UBCManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/ScreenLockTracker;->getSwitcherId()B

    move-result v5

    invoke-virtual {v4, v5, v3}, Lcom/android/systemui/UBCManager;->submitSwitcherClick(BB)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v3           #state:B
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, ex:Ljava/lang/Exception;
    const-string v4, "ScreenLockTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateView(Landroid/content/Context;Lcom/android/systemui/statusbar/switcher/SwitcherItemView;)V
    .locals 2
    .parameter "context"
    .parameter "view"

    .prologue
    const/4 v1, 0x1

    .line 32
    const v0, 0x7f02008c

    invoke-virtual {p2, v0, v1, v1}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->updateView(IZZ)V

    .line 33
    const v0, 0x7f0c00bd

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->setTitle(I)V

    .line 34
    return-void
.end method
