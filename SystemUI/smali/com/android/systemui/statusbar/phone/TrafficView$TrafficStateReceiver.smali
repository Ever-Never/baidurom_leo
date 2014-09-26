.class public Lcom/android/systemui/statusbar/phone/TrafficView$TrafficStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TrafficView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/TrafficView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TrafficStateReceiver"
.end annotation


# static fields
.field static final EXTRA_MOBILE_BYTES:Ljava/lang/String; = "MOBILE_BYTES"

.field static final EXTRA_MOBILE_DAY_BYTES:Ljava/lang/String; = "MOBILE_DAY_BYTES"

.field static final EXTRA_MONTH_PACKAGE_BYTES:Ljava/lang/String; = "PACKAGE_SIZE"

.field static final EXTRA_SIM_ID:Ljava/lang/String; = "simId"

.field static final TRAFFICACTION:Ljava/lang/String; = "com.baidu.yi.trafficmonitor.notify"


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/TrafficView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/TrafficView;)V
    .locals 0
    .parameter

    .prologue
    .line 473
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficStateReceiver;->this$0:Lcom/android/systemui/statusbar/phone/TrafficView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 483
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 484
    .local v9, action:Ljava/lang/String;
    const-string v1, "com.baidu.yi.trafficmonitor.notify"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 485
    const-string v1, "PACKAGE_SIZE"

    const-wide/16 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v13, v14}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 486
    .local v2, totalSize:J
    const-string v1, "MOBILE_DAY_BYTES"

    const-wide/16 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v13, v14}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 487
    .local v6, daySize:J
    const-string v1, "MOBILE_BYTES"

    const-wide/16 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v13, v14}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 488
    .local v4, monthSize:J
    const-string v1, "simId"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 489
    .local v8, slotId:I
    const-string v1, "StatusBar-TrafficView"

    const/4 v13, 0x3

    invoke-static {v1, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 490
    const-string v1, "StatusBar-TrafficView"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "TrafficStateReceiver "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v1, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficStateReceiver;->this$0:Lcom/android/systemui/statusbar/phone/TrafficView;

    #getter for: Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficManager:Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/TrafficView;->access$300(Lcom/android/systemui/statusbar/phone/TrafficView;)Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;

    move-result-object v1

    invoke-virtual/range {v1 .. v8}, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;->onTrafficChanged(JJJI)V

    .line 531
    .end local v2           #totalSize:J
    .end local v4           #monthSize:J
    .end local v6           #daySize:J
    .end local v8           #slotId:I
    :cond_1
    :goto_0
    return-void

    .line 495
    :cond_2
    const-string v1, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 496
    const-string v1, "sim_id"

    const-wide/16 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v13, v14}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    .line 497
    .local v10, simId:J
    move-object/from16 v0, p1

    invoke-static {v0, v10, v11}, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->getSIMInfoById(Landroid/content/Context;J)Landroid/telephony/BaiduTelephonyUtils$SIMInfo;

    move-result-object v12

    .line 498
    .local v12, simInfo:Landroid/telephony/BaiduTelephonyUtils$SIMInfo;
    if-eqz v12, :cond_1

    .line 499
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficStateReceiver;->this$0:Lcom/android/systemui/statusbar/phone/TrafficView;

    #getter for: Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficManager:Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/TrafficView;->access$300(Lcom/android/systemui/statusbar/phone/TrafficView;)Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;->updateSimName(Landroid/telephony/BaiduTelephonyUtils$SIMInfo;)V

    goto :goto_0

    .line 501
    .end local v10           #simId:J
    .end local v12           #simInfo:Landroid/telephony/BaiduTelephonyUtils$SIMInfo;
    :cond_3
    const-string v1, "android.intent.action.THEME_CHANGED"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 502
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficStateReceiver;->this$0:Lcom/android/systemui/statusbar/phone/TrafficView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/TrafficView;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_4

    .line 503
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficStateReceiver;->this$0:Lcom/android/systemui/statusbar/phone/TrafficView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/TrafficView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/LoadThemeResource;->resetBackgroundResource(Landroid/view/View;)V

    .line 504
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficStateReceiver;->this$0:Lcom/android/systemui/statusbar/phone/TrafficView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/TrafficView;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficStateReceiver;->this$0:Lcom/android/systemui/statusbar/phone/TrafficView;

    #getter for: Lcom/android/systemui/statusbar/phone/TrafficView;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/systemui/statusbar/phone/TrafficView;->access$200(Lcom/android/systemui/statusbar/phone/TrafficView;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0202d1

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v1, v13}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 506
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficStateReceiver;->this$0:Lcom/android/systemui/statusbar/phone/TrafficView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficText:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 507
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficStateReceiver;->this$0:Lcom/android/systemui/statusbar/phone/TrafficView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficText:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/LoadThemeResource;->resetColorResource(Landroid/view/View;)V

    .line 508
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficStateReceiver;->this$0:Lcom/android/systemui/statusbar/phone/TrafficView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficText:Landroid/widget/TextView;

    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficStateReceiver;->this$0:Lcom/android/systemui/statusbar/phone/TrafficView;

    #getter for: Lcom/android/systemui/statusbar/phone/TrafficView;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/systemui/statusbar/phone/TrafficView;->access$200(Lcom/android/systemui/statusbar/phone/TrafficView;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a0008

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 510
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficStateReceiver;->this$0:Lcom/android/systemui/statusbar/phone/TrafficView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficConfig:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    .line 511
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficStateReceiver;->this$0:Lcom/android/systemui/statusbar/phone/TrafficView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficConfig:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/LoadThemeResource;->resetColorResource(Landroid/view/View;)V

    .line 512
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficStateReceiver;->this$0:Lcom/android/systemui/statusbar/phone/TrafficView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficConfig:Landroid/widget/TextView;

    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficStateReceiver;->this$0:Lcom/android/systemui/statusbar/phone/TrafficView;

    #getter for: Lcom/android/systemui/statusbar/phone/TrafficView;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/systemui/statusbar/phone/TrafficView;->access$200(Lcom/android/systemui/statusbar/phone/TrafficView;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a0006

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 514
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficStateReceiver;->this$0:Lcom/android/systemui/statusbar/phone/TrafficView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficSimName:Landroid/widget/TextView;

    if-eqz v1, :cond_7

    .line 515
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficStateReceiver;->this$0:Lcom/android/systemui/statusbar/phone/TrafficView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficSimName:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/LoadThemeResource;->resetColorResource(Landroid/view/View;)V

    .line 516
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficStateReceiver;->this$0:Lcom/android/systemui/statusbar/phone/TrafficView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficSimName:Landroid/widget/TextView;

    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficStateReceiver;->this$0:Lcom/android/systemui/statusbar/phone/TrafficView;

    #getter for: Lcom/android/systemui/statusbar/phone/TrafficView;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/systemui/statusbar/phone/TrafficView;->access$200(Lcom/android/systemui/statusbar/phone/TrafficView;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a0006

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 518
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficStateReceiver;->this$0:Lcom/android/systemui/statusbar/phone/TrafficView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficProgressText:Landroid/widget/TextView;

    if-eqz v1, :cond_8

    .line 519
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficStateReceiver;->this$0:Lcom/android/systemui/statusbar/phone/TrafficView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficProgressText:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/LoadThemeResource;->resetColorResource(Landroid/view/View;)V

    .line 520
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficStateReceiver;->this$0:Lcom/android/systemui/statusbar/phone/TrafficView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficProgressText:Landroid/widget/TextView;

    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficStateReceiver;->this$0:Lcom/android/systemui/statusbar/phone/TrafficView;

    #getter for: Lcom/android/systemui/statusbar/phone/TrafficView;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/systemui/statusbar/phone/TrafficView;->access$200(Lcom/android/systemui/statusbar/phone/TrafficView;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a0008

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 522
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficStateReceiver;->this$0:Lcom/android/systemui/statusbar/phone/TrafficView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficMonth:Landroid/widget/TextView;

    if-eqz v1, :cond_9

    .line 523
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficStateReceiver;->this$0:Lcom/android/systemui/statusbar/phone/TrafficView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficMonth:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/LoadThemeResource;->resetColorResource(Landroid/view/View;)V

    .line 524
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficStateReceiver;->this$0:Lcom/android/systemui/statusbar/phone/TrafficView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficMonth:Landroid/widget/TextView;

    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficStateReceiver;->this$0:Lcom/android/systemui/statusbar/phone/TrafficView;

    #getter for: Lcom/android/systemui/statusbar/phone/TrafficView;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/systemui/statusbar/phone/TrafficView;->access$200(Lcom/android/systemui/statusbar/phone/TrafficView;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a0009

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 526
    :cond_9
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficStateReceiver;->this$0:Lcom/android/systemui/statusbar/phone/TrafficView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficDay:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 527
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficStateReceiver;->this$0:Lcom/android/systemui/statusbar/phone/TrafficView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficDay:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/LoadThemeResource;->resetColorResource(Landroid/view/View;)V

    .line 528
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficStateReceiver;->this$0:Lcom/android/systemui/statusbar/phone/TrafficView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficDay:Landroid/widget/TextView;

    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficStateReceiver;->this$0:Lcom/android/systemui/statusbar/phone/TrafficView;

    #getter for: Lcom/android/systemui/statusbar/phone/TrafficView;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/systemui/statusbar/phone/TrafficView;->access$200(Lcom/android/systemui/statusbar/phone/TrafficView;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a000a

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0
.end method
