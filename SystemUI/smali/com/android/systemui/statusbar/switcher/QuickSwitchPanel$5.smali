.class Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$5;
.super Landroid/content/BroadcastReceiver;
.source "QuickSwitchPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 1362
    iput-object p1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$5;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1366
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1367
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1368
    iget-object v2, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$5;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$3200(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 1370
    .local v1, config:Landroid/content/res/Configuration;
    iget v2, v1, Landroid/content/res/Configuration;->fontScale:F

    iget-object v3, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$5;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mPreviousConfigFontScale:F
    invoke-static {v3}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$3500(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3727c5ac

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 1371
    iget-object v2, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$5;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    iget v3, v1, Landroid/content/res/Configuration;->fontScale:F

    #setter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mPreviousConfigFontScale:F
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$3502(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;F)F

    .line 1381
    .end local v1           #config:Landroid/content/res/Configuration;
    :cond_0
    :goto_0
    return-void

    .line 1373
    .restart local v1       #config:Landroid/content/res/Configuration;
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$5;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mLanguage:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$3602(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;Ljava/lang/String;)Ljava/lang/String;

    .line 1374
    iget-object v2, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$5;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->saveSwitchConfig()V

    .line 1375
    iget-object v2, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$5;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mDisplay:Landroid/view/Display;
    invoke-static {v2}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$3400(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Landroid/view/Display;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$5;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v3}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$3300(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1376
    iget-object v2, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$5;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->prepareSwitchPanel()V

    goto :goto_0

    .line 1378
    .end local v1           #config:Landroid/content/res/Configuration;
    :cond_2
    const-string v2, "com.android.systemui.statusbar.switcher.update"

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1379
    iget-object v2, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$5;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->prepareSwitchPanel()V

    goto :goto_0
.end method
