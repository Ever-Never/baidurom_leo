.class public Lcom/android/systemui/statusbar/switcher/Screenshot;
.super Lcom/android/systemui/statusbar/switcher/SwitchTracker;
.source "Screenshot.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mScreenshotConnection:Landroid/content/ServiceConnection;

.field private mScreenshotLock:Ljava/lang/Object;

.field final mScreenshotTimeout:Ljava/lang/Runnable;

.field final mTakeScreenshot:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;-><init>(Landroid/content/Context;)V

    .line 52
    new-instance v0, Lcom/android/systemui/statusbar/switcher/Screenshot$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/switcher/Screenshot$1;-><init>(Lcom/android/systemui/statusbar/switcher/Screenshot;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/switcher/Screenshot;->mTakeScreenshot:Ljava/lang/Runnable;

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/switcher/Screenshot;->mScreenshotLock:Ljava/lang/Object;

    .line 67
    iput-object v1, p0, Lcom/android/systemui/statusbar/switcher/Screenshot;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/switcher/Screenshot;->mHandler:Landroid/os/Handler;

    .line 69
    iput-object v1, p0, Lcom/android/systemui/statusbar/switcher/Screenshot;->mContext:Landroid/content/Context;

    .line 115
    new-instance v0, Lcom/android/systemui/statusbar/switcher/Screenshot$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/switcher/Screenshot$3;-><init>(Lcom/android/systemui/statusbar/switcher/Screenshot;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/switcher/Screenshot;->mScreenshotTimeout:Ljava/lang/Runnable;

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/switcher/Screenshot;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/Screenshot;->mScreenshotLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/switcher/Screenshot;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/Screenshot;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/switcher/Screenshot;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/switcher/Screenshot;->takeScreenShot(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/switcher/Screenshot;)Landroid/content/ServiceConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/Screenshot;->mScreenshotConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/switcher/Screenshot;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/android/systemui/statusbar/switcher/Screenshot;->mScreenshotConnection:Landroid/content/ServiceConnection;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/switcher/Screenshot;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/Screenshot;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private takeScreenShot(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 71
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.android.systemui"

    const-string v4, "com.android.systemui.screenshot.TakeScreenshotService"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .local v0, cn:Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 74
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 75
    new-instance v1, Lcom/android/systemui/statusbar/switcher/Screenshot$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/switcher/Screenshot$2;-><init>(Lcom/android/systemui/statusbar/switcher/Screenshot;Landroid/content/Context;)V

    .line 109
    .local v1, conn:Landroid/content/ServiceConnection;
    const/4 v3, 0x1

    invoke-virtual {p1, v2, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 110
    iput-object v1, p0, Lcom/android/systemui/statusbar/switcher/Screenshot;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 111
    iget-object v3, p0, Lcom/android/systemui/statusbar/switcher/Screenshot;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/statusbar/switcher/Screenshot;->mScreenshotTimeout:Ljava/lang/Runnable;

    const-wide/16 v5, 0x2710

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 113
    :cond_0
    return-void
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method protected getSwitcherId()B
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x7

    return v0
.end method

.method public onClick(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/systemui/statusbar/switcher/Screenshot;->mContext:Landroid/content/Context;

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/switcher/Screenshot;->collapse(Landroid/content/Context;)V

    .line 47
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/Screenshot;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/switcher/Screenshot;->mTakeScreenshot:Ljava/lang/Runnable;

    const-wide/16 v3, 0x190

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/switcher/Screenshot;->getActualState(Landroid/content/Context;)I

    move-result v1

    int-to-byte v0, v1

    .line 49
    .local v0, state:B
    invoke-static {p1}, Lcom/android/systemui/UBCManager;->getDefault(Landroid/content/Context;)Lcom/android/systemui/UBCManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/Screenshot;->getSwitcherId()B

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/UBCManager;->submitSwitcherClick(BB)V

    .line 50
    return-void
.end method

.method public onLongClick(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 63
    return-void
.end method

.method public setState(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "desiredState"

    .prologue
    .line 42
    return-void
.end method

.method public updateView(Landroid/content/Context;Lcom/android/systemui/statusbar/switcher/SwitcherItemView;)V
    .locals 2
    .parameter "context"
    .parameter "view"

    .prologue
    const/4 v1, 0x1

    .line 35
    const v0, 0x7f02009f

    invoke-virtual {p2, v0, v1, v1}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->updateView(IZZ)V

    .line 36
    const v0, 0x7f0c00b3

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->setTitle(I)V

    .line 37
    return-void
.end method
