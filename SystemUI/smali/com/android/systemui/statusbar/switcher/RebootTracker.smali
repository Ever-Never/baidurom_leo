.class public Lcom/android/systemui/statusbar/switcher/RebootTracker;
.super Lcom/android/systemui/statusbar/switcher/SwitchTracker;
.source "RebootTracker.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PowerOffTracker"

.field private static isOn:Z


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui/statusbar/switcher/RebootTracker;->isOn:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/switcher/RebootTracker;->mContext:Landroid/content/Context;

    .line 20
    invoke-direct {p0}, Lcom/android/systemui/statusbar/switcher/RebootTracker;->init()V

    .line 21
    return-void
.end method

.method private init()V
    .locals 0

    .prologue
    .line 24
    return-void
.end method

.method private showConfirmDialog(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 60
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 61
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/android/systemui/statusbar/switcher/activity/ConfirmActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 62
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 63
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 64
    return-void
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 28
    sget-boolean v0, Lcom/android/systemui/statusbar/switcher/RebootTracker;->isOn:Z

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
    .line 56
    const/16 v0, 0x11

    return v0
.end method

.method public onLongClick(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 39
    return-void
.end method

.method public setState(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "desiredState"

    .prologue
    .line 44
    return-void
.end method

.method protected toggleStateChange(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 48
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/RebootTracker;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/switcher/RebootTracker;->collapse(Landroid/content/Context;)V

    .line 49
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/switcher/RebootTracker;->showConfirmDialog(Landroid/content/Context;)V

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/switcher/RebootTracker;->getActualState(Landroid/content/Context;)I

    move-result v1

    int-to-byte v0, v1

    .line 51
    .local v0, state:B
    invoke-static {p1}, Lcom/android/systemui/UBCManager;->getDefault(Landroid/content/Context;)Lcom/android/systemui/UBCManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/RebootTracker;->getSwitcherId()B

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/UBCManager;->submitSwitcherClick(BB)V

    .line 52
    return-void
.end method

.method public updateView(Landroid/content/Context;Lcom/android/systemui/statusbar/switcher/SwitcherItemView;)V
    .locals 2
    .parameter "context"
    .parameter "view"

    .prologue
    const/4 v1, 0x1

    .line 33
    const v0, 0x7f020098

    invoke-virtual {p2, v0, v1, v1}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->updateView(IZZ)V

    .line 34
    const v0, 0x7f0c00bc

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->setTitle(I)V

    .line 35
    return-void
.end method
