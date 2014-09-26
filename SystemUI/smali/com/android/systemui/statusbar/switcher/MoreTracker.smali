.class public Lcom/android/systemui/statusbar/switcher/MoreTracker;
.super Lcom/android/systemui/statusbar/switcher/SwitchTracker;
.source "MoreTracker.java"


# static fields
.field public static resId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const v0, 0x7f02008d

    sput v0, Lcom/android/systemui/statusbar/switcher/MoreTracker;->resId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 25
    const/4 v0, 0x1

    return v0
.end method

.method protected getSwitcherId()B
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/switcher/MoreTracker;->collapse(Landroid/content/Context;)V

    .line 52
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 53
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/android/systemui/statusbar/switcher/activity/SwitcherMoreActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 55
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 56
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onLongClick(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 74
    return-void
.end method

.method public setState(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "desiredState"

    .prologue
    .line 47
    return-void
.end method

.method public updateView(Landroid/content/Context;Lcom/android/systemui/statusbar/switcher/SwitcherItemView;)V
    .locals 2
    .parameter "context"
    .parameter "view"

    .prologue
    const/4 v1, 0x1

    .line 30
    sget-boolean v0, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->mPanelMode:Z

    if-ne v0, v1, :cond_0

    .line 32
    const v0, 0x7f020099

    sput v0, Lcom/android/systemui/statusbar/switcher/MoreTracker;->resId:I

    .line 33
    const v0, 0x7f0c00f9

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->setTip(I)V

    .line 40
    :goto_0
    sget v0, Lcom/android/systemui/statusbar/switcher/MoreTracker;->resId:I

    invoke-virtual {p2, v0, v1, v1}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->updateView(IZZ)V

    .line 41
    const v0, 0x7f0c00b7

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->setTitle(I)V

    .line 42
    return-void

    .line 37
    :cond_0
    const v0, 0x7f02008d

    sput v0, Lcom/android/systemui/statusbar/switcher/MoreTracker;->resId:I

    .line 38
    const v0, 0x7f0c00fa

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->setTip(I)V

    goto :goto_0
.end method
