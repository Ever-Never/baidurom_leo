.class public Lcom/android/systemui/statusbar/switcher/SwitchBar;
.super Landroid/widget/LinearLayout;
.source "SwitchBar.java"


# instance fields
.field private line_Arrays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHelper:Lcom/android/systemui/statusbar/switcher/SwitchHelper;

.field private mHolder:Landroid/widget/LinearLayout;

.field public mReceiver:Landroid/content/BroadcastReceiver;

.field private mScroller:Lcom/android/systemui/statusbar/switcher/MyHorizontalScrollView;

.field private mSwitchTrackerList:[Lcom/android/systemui/statusbar/switcher/SwitchTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/switcher/SwitchBar;->line_Arrays:Ljava/util/List;

    .line 106
    new-instance v0, Lcom/android/systemui/statusbar/switcher/SwitchBar$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/switcher/SwitchBar$1;-><init>(Lcom/android/systemui/statusbar/switcher/SwitchBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/switcher/SwitchBar;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 39
    iput-object p1, p0, Lcom/android/systemui/statusbar/switcher/SwitchBar;->mContext:Landroid/content/Context;

    .line 40
    invoke-static {p1}, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/switcher/SwitchHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/switcher/SwitchBar;->mHelper:Lcom/android/systemui/statusbar/switcher/SwitchHelper;

    .line 41
    return-void
.end method


# virtual methods
.method public getHolder()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/SwitchBar;->mHolder:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getLineArrays()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/SwitchBar;->line_Arrays:Ljava/util/List;

    return-object v0
.end method

.method public getSwitchTrackerList()[Lcom/android/systemui/statusbar/switcher/SwitchTracker;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/SwitchBar;->mSwitchTrackerList:[Lcom/android/systemui/statusbar/switcher/SwitchTracker;

    return-object v0
.end method

.method public initSwitchBar()V
    .locals 10

    .prologue
    .line 49
    iget-object v8, p0, Lcom/android/systemui/statusbar/switcher/SwitchBar;->mHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 50
    iget-object v8, p0, Lcom/android/systemui/statusbar/switcher/SwitchBar;->line_Arrays:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 51
    iget-object v8, p0, Lcom/android/systemui/statusbar/switcher/SwitchBar;->mHelper:Lcom/android/systemui/statusbar/switcher/SwitchHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/SwitchBar;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->createSwitchList(Landroid/content/Context;)[Lcom/android/systemui/statusbar/switcher/SwitchTracker;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/statusbar/switcher/SwitchBar;->mSwitchTrackerList:[Lcom/android/systemui/statusbar/switcher/SwitchTracker;

    .line 53
    iget-object v8, p0, Lcom/android/systemui/statusbar/switcher/SwitchBar;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 54
    .local v1, dm:Landroid/util/DisplayMetrics;
    iget v8, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v9, p0, Lcom/android/systemui/statusbar/switcher/SwitchBar;->mSwitchTrackerList:[Lcom/android/systemui/statusbar/switcher/SwitchTracker;

    array-length v9, v9

    div-int v3, v8, v9

    .line 55
    .local v3, iconWith:I
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/SwitchBar;->mSwitchTrackerList:[Lcom/android/systemui/statusbar/switcher/SwitchTracker;

    .local v0, arr$:[Lcom/android/systemui/statusbar/switcher/SwitchTracker;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v7, v0, v2

    .line 56
    .local v7, tracker:Lcom/android/systemui/statusbar/switcher/SwitchTracker;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/SwitchBar;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->inflate(Landroid/content/Context;)Lcom/android/systemui/statusbar/switcher/SwitcherItemView;

    move-result-object v6

    .line 61
    .local v6, switcherView:Lcom/android/systemui/statusbar/switcher/SwitcherItemView;
    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->bindTracker(Lcom/android/systemui/statusbar/switcher/SwitchTracker;)V

    .line 62
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    invoke-direct {v5, v3, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 63
    .local v5, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v8, p0, Lcom/android/systemui/statusbar/switcher/SwitchBar;->mHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 75
    .end local v5           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v6           #switcherView:Lcom/android/systemui/statusbar/switcher/SwitcherItemView;
    .end local v7           #tracker:Lcom/android/systemui/statusbar/switcher/SwitchTracker;
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 85
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 86
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 87
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.android.systemui.statusbar.switcher.update"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/SwitchBar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/switcher/SwitchBar;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 90
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 94
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 95
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/SwitchBar;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/SwitchBar;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 96
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 44
    const v0, 0x7f0900c4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/switcher/SwitchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/switcher/SwitchBar;->mHolder:Landroid/widget/LinearLayout;

    .line 45
    const v0, 0x7f0900c3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/switcher/SwitchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/switcher/MyHorizontalScrollView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/switcher/SwitchBar;->mScroller:Lcom/android/systemui/statusbar/switcher/MyHorizontalScrollView;

    .line 46
    return-void
.end method
