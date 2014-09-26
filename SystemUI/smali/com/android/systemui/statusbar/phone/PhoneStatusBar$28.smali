.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;
.super Landroid/content/BroadcastReceiver;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .parameter

    .prologue
    .line 2726
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 37
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2730
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 2731
    .local v4, action:Ljava/lang/String;
    const-string v34, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_2

    .line 2732
    const/4 v12, 0x0

    .line 2733
    .local v12, flags:I
    const-string v34, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_0

    .line 2734
    const-string v34, "reason"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 2735
    .local v27, reason:Ljava/lang/String;
    if-eqz v27, :cond_0

    const-string v34, "recentapps"

    move-object/from16 v0, v27

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_0

    .line 2736
    or-int/lit8 v12, v12, 0x2

    .line 2739
    .end local v27           #reason:Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v12}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(I)V

    .line 2955
    .end local v12           #flags:I
    :cond_1
    :goto_0
    return-void

    .line 2741
    :cond_2
    const-string v34, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_3

    .line 2746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeExpandedInvisible()V

    .line 2747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyNavigationBarScreenOn(Z)V
    invoke-static/range {v34 .. v35}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    goto :goto_0

    .line 2749
    :cond_3
    const-string v34, "android.intent.action.CONFIGURATION_CHANGED"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_5

    .line 2754
    const/4 v13, 0x0

    .line 2755
    .local v13, fontChange:Z
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    .line 2756
    .local v11, currentConfig:Landroid/content/res/Configuration;
    iget v0, v11, Landroid/content/res/Configuration;->fontScale:F

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v35, v0

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPreviousConfigFontScale:F
    invoke-static/range {v35 .. v35}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)F

    move-result v35

    sub-float v34, v34, v35

    invoke-static/range {v34 .. v34}, Ljava/lang/Math;->abs(F)F

    move-result v34

    const v35, 0x3727c5ac

    cmpl-float v34, v34, v35

    if-lez v34, :cond_4

    .line 2757
    const/4 v13, 0x1

    .line 2758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->refreshExpandedView(Landroid/content/Context;)V

    .line 2759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v34, v0

    iget v0, v11, Landroid/content/res/Configuration;->fontScale:F

    move/from16 v35, v0

    #setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPreviousConfigFontScale:F
    invoke-static/range {v34 .. v35}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3102(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;F)F

    .line 2761
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateDisplaySize()V

    .line 2762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplay:Landroid/view/Display;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentDisplaySize:Landroid/graphics/Point;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 2763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateResources()V

    .line 2764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v34, v0

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->addNavigationBarGuestView()V
    invoke-static/range {v34 .. v34}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 2765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v34, v0

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->repositionNavigationBar()V
    invoke-static/range {v34 .. v34}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 2766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v34, v0

    const/16 v35, -0x2710

    invoke-virtual/range {v34 .. v35}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    .line 2767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v34, v0

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateShowSearchHoldoff()V
    invoke-static/range {v34 .. v34}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 2768
    if-nez v13, :cond_1

    .line 2769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v34, v0

    const/16 v35, 0x1

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateIndicatorAndButton(I)V
    invoke-static/range {v34 .. v35}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;I)V

    goto/16 :goto_0

    .line 2770
    .end local v11           #currentConfig:Landroid/content/res/Configuration;
    .end local v13           #fontChange:Z
    :cond_5
    const-string v34, "android.intent.action.THEME_CHANGED"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_6

    .line 2776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v34, v0

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateStatus()V
    invoke-static/range {v34 .. v34}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    goto/16 :goto_0

    .line 2777
    :cond_6
    const-string v34, "com.android.statusbar.ACTION_TRANSPARENT"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_7

    .line 2778
    const-string v34, "transparent"

    const/16 v35, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v32

    .line 2780
    .local v32, transparent:Z
    const-string v34, "lockstate"

    const/16 v35, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v24

    .line 2782
    .local v24, lockState:Z
    const-string v34, "reason"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 2784
    .restart local v27       #reason:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTransparentHelper:Lcom/android/systemui/statusbar/util/TransparentHelper;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v32

    move/from16 v2, v24

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/util/TransparentHelper;->setStatusBarTransparent(ZZLjava/lang/String;)V

    goto/16 :goto_0

    .line 2785
    .end local v24           #lockState:Z
    .end local v27           #reason:Ljava/lang/String;
    .end local v32           #transparent:Z
    :cond_7
    invoke-static {}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3700()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_9

    .line 2786
    invoke-static {}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3800()Ljava/lang/String;

    move-result-object v34

    const-wide/16 v35, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v29

    .line 2787
    .local v29, speed:J
    invoke-static {}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3900()Ljava/lang/String;

    move-result-object v34

    const/16 v35, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v31

    .line 2788
    .local v31, status:Z
    if-eqz v31, :cond_8

    .line 2789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v34, v0

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrafficSpeed:Landroid/widget/TextView;
    invoke-static/range {v34 .. v34}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/TextView;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    move-object/from16 v0, v35

    move-wide/from16 v1, v29

    move/from16 v3, v36

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/TrafficSpeedFormatter;->formatFileSize(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v34, v0

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrafficSpeed:Landroid/widget/TextView;
    invoke-static/range {v34 .. v34}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/TextView;

    move-result-object v34

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 2793
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v34, v0

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrafficSpeed:Landroid/widget/TextView;
    invoke-static/range {v34 .. v34}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/TextView;

    move-result-object v34

    const/16 v35, 0x8

    invoke-virtual/range {v34 .. v35}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 2795
    .end local v29           #speed:J
    .end local v31           #status:Z
    :cond_9
    const-string v34, "com.baidu.phone.refresh.quickview"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_11

    .line 2797
    const-string v34, "isShow"

    const/16 v35, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v22

    .line 2798
    .local v22, isShowQuickView:Z
    if-eqz v22, :cond_10

    .line 2799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickView:Landroid/view/View;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Landroid/view/View;->setVisibility(I)V

    .line 2800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickView:Landroid/view/View;

    move-object/from16 v34, v0

    const v35, 0x7f09006c

    invoke-virtual/range {v34 .. v35}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/ImageView;

    .line 2802
    .local v26, onGoingCall:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickView:Landroid/view/View;

    move-object/from16 v34, v0

    const v35, 0x7f09006d

    invoke-virtual/range {v34 .. v35}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    .line 2804
    .local v14, holding:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickView:Landroid/view/View;

    move-object/from16 v34, v0

    const v35, 0x7f090071

    invoke-virtual/range {v34 .. v35}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 2806
    .local v17, indicator:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickView:Landroid/view/View;

    move-object/from16 v34, v0

    const v35, 0x7f090074

    invoke-virtual/range {v34 .. v35}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 2808
    .local v7, bluetooth:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickView:Landroid/view/View;

    move-object/from16 v34, v0

    const v35, 0x7f090073

    invoke-virtual/range {v34 .. v35}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/ImageView;

    .line 2810
    .local v28, speaker:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickView:Landroid/view/View;

    move-object/from16 v34, v0

    const v35, 0x7f090072

    invoke-virtual/range {v34 .. v35}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/ImageView;

    .line 2811
    .local v25, mute:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickView:Landroid/view/View;

    move-object/from16 v34, v0

    const v35, 0x7f09006f

    invoke-virtual/range {v34 .. v35}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 2813
    .local v15, holdingIndicator:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickView:Landroid/view/View;

    move-object/from16 v34, v0

    const v35, 0x7f090070

    invoke-virtual/range {v34 .. v35}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Chronometer;

    .line 2816
    .local v9, ch:Landroid/widget/Chronometer;
    const-string v34, "show_chronometer"

    const/16 v35, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    .line 2817
    .local v21, isShowChr:Z
    const-string v34, "baseTime"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v35

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .line 2818
    .local v5, baseTime:J
    const-string v34, "isSpeakerOn"

    const/16 v35, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v23

    .line 2819
    .local v23, isSpeakerOn:Z
    const-string v34, "isMute"

    const/16 v35, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    .line 2820
    .local v19, isMute:Z
    const-string v34, "isOnlyOneHoldingPhone"

    const/16 v35, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    .line 2821
    .local v18, isHolding:Z
    const-string v34, "isShowBluetooth"

    const/16 v35, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    .line 2823
    .local v20, isShowBluetooth:Z
    if-eqz v18, :cond_a

    .line 2826
    const/16 v34, 0x8

    move-object/from16 v0, v26

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2827
    const/16 v34, 0x8

    move/from16 v0, v34

    invoke-virtual {v9, v0}, Landroid/widget/Chronometer;->setVisibility(I)V

    .line 2828
    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2829
    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2842
    :goto_1
    if-eqz v23, :cond_c

    .line 2843
    const/16 v34, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2847
    :goto_2
    if-eqz v19, :cond_d

    .line 2848
    const/16 v34, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2852
    :goto_3
    if-eqz v20, :cond_e

    .line 2853
    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2858
    :goto_4
    const-string v34, "background"

    invoke-static {}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4100()I

    move-result v35

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v33

    .line 2860
    .local v33, whichBackground:I
    invoke-static {}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4200()I

    move-result v34

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_f

    .line 2861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickView:Landroid/view/View;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    const v36, 0x7f02002f

    invoke-virtual/range {v35 .. v36}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 2831
    .end local v33           #whichBackground:I
    :cond_a
    const/16 v34, 0x8

    move/from16 v0, v34

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2832
    const/16 v34, 0x8

    move/from16 v0, v34

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2833
    const/16 v34, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2834
    if-eqz v21, :cond_b

    .line 2835
    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-virtual {v9, v0}, Landroid/widget/Chronometer;->setVisibility(I)V

    .line 2836
    invoke-virtual {v9, v5, v6}, Landroid/widget/Chronometer;->setBase(J)V

    .line 2837
    invoke-virtual {v9}, Landroid/widget/Chronometer;->start()V

    goto/16 :goto_1

    .line 2839
    :cond_b
    const/16 v34, 0x8

    move/from16 v0, v34

    invoke-virtual {v9, v0}, Landroid/widget/Chronometer;->setVisibility(I)V

    goto/16 :goto_1

    .line 2845
    :cond_c
    const/16 v34, 0x8

    move-object/from16 v0, v28

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 2850
    :cond_d
    const/16 v34, 0x8

    move-object/from16 v0, v25

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 2855
    :cond_e
    const/16 v34, 0x8

    move/from16 v0, v34

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    .line 2865
    .restart local v33       #whichBackground:I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickView:Landroid/view/View;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    const v36, 0x7f02002e

    invoke-virtual/range {v35 .. v36}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 2879
    .end local v5           #baseTime:J
    .end local v7           #bluetooth:Landroid/widget/ImageView;
    .end local v9           #ch:Landroid/widget/Chronometer;
    .end local v14           #holding:Landroid/widget/ImageView;
    .end local v15           #holdingIndicator:Landroid/widget/TextView;
    .end local v17           #indicator:Landroid/widget/TextView;
    .end local v18           #isHolding:Z
    .end local v19           #isMute:Z
    .end local v20           #isShowBluetooth:Z
    .end local v21           #isShowChr:Z
    .end local v23           #isSpeakerOn:Z
    .end local v25           #mute:Landroid/widget/ImageView;
    .end local v26           #onGoingCall:Landroid/widget/ImageView;
    .end local v28           #speaker:Landroid/widget/ImageView;
    .end local v33           #whichBackground:I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickView:Landroid/view/View;

    move-object/from16 v34, v0

    const/16 v35, 0x8

    invoke-virtual/range {v34 .. v35}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 2882
    .end local v22           #isShowQuickView:Z
    :cond_11
    const-string v34, "com.android.systemui.statusbar.switcher.show_panel"

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_16

    .line 2884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEditButton:Landroid/view/View;

    move-object/from16 v34, v0

    const-string v35, "visibility"

    const/16 v36, 0x8

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v35

    invoke-virtual/range {v34 .. v35}, Landroid/view/View;->setVisibility(I)V

    .line 2885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSwitchPanel:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    move-object/from16 v34, v0

    const-string v35, "visibility"

    const/16 v36, 0x8

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v35

    invoke-virtual/range {v34 .. v35}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->setVisibility(I)V

    .line 2888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    .line 2889
    .local v10, config:Landroid/content/res/Configuration;
    iget v0, v10, Landroid/content/res/Configuration;->orientation:I

    move/from16 v34, v0

    const/16 v35, 0x2

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_14

    .line 2890
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEditButton:Landroid/view/View;

    move-object/from16 v34, v0

    const/16 v35, 0x8

    invoke-virtual/range {v34 .. v35}, Landroid/view/View;->setVisibility(I)V

    .line 2894
    :cond_12
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setAreThereNotifications()V

    .line 2895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSwitchPanel:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->getVisibility()I

    move-result v34

    if-nez v34, :cond_15

    .line 2898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEditButton:Landroid/view/View;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getVisibility()I

    move-result v34

    if-nez v34, :cond_13

    .line 2899
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSwitchPanel:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    move-object/from16 v34, v0

    const/16 v35, 0x2

    invoke-virtual/range {v34 .. v35}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->showTip(I)V

    .line 2901
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-object/from16 v34, v0

    const v35, 0x7f090078

    invoke-virtual/range {v34 .. v35}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 2903
    .local v8, body:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelHeader:Landroid/view/View;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v35

    #setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeaderIndex:I
    invoke-static/range {v34 .. v35}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4302(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;I)I

    .line 2904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelHeader:Landroid/view/View;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 2905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSwitchPanel:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelHeader:Landroid/view/View;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->addHeader(Landroid/view/View;)V

    goto/16 :goto_0

    .line 2891
    .end local v8           #body:Landroid/widget/LinearLayout;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSwitchPanel:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->getVisibility()I

    move-result v34

    if-nez v34, :cond_12

    .line 2892
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEditButton:Landroid/view/View;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 2909
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTipEdit:Landroid/view/View;

    move-object/from16 v34, v0

    const/16 v35, 0x4

    invoke-virtual/range {v34 .. v35}, Landroid/view/View;->setVisibility(I)V

    .line 2910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTipDrag:Landroid/view/View;

    move-object/from16 v34, v0

    const/16 v35, 0x4

    invoke-virtual/range {v34 .. v35}, Landroid/view/View;->setVisibility(I)V

    .line 2911
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSwitchPanel:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelHeader:Landroid/view/View;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->removeView(Landroid/view/View;)V

    .line 2912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-object/from16 v34, v0

    const v35, 0x7f090078

    invoke-virtual/range {v34 .. v35}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 2914
    .restart local v8       #body:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelHeader:Landroid/view/View;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v35, v0

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeaderIndex:I
    invoke-static/range {v35 .. v35}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I

    move-result v35

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v8, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto/16 :goto_0

    .line 2917
    .end local v8           #body:Landroid/widget/LinearLayout;
    .end local v10           #config:Landroid/content/res/Configuration;
    :cond_16
    const-string v34, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_17

    .line 2920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v34, v0

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->repositionNavigationBar()V
    invoke-static/range {v34 .. v34}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 2921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v34, v0

    const/16 v35, 0x1

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyNavigationBarScreenOn(Z)V
    invoke-static/range {v34 .. v35}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    goto/16 :goto_0

    .line 2922
    :cond_17
    const-string v34, "android.intent.action.ACTION_QUICKBOOT_SHUTDOWN"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_19

    .line 2924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v34, v0

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;
    invoke-static/range {v34 .. v34}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v34

    if-eqz v34, :cond_1

    .line 2926
    const/16 v16, 0x0

    .local v16, i:I
    :goto_6
    const/16 v34, 0x4

    move/from16 v0, v16

    move/from16 v1, v34

    if-ge v0, v1, :cond_1

    .line 2927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v34, v0

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;
    invoke-static/range {v34 .. v34}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v34

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    move-object/from16 v34, v0

    aget-object v34, v34, v16

    if-eqz v34, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v34, v0

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;
    invoke-static/range {v34 .. v34}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v34

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    move-object/from16 v34, v0

    aget-object v34, v34, v16

    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getVisibility()I

    move-result v34

    const/16 v35, 0x8

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_18

    .line 2929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v34, v0

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;
    invoke-static/range {v34 .. v34}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v34

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    move-object/from16 v34, v0

    aget-object v34, v34, v16

    const/16 v35, 0x4

    invoke-virtual/range {v34 .. v35}, Landroid/view/View;->setVisibility(I)V

    .line 2926
    :cond_18
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 2933
    .end local v16           #i:I
    :cond_19
    const-string v34, "android.intent.action.ACTION_QUICKBOOT_BOOT"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_1a

    .line 2934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v34, v0

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;
    invoke-static/range {v34 .. v34}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v34

    if-eqz v34, :cond_1

    .line 2935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v34, v0

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;
    invoke-static/range {v34 .. v34}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v34

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    move-object/from16 v34, v0

    if-eqz v34, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v34, v0

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;
    invoke-static/range {v34 .. v34}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v34

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getVisibility()I

    move-result v34

    const/16 v35, 0x8

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_1

    .line 2937
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v34, v0

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;
    invoke-static/range {v34 .. v34}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v34

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 2941
    :cond_1a
    const-string v34, "android.intent.action.ACTION_REMOVE_HIDE_VIRTUAL_KEY_BUTTON"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_1c

    .line 2942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v34, v0

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;
    invoke-static/range {v34 .. v34}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v34

    if-eqz v34, :cond_1

    .line 2943
    sget-boolean v34, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->VIRTUAL_KEY_HIDE_FLAG:Z

    if-eqz v34, :cond_1b

    .line 2944
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v34, v0

    const/16 v35, 0x1

    invoke-virtual/range {v34 .. v35}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showNavigationBar(Z)V

    .line 2946
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v34, v0

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;
    invoke-static/range {v34 .. v34}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->removeHideButton()V

    goto/16 :goto_0

    .line 2948
    :cond_1c
    const-string v34, "android.intent.action.ACTION_ADD_HIDE_VIRTUAL_KEY_BUTTON"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_1d

    .line 2949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v34, v0

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;
    invoke-static/range {v34 .. v34}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v34

    if-eqz v34, :cond_1

    .line 2950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v34, v0

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;
    invoke-static/range {v34 .. v34}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->addHideButton()V

    goto/16 :goto_0

    .line 2952
    :cond_1d
    const-string v34, "android.intent.action.ACTION_CHANGE_VIRTUAL_KEY_POSITION"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_1

    .line 2953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v34, v0

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->repositionNavigationBar()V
    invoke-static/range {v34 .. v34}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    goto/16 :goto_0
.end method
