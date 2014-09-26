.class public Lcom/android/systemui/statusbar/phone/MyViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "MyViewPager.java"


# instance fields
.field private configuration:Landroid/view/ViewConfiguration;

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mPanelView:Landroid/view/View;

.field private mScrollView:Landroid/view/View;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MyViewPager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MyViewPager;->configuration:Landroid/view/ViewConfiguration;

    .line 30
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MyViewPager;->configuration:Landroid/view/ViewConfiguration;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/MyViewPager;->mTouchSlop:I

    .line 31
    return-void
.end method

.method private animating()Z
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MyViewPager;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MyViewPager;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MyViewPager;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyExpanded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MyViewPager;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    const/4 v0, 0x1

    .line 139
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private inRange(Landroid/view/View;FF)Z
    .locals 7
    .parameter "view"
    .parameter "xPos"
    .parameter "yPos"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 115
    if-nez p1, :cond_0

    .line 125
    :goto_0
    return v4

    .line 116
    :cond_0
    const/4 v5, 0x2

    new-array v0, v5, [I

    .line 118
    .local v0, mViewPos:[I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MyViewPager;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0038

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr p3, v5

    .line 120
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 121
    aget v5, v0, v4

    int-to-float v5, v5

    cmpl-float v5, p2, v5

    if-lez v5, :cond_1

    aget v5, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    cmpg-float v5, p2, v5

    if-gez v5, :cond_1

    move v1, v3

    .line 123
    .local v1, xInner:Z
    :goto_1
    aget v5, v0, v3

    int-to-float v5, v5

    cmpl-float v5, p3, v5

    if-lez v5, :cond_2

    aget v5, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    cmpg-float v5, p3, v5

    if-gez v5, :cond_2

    move v2, v3

    .line 125
    .local v2, yInner:Z
    :goto_2
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    :goto_3
    move v4, v3

    goto :goto_0

    .end local v1           #xInner:Z
    .end local v2           #yInner:Z
    :cond_1
    move v1, v4

    .line 121
    goto :goto_1

    .restart local v1       #xInner:Z
    :cond_2
    move v2, v4

    .line 123
    goto :goto_2

    .restart local v2       #yInner:Z
    :cond_3
    move v3, v4

    .line 125
    goto :goto_3
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "ev"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 35
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MyViewPager;->animating()Z

    move-result v8

    if-eqz v8, :cond_0

    move v8, v9

    .line 73
    :goto_0
    return v8

    .line 38
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 39
    .local v3, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 40
    .local v6, y:F
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/MyViewPager;->mScrollView:Landroid/view/View;

    if-nez v8, :cond_1

    .line 41
    const v8, 0x7f090088

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/phone/MyViewPager;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ScrollView;

    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/MyViewPager;->mScrollView:Landroid/view/View;

    .line 42
    :cond_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/MyViewPager;->mPanelView:Landroid/view/View;

    if-nez v8, :cond_2

    .line 43
    const v8, 0x7f0900ab

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/phone/MyViewPager;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/MyViewPager;->mPanelView:Landroid/view/View;

    .line 44
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 71
    :cond_3
    :pswitch_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    goto :goto_0

    .line 47
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iput v8, p0, Lcom/android/systemui/statusbar/phone/MyViewPager;->mLastMotionX:F

    .line 48
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iput v8, p0, Lcom/android/systemui/statusbar/phone/MyViewPager;->mLastMotionY:F

    .line 49
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/MyViewPager;->mScrollView:Landroid/view/View;

    iget v11, p0, Lcom/android/systemui/statusbar/phone/MyViewPager;->mLastMotionX:F

    iget v12, p0, Lcom/android/systemui/statusbar/phone/MyViewPager;->mLastMotionY:F

    invoke-direct {p0, v8, v11, v12}, Lcom/android/systemui/statusbar/phone/MyViewPager;->inRange(Landroid/view/View;FF)Z

    move-result v8

    if-eqz v8, :cond_3

    move v8, v10

    .line 50
    goto :goto_0

    .line 56
    :pswitch_2
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/MyViewPager;->mPanelView:Landroid/view/View;

    iget v11, p0, Lcom/android/systemui/statusbar/phone/MyViewPager;->mLastMotionX:F

    iget v12, p0, Lcom/android/systemui/statusbar/phone/MyViewPager;->mLastMotionY:F

    invoke-direct {p0, v8, v11, v12}, Lcom/android/systemui/statusbar/phone/MyViewPager;->inRange(Landroid/view/View;FF)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 57
    iget v8, p0, Lcom/android/systemui/statusbar/phone/MyViewPager;->mLastMotionX:F

    sub-float v8, v3, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-int v4, v8

    .line 58
    .local v4, xDiff:I
    iget v8, p0, Lcom/android/systemui/statusbar/phone/MyViewPager;->mLastMotionY:F

    sub-float/2addr v8, v6

    float-to-int v7, v8

    .line 60
    .local v7, yDiff:I
    iget v2, p0, Lcom/android/systemui/statusbar/phone/MyViewPager;->mTouchSlop:I

    .line 61
    .local v2, touchSlop:I
    mul-int/lit8 v8, v2, 0x3

    if-le v4, v8, :cond_4

    move v5, v9

    .line 62
    .local v5, xMoved:Z
    :goto_1
    mul-int/lit8 v8, v2, 0x6

    if-le v7, v8, :cond_5

    if-nez v5, :cond_5

    move v0, v9

    .line 63
    .local v0, collapse:Z
    :goto_2
    if-eqz v0, :cond_3

    .line 64
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MyViewPager;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v10, "statusbar"

    invoke-virtual {v8, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/StatusBarManager;

    invoke-virtual {v8}, Landroid/app/StatusBarManager;->collapsePanels()V

    move v8, v9

    .line 65
    goto/16 :goto_0

    .end local v0           #collapse:Z
    .end local v5           #xMoved:Z
    :cond_4
    move v5, v10

    .line 61
    goto :goto_1

    .restart local v5       #xMoved:Z
    :cond_5
    move v0, v10

    .line 62
    goto :goto_2

    .line 72
    .end local v2           #touchSlop:I
    .end local v4           #xDiff:I
    .end local v5           #xMoved:Z
    .end local v7           #yDiff:I
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    move v8, v9

    .line 73
    goto/16 :goto_0

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "ev"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 79
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MyViewPager;->animating()Z

    move-result v8

    if-eqz v8, :cond_0

    move v8, v9

    .line 110
    :goto_0
    return v8

    .line 82
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 83
    .local v3, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 84
    .local v6, y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 108
    :cond_1
    :goto_1
    :pswitch_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    goto :goto_0

    .line 86
    :pswitch_1
    iget v8, p0, Lcom/android/systemui/statusbar/phone/MyViewPager;->mLastMotionX:F

    sub-float v8, v3, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-int v4, v8

    .line 87
    .local v4, xDiff:I
    iget v8, p0, Lcom/android/systemui/statusbar/phone/MyViewPager;->mLastMotionY:F

    sub-float/2addr v8, v6

    float-to-int v7, v8

    .line 89
    .local v7, yDiff:I
    iget v2, p0, Lcom/android/systemui/statusbar/phone/MyViewPager;->mTouchSlop:I

    .line 90
    .local v2, touchSlop:I
    mul-int/lit8 v8, v2, 0x3

    if-le v4, v8, :cond_3

    move v5, v9

    .line 91
    .local v5, xMoved:Z
    :goto_2
    mul-int/lit8 v8, v2, 0x6

    if-le v7, v8, :cond_4

    if-nez v5, :cond_4

    move v0, v9

    .line 92
    .local v0, collapse:Z
    :goto_3
    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MyViewPager;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v11, "statusbar"

    invoke-virtual {v8, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/StatusBarManager;

    invoke-virtual {v8}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 94
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/MyViewPager;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v8, :cond_2

    .line 95
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MyViewPager;->getCurrentItem()I

    move-result v8

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/MyViewPager;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v11, v11, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v11, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/2addr v8, v11

    invoke-virtual {p0, v8, v10}, Lcom/android/systemui/statusbar/phone/MyViewPager;->scrollTo(II)V

    :cond_2
    move v8, v9

    .line 97
    goto :goto_0

    .end local v0           #collapse:Z
    .end local v5           #xMoved:Z
    :cond_3
    move v5, v10

    .line 90
    goto :goto_2

    .restart local v5       #xMoved:Z
    :cond_4
    move v0, v10

    .line 91
    goto :goto_3

    .line 102
    .end local v2           #touchSlop:I
    .end local v4           #xDiff:I
    .end local v5           #xMoved:Z
    .end local v7           #yDiff:I
    :pswitch_2
    iput v3, p0, Lcom/android/systemui/statusbar/phone/MyViewPager;->mLastMotionX:F

    .line 103
    iput v6, p0, Lcom/android/systemui/statusbar/phone/MyViewPager;->mLastMotionY:F

    goto :goto_1

    .line 109
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    move v8, v9

    .line 110
    goto :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .parameter "statusBar"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MyViewPager;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 130
    return-void
.end method
