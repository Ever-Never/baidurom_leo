.class public Lcom/android/systemui/statusbar/switcher/QRCodeTracker;
.super Lcom/android/systemui/statusbar/switcher/SwitchTracker;
.source "QRCodeTracker.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method


# virtual methods
.method protected getActualState(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 33
    const/4 v0, 0x1

    return v0
.end method

.method protected getSwitcherId()B
    .locals 1

    .prologue
    .line 60
    const/16 v0, 0x13

    return v0
.end method

.method public onClick(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/switcher/QRCodeTracker;->collapse(Landroid/content/Context;)V

    .line 43
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.baidu.searchbox"

    const-string v3, "com.baidu.searchbox.BarcodeScanner"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .local v0, cpn:Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 46
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 47
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 48
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .end local v0           #cpn:Landroid/content/ComponentName;
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onLongClick(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 55
    return-void
.end method

.method protected setState(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "newState"

    .prologue
    .line 38
    return-void
.end method

.method public updateView(Landroid/content/Context;Lcom/android/systemui/statusbar/switcher/SwitcherItemView;)V
    .locals 2
    .parameter "context"
    .parameter "view"

    .prologue
    const/4 v1, 0x1

    .line 27
    const v0, 0x7f020096

    invoke-virtual {p2, v0, v1, v1}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->updateView(IZZ)V

    .line 28
    const v0, 0x7f0c00c6

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->setTitle(I)V

    .line 29
    return-void
.end method
