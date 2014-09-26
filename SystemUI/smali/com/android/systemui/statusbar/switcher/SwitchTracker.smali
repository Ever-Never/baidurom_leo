.class public abstract Lcom/android/systemui/statusbar/switcher/SwitchTracker;
.super Ljava/lang/Object;
.source "SwitchTracker.java"


# static fields
.field private static final CHECK_TASK_DELAY_TIME:I = 0xfa0

.field public static final DEBUG:Z = false

.field public static final STATE_OFF:I = 0x0

.field public static final STATE_ON:I = 0x1

.field public static final STATE_TURNING_OFF:I = 0x3

.field public static final STATE_TURNING_ON:I = 0x2

.field public static final STATE_UNKNOWN:I = 0x9

.field public static final TAG:Ljava/lang/String; = "SwitchTracker"


# instance fields
.field private mClickTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mCurrentState:I

.field private mHandler:Landroid/os/Handler;

.field public mIsEnabled:Z

.field private mStatusManager:Landroid/app/StatusBarManager;

.field public mSwitcherId:B

.field protected mView:Lcom/android/systemui/statusbar/switcher/SwitcherItemView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->mClickTask:Landroid/os/AsyncTask;

    .line 26
    iput-object v0, p0, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->mHandler:Landroid/os/Handler;

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->mIsEnabled:Z

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->mHandler:Landroid/os/Handler;

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->getActualState(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->mCurrentState:I

    .line 49
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->getSwitcherId()B

    move-result v0

    iput-byte v0, p0, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->mSwitcherId:B

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/switcher/SwitchTracker;)Landroid/os/AsyncTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->mClickTask:Landroid/os/AsyncTask;

    return-object v0
.end method

.method public static final debug(Ljava/lang/String;)V
    .locals 2
    .parameter "str"

    .prologue
    .line 29
    const-string v0, "SwitchTracker"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    const-string v0, "SwitchTracker"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_0
    return-void
.end method

.method private startTaskCheck()V
    .locals 4

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/switcher/SwitchTracker$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/switcher/SwitchTracker$2;-><init>(Lcom/android/systemui/statusbar/switcher/SwitchTracker;)V

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 159
    :cond_0
    return-void
.end method


# virtual methods
.method protected collapse(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 170
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->mStatusManager:Landroid/app/StatusBarManager;

    if-nez v1, :cond_0

    .line 171
    const-string v1, "statusbar"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->mStatusManager:Landroid/app/StatusBarManager;

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->mStatusManager:Landroid/app/StatusBarManager;

    invoke-virtual {v1}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 178
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_0
    const-string v1, "keyguard"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 183
    .local v0, kgm:Landroid/app/KeyguardManager;
    if-eqz v0, :cond_1

    .line 184
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->exitKeyguardSecurely(Landroid/app/KeyguardManager$OnKeyguardExitResult;)V

    .line 185
    :cond_1
    return-void

    .line 179
    .end local v0           #kgm:Landroid/app/KeyguardManager;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected abstract getActualState(Landroid/content/Context;)I
.end method

.method protected abstract getSwitcherId()B
.end method

.method public getSwitcherItemView()Lcom/android/systemui/statusbar/switcher/SwitcherItemView;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->mView:Lcom/android/systemui/statusbar/switcher/SwitcherItemView;

    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->updateStatus(Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method public onClick(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 162
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->toggleStateChange(Landroid/content/Context;)V

    .line 163
    return-void
.end method

.method public onDetach(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 62
    return-void
.end method

.method public onLongClick(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 166
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->collapse(Landroid/content/Context;)V

    .line 167
    return-void
.end method

.method public onPanelVisibilityChanged(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 189
    return-void
.end method

.method public final requestStateChange(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "newState"

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->startTaskCheck()V

    .line 132
    new-instance v0, Lcom/android/systemui/statusbar/switcher/SwitchTracker$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/switcher/SwitchTracker$1;-><init>(Lcom/android/systemui/statusbar/switcher/SwitchTracker;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->mClickTask:Landroid/os/AsyncTask;

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->mClickTask:Landroid/os/AsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 145
    return-void
.end method

.method public final senEnabled(Landroid/content/Context;Z)V
    .locals 0
    .parameter "context"
    .parameter "isEnabled"

    .prologue
    .line 72
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->mIsEnabled:Z

    .line 73
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->updateStatus(Landroid/content/Context;)V

    .line 74
    return-void
.end method

.method protected abstract setState(Landroid/content/Context;I)V
.end method

.method public setSwitcherView(Lcom/android/systemui/statusbar/switcher/SwitcherItemView;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->mView:Lcom/android/systemui/statusbar/switcher/SwitcherItemView;

    .line 54
    return-void
.end method

.method protected toggleStateChange(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 111
    iget v1, p0, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->mCurrentState:I

    if-ne v1, v2, :cond_0

    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, state:B
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->requestStateChange(Landroid/content/Context;I)V

    .line 118
    :goto_0
    invoke-static {p1}, Lcom/android/systemui/UBCManager;->getDefault(Landroid/content/Context;)Lcom/android/systemui/UBCManager;

    move-result-object v1

    iget-byte v2, p0, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->mSwitcherId:B

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/UBCManager;->submitSwitcherClick(BB)V

    .line 119
    return-void

    .line 115
    .end local v0           #state:B
    :cond_0
    const/4 v0, 0x1

    .line 116
    .restart local v0       #state:B
    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->requestStateChange(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public final updateStatus(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->getActualState(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->mCurrentState:I

    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->mView:Lcom/android/systemui/statusbar/switcher/SwitcherItemView;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->updateView(Landroid/content/Context;Lcom/android/systemui/statusbar/switcher/SwitcherItemView;)V

    .line 87
    return-void
.end method

.method public abstract updateView(Landroid/content/Context;Lcom/android/systemui/statusbar/switcher/SwitcherItemView;)V
.end method
