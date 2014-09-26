.class public Lcom/android/systemui/statusbar/phone/TrafficView;
.super Landroid/widget/RelativeLayout;
.source "TrafficView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/TrafficView$TrafficStateReceiver;,
        Lcom/android/systemui/statusbar/phone/TrafficView$SettingsObserver;,
        Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;,
        Lcom/android/systemui/statusbar/phone/TrafficView$SimTrafficInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StatusBar-TrafficView"

.field private static final THRESHOLD:I = 0x5a

.field private static mDualSimSupport:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field mFinishInflate:Z

.field mIsThreshold:Z

.field mMouthPlusDayProgress:F

.field mProgress:F

.field mProgressBar:Landroid/widget/ProgressBar;

.field mProgressBarRed:Landroid/widget/ProgressBar;

.field mProgressFormatText:Ljava/lang/String;

.field private mStatusManager:Landroid/app/StatusBarManager;

.field mSwitchReceiver:Lcom/android/systemui/statusbar/phone/TrafficView$TrafficStateReceiver;

.field mTotalTraffic:J

.field mTrafficConfig:Landroid/widget/TextView;

.field mTrafficDay:Landroid/widget/TextView;

.field mTrafficHolder:Landroid/view/View;

.field private mTrafficManager:Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;

.field mTrafficMonth:Landroid/widget/TextView;

.field mTrafficProgressText:Landroid/widget/TextView;

.field mTrafficSimName:Landroid/widget/TextView;

.field mTrafficText:Landroid/widget/TextView;

.field mTrafficTitle:Landroid/widget/TextView;

.field mUsedDayTraffic:J

.field mUsedMonthTraffic:J

.field private preFontScale:F

