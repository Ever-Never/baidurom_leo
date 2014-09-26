.class public Lcom/android/systemui/statusbar/switcher/NightModeTracker;
.super Lcom/android/systemui/statusbar/switcher/SwitchTracker;
.source "NightModeTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/switcher/NightModeTracker$NightModeTask;,
        Lcom/android/systemui/statusbar/switcher/NightModeTracker$SettingsObserver;
    }
.end annotation


# static fields
.field private static final BEST_MATCH_BRIGHTNESS:I = 0xd2

.field private static final SETTINGS_NIGHT_MODE:Ljava/lang/String; = "night_mode"

.field private static final SETTINGS_NIGHT_MODE_ENABLE:Ljava/lang/String; = "night_mode_enable"

.field public static final TAG:Ljava/lang/String; = "NightModeTracker"

.field private static final TASK_ENABLE:I

.field private static inited:Z

.field private static isOn:Z

.field private static mNightView:Landroid/view/View;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private sSettingsObserver:Lcom/android/systemui/statusbar/switcher/NightModeTracker$SettingsObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    sput-boolean v0, Lcom/android/systemui/statusbar/switcher/NightModeTracker;->isOn:Z

    .line 29
    sput-boolean v0, Lcom/android/systemui/statusbar/switcher/NightModeTracker;->inited:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/switcher/NightModeTracker;->mContext:Landroid/content/Context;

    .line 39
    invoke-direct {p0}, Lcom/android/systemui/statusbar/switcher/NightModeTracker;->init()V

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/switcher/NightModeTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/systemui/statusbar/switcher/NightModeTracker;->removeNightView()Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    sput-boolean p0, Lcom/android/systemui/statusbar/switcher/NightModeTracker;->isOn:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/switcher/NightModeTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/systemui/statusbar/switcher/NightModeTracker;->addNightView()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/switcher/NightModeTracker;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/NightModeTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addNightView()Z
    .locals 4

    .prologue
    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/NightModeTracker;->mWindowManager:Landroid/view/WindowManager;

    sget-object v2, Lcom/android/systemui/statusbar/switcher/NightModeTracker;->mNightView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/switcher/NightModeTracker;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "NightModeTracker"

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

    .line 129
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 8

    .prologue
    const/4 v3, -0x1

    const/4 v7, 0x1

    const/high16 v5, -0x100

    const/4 v6, 0x0

    .line 43
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/NightModeTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 45
    .local v0, mScreenBrightnessDim:I
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/NightModeTracker;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/switcher/NightModeTracker;->mWindowManager:Landroid/view/WindowManager;

    .line 46
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/switcher/NightModeTracker;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 47
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/NightModeTracker;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x118

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 48
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/NightModeTracker;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v7, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 49
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/NightModeTracker;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x11

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 50
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/NightModeTracker;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x7d6

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 51
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/NightModeTracker;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 52
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/NightModeTracker;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 53
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/NightModeTracker;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 54
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/NightModeTracker;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 55
    sget-object v1, Lcom/android/systemui/statusbar/switcher/NightModeTracker;->mNightView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 56
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/switcher/NightModeTracker;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/systemui/statusbar/switcher/NightModeTracker;->mNightView:Landroid/view/View;

    .line 57
    sget-object v1, Lcom/android/systemui/statusbar/switcher/NightModeTracker;->mNightView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 58
    sget-object v1, Lcom/android/systemui/statusbar/switcher/NightModeTracker;->mNightView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 59
    sget-object v1, Lcom/android/systemui/statusbar/switcher/NightModeTracker;->mNightView:Landroid/view/View;

    rsub-int v2, v0, 0xd2

    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 62
    :cond_0
    sget-boolean v1, Lcom/android/systemui/statusbar/switcher/NightModeTracker;->inited:Z

    if-nez v1, :cond_1

    .line 63
    new-instance v1, Lcom/android/systemui/statusbar/switcher/NightModeTracker$NightModeTask;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/switcher/NightModeTracker$NightModeTask;-><init>(Lcom/android/systemui/statusbar/switcher/NightModeTracker;)V

    new-array v2, v7, [Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/switcher/NightModeTracker$NightModeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 64
    sput-boolean v7, Lcom/android/systemui/statusbar/switcher/NightModeTracker;->inited:Z

    .line 66
    :cond_1
    return-void
.end method

.method private removeNightView()Z
    .locals 4

    .prologue
    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/NightModeTracker;->mWindowManager:Landroid/view/WindowManager;

    sget-object v2, Lcom/android/systemui/statusbar/switcher/NightModeTracker;->mNightView:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "NightModeTracker"

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

    .line 139
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

    .line 89
    iget-object v2, p0, Lcom/android/systemui/statusbar/switcher/NightModeTracker;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 90
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/switcher/NightModeTracker;->mIsEnabled:Z

    .line 99
    :goto_0
    sget-boolean v2, Lcom/android/systemui/statusbar/switcher/NightModeTracker;->isOn:Z

    if-eqz v2, :cond_2

    :goto_1
    return v0

    .line 92
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/switcher/NightModeTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "night_mode_enable"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 94
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/switcher/NightModeTracker;->mIsEnabled:Z

    goto :goto_0

    .line 96
    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/switcher/NightModeTracker;->mIsEnabled:Z

    goto :goto_0

    :cond_2
    move v0, v1

    .line 99
    goto :goto_1
.end method

.method protected getSwitcherId()B
    .locals 1

    .prologue
    .line 218
    const/16 v0, 0xb

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->onAttach(Landroid/content/Context;)V

    .line 71
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/NightModeTracker;->sSettingsObserver:Lcom/android/systemui/statusbar/switcher/NightModeTracker$SettingsObserver;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/android/systemui/statusbar/switcher/NightModeTracker$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/statusbar/switcher/NightModeTracker$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/switcher/NightModeTracker;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/switcher/NightModeTracker;->sSettingsObserver:Lcom/android/systemui/statusbar/switcher/NightModeTracker$SettingsObserver;

    .line 74
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/NightModeTracker;->sSettingsObserver:Lcom/android/systemui/statusbar/switcher/NightModeTracker$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/switcher/NightModeTracker$SettingsObserver;->startObserving()V

    .line 76
    :cond_0
    return-void
.end method

.method public onDetach(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->onAttach(Landroid/content/Context;)V

    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/NightModeTracker;->sSettingsObserver:Lcom/android/systemui/statusbar/switcher/NightModeTracker$SettingsObserver;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/NightModeTracker;->sSettingsObserver:Lcom/android/systemui/statusbar/switcher/NightModeTracker$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/switcher/NightModeTracker$SettingsObserver;->stopObserving()V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/switcher/NightModeTracker;->sSettingsObserver:Lcom/android/systemui/statusbar/switcher/NightModeTracker$SettingsObserver;

    .line 85
    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 162
    return-void
.end method

.method public setState(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "desiredState"

    .prologue
    .line 122
    return-void
.end method

.method protected toggleStateChange(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 146
    iget v0, p0, Lcom/android/systemui/statusbar/switcher/NightModeTracker;->mCurrentState:I

    if-ne v0, v2, :cond_1

    .line 147
    invoke-direct {p0}, Lcom/android/systemui/statusbar/switcher/NightModeTracker;->removeNightView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    sput-boolean v3, Lcom/android/systemui/statusbar/switcher/NightModeTracker;->isOn:Z

    .line 149
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/NightModeTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "night_mode"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 157
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->toggleStateChange(Landroid/content/Context;)V

    .line 158
    return-void

    .line 152
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/switcher/NightModeTracker;->addNightView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    sput-boolean v2, Lcom/android/systemui/statusbar/switcher/NightModeTracker;->isOn:Z

    .line 154
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/NightModeTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "night_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public updateView(Landroid/content/Context;Lcom/android/systemui/statusbar/switcher/SwitcherItemView;)V
    .locals 5
    .parameter "context"
    .parameter "view"

    .prologue
    const v4, 0x7f02008f

    const v3, 0x7f02008e

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 104
    iget v0, p0, Lcom/android/systemui/statusbar/switcher/NightModeTracker;->mCurrentState:I

    if-ne v0, v1, :cond_1

    .line 105
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/switcher/NightModeTracker;->mIsEnabled:Z

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p2, v4, v1, v1}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->updateView(IZZ)V

    .line 117
    :goto_0
    const v0, 0x7f0c00b9

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->setTitle(I)V

    .line 118
    return-void

    .line 108
    :cond_0
    invoke-virtual {p2, v4, v1, v2}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->updateView(IZZ)V

    goto :goto_0

    .line 111
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/switcher/NightModeTracker;->mIsEnabled:Z

    if-eqz v0, :cond_2

    .line 112
    invoke-virtual {p2, v3, v1, v1}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->updateView(IZZ)V

    goto :goto_0

    .line 114
    :cond_2
    invoke-virtual {p2, v3, v1, v2}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->updateView(IZZ)V

    goto :goto_0
.end method
