.class Lcom/android/systemui/statusbar/phone/TrafficView$1;
.super Ljava/lang/Object;
.source "TrafficView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/TrafficView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/TrafficView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/TrafficView;)V
    .locals 0
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TrafficView$1;->this$0:Lcom/android/systemui/statusbar/phone/TrafficView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 229
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 230
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.baidu.trafficmonitor"

    const-string v4, "com.baidu.trafficmonitor.TrafficMonitorActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    invoke-static {}, Lcom/android/systemui/statusbar/phone/TrafficView;->access$100()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 233
    const-string v3, "simId"

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TrafficView$1;->this$0:Lcom/android/systemui/statusbar/phone/TrafficView;

    #getter for: Lcom/android/systemui/statusbar/phone/TrafficView;->mTrafficManager:Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/TrafficView;->access$300(Lcom/android/systemui/statusbar/phone/TrafficView;)Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;

    move-result-object v4

    #getter for: Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;->mCurSlotId:I
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;->access$400(Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 235
    :cond_0
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    const/high16 v3, 0x1400

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 238
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/TrafficView$1;->this$0:Lcom/android/systemui/statusbar/phone/TrafficView;

    #getter for: Lcom/android/systemui/statusbar/phone/TrafficView;->mStatusManager:Landroid/app/StatusBarManager;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/TrafficView;->access$500(Lcom/android/systemui/statusbar/phone/TrafficView;)Landroid/app/StatusBarManager;

    move-result-object v3

    if-nez v3, :cond_1

    .line 239
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TrafficView$1;->this$0:Lcom/android/systemui/statusbar/phone/TrafficView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/TrafficView$1;->this$0:Lcom/android/systemui/statusbar/phone/TrafficView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/TrafficView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "statusbar"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    #setter for: Lcom/android/systemui/statusbar/phone/TrafficView;->mStatusManager:Landroid/app/StatusBarManager;
    invoke-static {v4, v3}, Lcom/android/systemui/statusbar/phone/TrafficView;->access$502(Lcom/android/systemui/statusbar/phone/TrafficView;Landroid/app/StatusBarManager;)Landroid/app/StatusBarManager;

    .line 241
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/TrafficView$1;->this$0:Lcom/android/systemui/statusbar/phone/TrafficView;

    #getter for: Lcom/android/systemui/statusbar/phone/TrafficView;->mStatusManager:Landroid/app/StatusBarManager;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/TrafficView;->access$500(Lcom/android/systemui/statusbar/phone/TrafficView;)Landroid/app/StatusBarManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 242
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/TrafficView$1;->this$0:Lcom/android/systemui/statusbar/phone/TrafficView;

    #getter for: Lcom/android/systemui/statusbar/phone/TrafficView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/TrafficView;->access$200(Lcom/android/systemui/statusbar/phone/TrafficView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :goto_0
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 253
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/TrafficView$1;->this$0:Lcom/android/systemui/statusbar/phone/TrafficView;

    #getter for: Lcom/android/systemui/statusbar/phone/TrafficView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/TrafficView;->access$200(Lcom/android/systemui/statusbar/phone/TrafficView;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "keyguard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    .line 255
    .local v2, kgm:Landroid/app/KeyguardManager;
    if-eqz v2, :cond_2

    .line 256
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/KeyguardManager;->exitKeyguardSecurely(Landroid/app/KeyguardManager$OnKeyguardExitResult;)V

    .line 257
    :cond_2
    return-void

    .line 243
    .end local v2           #kgm:Landroid/app/KeyguardManager;
    :catch_0
    move-exception v0

    .line 244
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v3, "StatusBar-TrafficView"

    const-string v4, "Unable to launch intent"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 251
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v3

    goto :goto_1
.end method