.field private sSettingsObserver:Lcom/android/systemui/statusbar/phone/TrafficView$SettingsObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mDualSimSupport:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/TrafficView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 196
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 199
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/TrafficView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 200
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 203
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    iput v1, p0, Lcom/android/systemui/statusbar/phone/TrafficView;->mProgress:F

    .line 56
    iput v1, p0, Lcom/android/systemui/statusbar/phone/TrafficView;->mMouthPlusDayProgress:F

    .line 57
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/TrafficView;->mProgressFormatText:Ljava/lang/String;

    .line 73
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/TrafficView;->mIsThreshold:Z

    .line 75
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/TrafficView;->mFinishInflate:Z

    .line 86
    new-instance v0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;-><init>(Lcom/android/systemui/statusbar/phone/TrafficView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficManager:Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;

    .line 399
    iput v1, p0, Lcom/android/systemui/statusbar/phone/TrafficView;->preFontScale:F

    .line 429
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/TrafficView;->mSwitchReceiver:Lcom/android/systemui/statusbar/phone/TrafficView$TrafficStateReceiver;

    .line 204
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TrafficView;->mContext:Landroid/content/Context;

    .line 205
    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 47
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mDualSimSupport:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/TrafficView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TrafficView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/TrafficView;)Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficManager:Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/TrafficView;)Landroid/app/StatusBarManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TrafficView;->mStatusManager:Landroid/app/StatusBarManager;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/phone/TrafficView;Landroid/app/StatusBarManager;)Landroid/app/StatusBarManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TrafficView;->mStatusManager:Landroid/app/StatusBarManager;

    return-object p1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 433
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 434
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/TrafficView;->registerSwitchReceiver()V

    .line 435
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mDualSimSupport:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TrafficView;->sSettingsObserver:Lcom/android/systemui/statusbar/phone/TrafficView$SettingsObserver;

    if-nez v0, :cond_0

    .line 436
    new-instance v0, Lcom/android/systemui/statusbar/phone/TrafficView$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TrafficView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/statusbar/phone/TrafficView$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/phone/TrafficView;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TrafficView;->sSettingsObserver:Lcom/android/systemui/statusbar/phone/TrafficView$SettingsObserver;

    .line 438
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TrafficView;->sSettingsObserver:Lcom/android/systemui/statusbar/phone/TrafficView$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TrafficView$SettingsObserver;->startObserving()V

    .line 440
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 444
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 445
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/TrafficView;->unRegisterSwitchReceiver()V

    .line 446
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mDualSimSupport:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TrafficView;->sSettingsObserver:Lcom/android/systemui/statusbar/phone/TrafficView$SettingsObserver;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TrafficView;->sSettingsObserver:Lcom/android/systemui/statusbar/phone/TrafficView$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TrafficView$SettingsObserver;->stopObserving()V

    .line 448
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TrafficView;->sSettingsObserver:Lcom/android/systemui/statusbar/phone/TrafficView$SettingsObserver;

    .line 450
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 208
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 211
    const v1, 0x7f0900b9

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/TrafficView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/TrafficView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 213
    const v1, 0x7f0900b8

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/TrafficView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficText:Landroid/widget/TextView;

    .line 214
    const v1, 0x7f0900b3

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/TrafficView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficConfig:Landroid/widget/TextView;

    .line 216
    const v1, 0x7f0900b4

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/TrafficView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficSimName:Landroid/widget/TextView;

    .line 217
    const v1, 0x7f0900b7

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/TrafficView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficProgressText:Landroid/widget/TextView;

    .line 218
    const v1, 0x7f0900b6

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/TrafficView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficMonth:Landroid/widget/TextView;

    .line 219
    const v1, 0x7f0900b5

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/TrafficView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficDay:Landroid/widget/TextView;

    .line 221
    const v1, 0x7f0900b1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/TrafficView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficHolder:Landroid/view/View;

    .line 224
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficHolder:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/statusbar/phone/TrafficView$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/TrafficView$1;-><init>(Lcom/android/systemui/statusbar/phone/TrafficView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/TrafficView;->mFinishInflate:Z

    .line 263
    const/4 v0, 0x0

    .line 264
    .local v0, curSlotId:I
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/TrafficView;->mDualSimSupport:Z

    if-eqz v1, :cond_0

    .line 265
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrafficView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/BaiduTelephonyUtils;->getPreferredDataSlot(Landroid/content/Context;)I

    move-result v0

    .line 266
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 267
    const/4 v0, 0x0

    .line 270
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficManager:Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;->setCurrentSimId(I)V

    .line 271
    return-void
.end method

.method public registerSwitchReceiver()V
    .locals 3

    .prologue
    .line 453
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 455
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.baidu.yi.trafficmonitor.notify"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 456
    const-string v1, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 457
    const-string v1, "android.intent.action.THEME_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 458
    new-instance v1, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficStateReceiver;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficStateReceiver;-><init>(Lcom/android/systemui/statusbar/phone/TrafficView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/TrafficView;->mSwitchReceiver:Lcom/android/systemui/statusbar/phone/TrafficView$TrafficStateReceiver;

    .line 459
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrafficView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TrafficView;->mSwitchReceiver:Lcom/android/systemui/statusbar/phone/TrafficView$TrafficStateReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 460
    return-void
.end method

.method setCustomTextSize(Landroid/widget/TextView;)V
    .locals 10
    .parameter "v"

    .prologue
    const/16 v9, 0x21

    const/4 v8, 0x1

    .line 536
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 537
    .local v4, str:Ljava/lang/String;
    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 538
    .local v1, index1:I
    const/4 v2, 0x0

    .line 539
    .local v2, index2:I
    const/4 v0, 0x0

    .line 541
    .local v0, i:I
    add-int/lit8 v0, v1, 0x1

    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 543
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    if-lt v5, v6, :cond_0

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x39

    if-le v5, v6, :cond_1

    :cond_0
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_2

    .line 541
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 549
    :cond_2
    move v2, v0

    .line 551
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 552
    .local v3, span:Landroid/text/Spannable;
    new-instance v5, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v6, 0xb

    invoke-direct {v5, v6, v8}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    const/4 v6, 0x0

    add-int/lit8 v7, v1, 0x1

    invoke-interface {v3, v5, v6, v7, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 553
    new-instance v5, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v6, 0xf

    invoke-direct {v5, v6, v8}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    add-int/lit8 v6, v1, 0x1

    invoke-interface {v3, v5, v6, v2, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 554
    new-instance v5, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v6, 0x9

    invoke-direct {v5, v6, v8}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-interface {v3, v5, v2, v6, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 555
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 556
    return-void
.end method

.method public setTrafficState(JJJ)V
    .locals 8
    .parameter "total"
    .parameter "month"
    .parameter "day"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const v5, 0x4479c000

    const/high16 v4, 0x42c8

    .line 403
    iput-wide p5, p0, Lcom/android/systemui/statusbar/phone/TrafficView;->mUsedDayTraffic:J

    .line 404
    iput-wide p3, p0, Lcom/android/systemui/statusbar/phone/TrafficView;->mUsedMonthTraffic:J

    .line 405
    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/TrafficView;->mTotalTraffic:J

    .line 407
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/TrafficView;->mTotalTraffic:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 408
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/TrafficView;->mUsedMonthTraffic:J

    long-to-float v0, v0

    iget-wide v1, p0, Lcom/android/systemui/statusbar/phone/TrafficView;->mTotalTraffic:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    mul-float/2addr v0, v4

    iput v0, p0, Lcom/android/systemui/statusbar/phone/TrafficView;->mProgress:F

    .line 409
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/TrafficView;->mUsedMonthTraffic:J

    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/TrafficView;->mUsedDayTraffic:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget-wide v1, p0, Lcom/android/systemui/statusbar/phone/TrafficView;->mTotalTraffic:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    mul-float/2addr v0, v4

    iput v0, p0, Lcom/android/systemui/statusbar/phone/TrafficView;->mMouthPlusDayProgress:F

    .line 412
    iget v0, p0, Lcom/android/systemui/statusbar/phone/TrafficView;->mProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/TrafficView;->mProgress:F

    const/high16 v1, 0x3f80

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 413
    const-string v0, "%.1f%%"

    new-array v1, v7, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/TrafficView;->mProgress:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TrafficView;->mProgressFormatText:Ljava/lang/String;

    .line 417
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/TrafficView;->mProgress:F

    const/high16 v1, 0x42b4

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 418
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/TrafficView;->mIsThreshold:Z

    .line 422
    :goto_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/TrafficView;->mProgress:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_0

    .line 423
    iput v5, p0, Lcom/android/systemui/statusbar/phone/TrafficView;->mProgress:F

    .line 426
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/TrafficView;->updateTrafficState()V

    .line 427
    return-void

    .line 415
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/systemui/statusbar/phone/TrafficView;->mProgress:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TrafficView;->mProgressFormatText:Ljava/lang/String;

    goto :goto_0

    .line 420
    :cond_2
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/TrafficView;->mIsThreshold:Z

    goto :goto_1
.end method

.method public unRegisterSwitchReceiver()V
    .locals 2

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TrafficView;->mSwitchReceiver:Lcom/android/systemui/statusbar/phone/TrafficView$TrafficStateReceiver;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TrafficView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrafficView;->mSwitchReceiver:Lcom/android/systemui/statusbar/phone/TrafficView$TrafficStateReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 466
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TrafficView;->mSwitchReceiver:Lcom/android/systemui/statusbar/phone/TrafficView$TrafficStateReceiver;

    .line 468
    :cond_0
    return-void
.end method

.method public updateTrafficState()V
    .locals 19

    .prologue
    .line 275
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mFinishInflate:Z

    if-nez v10, :cond_0

    .line 397
    :goto_0
    return-void

    .line 278
    :cond_0
    sget-boolean v10, Lcom/android/systemui/statusbar/phone/TrafficView;->mDualSimSupport:Z

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    .line 280
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v9

    .line 281
    .local v9, siminfo:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/BaiduTelephonyUtils$SIMInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    .line 282
    .local v4, count:I
    if-nez v4, :cond_2

    .line 284
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 285
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficSimName:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 286
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficMonth:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 287
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficDay:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 288
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficProgressText:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 289
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficConfig:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 290
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficText:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 291
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficConfig:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c00cf

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 297
    .end local v4           #count:I
    .end local v9           #siminfo:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/BaiduTelephonyUtils$SIMInfo;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mContext:Landroid/content/Context;

    const-string v11, "phone"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 298
    .local v6, phone:Landroid/telephony/TelephonyManager;
    const-string v10, "StatusBar-TrafficView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "has icc card = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v10

    if-nez v10, :cond_2

    .line 301
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficSimName:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 302
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficMonth:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 303
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficDay:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 304
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficProgressText:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 305
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficConfig:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 306
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficText:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 307
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficConfig:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c00cf

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 313
    .end local v6           #phone:Landroid/telephony/TelephonyManager;
    :cond_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficManager:Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;->getCurrentSimNameString()Ljava/lang/String;

    move-result-object v8

    .line 314
    .local v8, simName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mTotalTraffic:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-gtz v10, :cond_4

    .line 315
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 316
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficSimName:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 317
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficMonth:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 318
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficDay:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 319
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficProgressText:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 320
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficConfig:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 321
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficText:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 323
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficText:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0c00c9

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "%s"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mUsedMonthTraffic:J

    const/16 v17, 0x0

    invoke-static/range {v14 .. v17}, Lcom/android/systemui/statusbar/TrafficSpeedFormatter;->formatFileSize(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    if-eqz v8, :cond_3

    .line 327
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c00ca

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 328
    .local v3, configText:Ljava/lang/String;
    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 329
    .local v7, simIndex:I
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 330
    .local v2, configSpanText:Landroid/text/SpannableString;
    new-instance v10, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficManager:Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;->getCurrentSimColor()I

    move-result v11

    invoke-direct {v10, v11}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v7

    const/16 v12, 0x21

    invoke-virtual {v2, v10, v7, v11, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 331
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficConfig:Landroid/widget/TextView;

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 333
    .end local v2           #configSpanText:Landroid/text/SpannableString;
    .end local v3           #configText:Ljava/lang/String;
    .end local v7           #simIndex:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficConfig:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c00ca

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, ""

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 336
    :cond_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 337
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficMonth:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 338
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficDay:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 339
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficProgressText:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 340
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficConfig:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 341
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficText:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 343
    sget-boolean v10, Lcom/android/systemui/statusbar/phone/TrafficView;->mDualSimSupport:Z

    if-eqz v10, :cond_5

    .line 344
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficSimName:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 345
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficDay:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 346
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficSimName:Landroid/widget/TextView;

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficSimName:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficManager:Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;->getCurrentSimColor()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 353
    :goto_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mProgressBar:Landroid/widget/ProgressBar;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mProgress:F

    float-to-int v11, v11

    invoke-virtual {v10, v11}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 356
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficDay:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c00ce

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mUsedDayTraffic:J

    const/16 v17, 0x0

    invoke-static/range {v14 .. v17}, Lcom/android/systemui/statusbar/TrafficSpeedFormatter;->formatFileSize(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficMonth:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c00cd

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mUsedMonthTraffic:J

    const/16 v17, 0x0

    invoke-static/range {v14 .. v17}, Lcom/android/systemui/statusbar/TrafficSpeedFormatter;->formatFileSize(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    const/4 v5, 0x0

    .line 364
    .local v5, mPackageText:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mTotalTraffic:J

    const-wide/32 v12, 0x38400000

    cmp-long v10, v10, v12

    if-gez v10, :cond_6

    .line 365
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mTotalTraffic:J

    const-wide/32 v13, 0x100000

    div-long/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "MB"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 370
    :goto_2
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mProgress:F

    const/high16 v11, 0x42b4

    cmpg-float v10, v10, v11

    if-gez v10, :cond_7

    .line 371
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficProgressText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0008

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 378
    :goto_3
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mUsedMonthTraffic:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mTotalTraffic:J

    cmp-long v10, v10, v12

    if-gtz v10, :cond_9

    .line 382
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficProgressText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c00cb

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mTotalTraffic:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mUsedMonthTraffic:J

    move-wide/from16 v17, v0

    sub-long v15, v15, v17

    const/16 v17, 0x0

    invoke-static/range {v14 .. v17}, Lcom/android/systemui/statusbar/TrafficSpeedFormatter;->formatFileSize(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    :goto_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficDay:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/systemui/statusbar/phone/TrafficView;->setCustomTextSize(Landroid/widget/TextView;)V

    .line 394
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficMonth:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/systemui/statusbar/phone/TrafficView;->setCustomTextSize(Landroid/widget/TextView;)V

    .line 395
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficProgressText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/systemui/statusbar/phone/TrafficView;->setCustomTextSize(Landroid/widget/TextView;)V

    goto/16 :goto_0

    .line 349
    .end local v5           #mPackageText:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficSimName:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 350
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficDay:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 367
    .restart local v5       #mPackageText:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mTotalTraffic:J

    const/4 v13, 0x0

    invoke-static {v10, v11, v12, v13}, Lcom/android/systemui/statusbar/TrafficSpeedFormatter;->formatFileSize(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 372
    :cond_7
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mProgress:F

    const v11, 0x42c8000d

    cmpg-float v10, v10, v11

    if-gez v10, :cond_8

    .line 373
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficProgressText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a000b

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3

    .line 375
    :cond_8
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficProgressText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a000c

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3

    .line 389
    :cond_9
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficProgressText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c00cc

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mUsedMonthTraffic:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mTotalTraffic:J

    move-wide/from16 v17, v0

    sub-long v15, v15, v17

    const/16 v17, 0x0

    invoke-static/range {v14 .. v17}, Lcom/android/systemui/statusbar/TrafficSpeedFormatter;->formatFileSize(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4
.end method
