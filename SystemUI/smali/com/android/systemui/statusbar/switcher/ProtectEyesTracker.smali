.class public Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;
.super Lcom/android/systemui/statusbar/switcher/SwitchTracker;
.source "ProtectEyesTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker$ProtectEyeTask;,
        Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker$SettingsObserver;
    }
.end annotation


# static fields
.field private static final SETTINGS_PROTECT_EYES_ENABLE:Ljava/lang/String; = "protect_eyes_enable"

.field private static final SETTINGS_PROTECT_EYES_MODE:Ljava/lang/String; = "protect_eyes"

.field public static final TAG:Ljava/lang/String; = "ProtectEyesTracker"

.field private static final TASK_ENABLE:I

.field private static inited:Z

.field private static isOn:Z

.field private static mProtectEyesView:Landroid/view/View;


# instance fields
.field mAlpha:F

.field mBlue:F

.field private mContext:Landroid/content/Context;

.field mDelta:F

.field mGreen:F

.field mPercent:F

.field mRed:F

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private sSettingsObserver:Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker$SettingsObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    sput-boolean v0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->isOn:Z

    .line 27
    sput-boolean v0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->inited:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;-><init>(Landroid/content/Context;)V

    .line 34
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->mPercent:F

    .line 35
    const/high16 v0, 0x4120

    iput v0, p0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->mDelta:F

    .line 36
    const/high16 v0, 0x4270

    iput v0, p0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->mBlue:F

    .line 37
    const/high16 v0, 0x4334

    iput v0, p0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->mGreen:F

    .line 38
    const/high16 v0, 0x4348

    iput v0, p0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->mRed:F

    .line 39
    iget v0, p0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->mGreen:F

    iput v0, p0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->mAlpha:F

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->mContext:Landroid/content/Context;

    .line 44
    invoke-direct {p0}, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->init()V

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->removeProtectView()Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    sput-boolean p0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->isOn:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->addProtectView()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addProtectView()Z
    .locals 4

    .prologue
    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->mWindowManager:Landroid/view/WindowManager;

    sget-object v2, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->mProtectEyesView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ProtectEyesTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t add view : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 9

    .prologue
    const/4 v3, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 48
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->mWindowManager:Landroid/view/WindowManager;

    .line 49
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 50
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x118

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 51
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 52
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x11

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 53
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x7d6

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 54
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 55
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 56
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 57
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 58
    sget-object v1, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->mProtectEyesView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 59
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->mProtectEyesView:Landroid/view/View;

    .line 60
    sget-object v1, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->mProtectEyesView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 61
    sget-object v1, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->mProtectEyesView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 62
    iget v1, p0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->mPercent:F

    iget v2, p0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->mAlpha:F

    sub-float/2addr v2, v7

    mul-float/2addr v1, v2

    add-float/2addr v1, v7

    float-to-int v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->mPercent:F

    iget v3, p0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->mDelta:F

    iget v4, p0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->mRed:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->mRed:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->mPercent:F

    iget v4, p0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->mDelta:F

    iget v5, p0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->mGreen:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->mGreen:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, p0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->mPercent:F

    iget v5, p0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->mBlue:F

    sub-float v5, v7, v5

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->mBlue:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 64
    .local v0, color:I
    sget-object v1, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->mProtectEyesView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 66
    .end local v0           #color:I
    :cond_0
    sget-boolean v1, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->inited:Z

    if-nez v1, :cond_1

    .line 67
    new-instance v1, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker$ProtectEyeTask;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker$ProtectEyeTask;-><init>(Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;)V

    new-array v2, v8, [Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker$ProtectEyeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 68
    sput-boolean v8, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->inited:Z

    .line 70
    :cond_1
    return-void
.end method

.method private removeProtectView()Z
    .locals 4

    .prologue
    .line 140
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->mWindowManager:Landroid/view/WindowManager;

    sget-object v2, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->mProtectEyesView:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ProtectEyesTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t remove view : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 93
    iget-object v2, p0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 94
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->mIsEnabled:Z

    .line 103
    :goto_0
    sget-boolean v2, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->isOn:Z

    if-eqz v2, :cond_2

    :goto_1
    return v0

    .line 96
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "protect_eyes_enable"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 98
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->mIsEnabled:Z

    goto :goto_0

    .line 100
    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->mIsEnabled:Z

    goto :goto_0

    :cond_2
    move v0, v1

    .line 103
    goto :goto_1
.end method

.method protected getSwitcherId()B
    .locals 1

    .prologue
    .line 222
    const/16 v0, 0x16

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->onAttach(Landroid/content/Context;)V

    .line 75
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->sSettingsObserver:Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker$SettingsObserver;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->sSettingsObserver:Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker$SettingsObserver;

    .line 78
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->sSettingsObserver:Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker$SettingsObserver;->startObserving()V

    .line 80
    :cond_0
    return-void
.end method

.method public onDetach(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->onAttach(Landroid/content/Context;)V

    .line 85
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->sSettingsObserver:Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker$SettingsObserver;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->sSettingsObserver:Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker$SettingsObserver;->stopObserving()V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->sSettingsObserver:Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker$SettingsObserver;

    .line 89
    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 166
    return-void
.end method

.method public setState(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "desiredState"

    .prologue
    .line 126
    return-void
.end method

.method protected toggleStateChange(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 150
    iget v0, p0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->mCurrentState:I

    if-ne v0, v2, :cond_1

    .line 151
    invoke-direct {p0}, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->removeProtectView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    sput-boolean v3, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->isOn:Z

    .line 153
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "protect_eyes"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 161
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->toggleStateChange(Landroid/content/Context;)V

    .line 162
    return-void

    .line 156
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->addProtectView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    sput-boolean v2, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->isOn:Z

    .line 158
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "protect_eyes"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public updateView(Landroid/content/Context;Lcom/android/systemui/statusbar/switcher/SwitcherItemView;)V
    .locals 5
    .parameter "context"
    .parameter "view"

    .prologue
    const v4, 0x7f020094

    const v3, 0x7f020093

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 108
    iget v0, p0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->mCurrentState:I

    if-ne v0, v1, :cond_1

    .line 109
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->mIsEnabled:Z

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p2, v4, v1, v1}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->updateView(IZZ)V

    .line 121
    :goto_0
    const v0, 0x7f0c00ba

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->setTitle(I)V

    .line 122
    return-void

    .line 112
    :cond_0
    invoke-virtual {p2, v4, v1, v2}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->updateView(IZZ)V

    goto :goto_0

    .line 115
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->mIsEnabled:Z

    if-eqz v0, :cond_2

    .line 116
    invoke-virtual {p2, v3, v1, v1}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->updateView(IZZ)V

    goto :goto_0

    .line 118
    :cond_2
    invoke-virtual {p2, v3, v1, v2}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->updateView(IZZ)V

    goto :goto_0
.end method
