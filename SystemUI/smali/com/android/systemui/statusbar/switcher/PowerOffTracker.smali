.class public Lcom/android/systemui/statusbar/switcher/PowerOffTracker;
.super Lcom/android/systemui/statusbar/switcher/SwitchTracker;
.source "PowerOffTracker.java"


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

    sput-boolean v0, Lcom/android/systemui/statusbar/switcher/PowerOffTracker;->isOn:Z

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

    iput-object v0, p0, Lcom/android/systemui/statusbar/switcher/PowerOffTracker;->mContext:Landroid/content/Context;

    .line 20
    invoke-direct {p0}, Lcom/android/systemui/statusbar/switcher/PowerOffTracker;->init()V

    .line 21
    return-void
.end method

.method private init()V
    .locals 0

    .prologue
    .line 24
    return-void
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 28
    sget-boolean v0, Lcom/android/systemui/statusbar/switcher/PowerOffTracker;->isOn:Z

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
    .line 62
    const/16 v0, 0xd

    return v0
.end method

.method public onLongClick(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 40
    return-void
.end method

.method public setState(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "desiredState"

    .prologue
    .line 45
    return-void
.end method

.method protected toggleStateChange(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 49
    iget-object v2, p0, Lcom/android/systemui/statusbar/switcher/PowerOffTracker;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/switcher/PowerOffTracker;->collapse(Landroid/content/Context;)V

    .line 51
    :try_start_0
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 52
    .local v0, pm:Landroid/os/IPowerManager;
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IPowerManager;->shutdown(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v0           #pm:Landroid/os/IPowerManager;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/switcher/PowerOffTracker;->getActualState(Landroid/content/Context;)I

    move-result v2

    int-to-byte v1, v2

    .line 57
    .local v1, state:B
    invoke-static {p1}, Lcom/android/systemui/UBCManager;->getDefault(Landroid/content/Context;)Lcom/android/systemui/UBCManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/PowerOffTracker;->getSwitcherId()B

    move-result v3

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/UBCManager;->submitSwitcherClick(BB)V

    .line 58
    return-void

    .line 53
    .end local v1           #state:B
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public updateView(Landroid/content/Context;Lcom/android/systemui/statusbar/switcher/SwitcherItemView;)V
    .locals 3
    .parameter "context"
    .parameter "view"

    .prologue
    const/4 v2, 0x1

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateView PowerOffTracker:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/switcher/PowerOffTracker;->mCurrentState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->debug(Ljava/lang/String;)V

    .line 34
    const v0, 0x7f020092

    invoke-virtual {p2, v0, v2, v2}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->updateView(IZZ)V

    .line 35
    const v0, 0x7f0c00bb

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->setTitle(I)V

    .line 36
    return-void
.end method
