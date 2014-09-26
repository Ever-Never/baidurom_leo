.class Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$1;
.super Landroid/telephony/PhoneStateListener;
.source "NetworkControllerGemini.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;)V
    .locals 0
    .parameter

    .prologue
    .line 461
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    const/4 v1, 0x0

    .line 487
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneState:I

    .line 492
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->isCdma(I)Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->access$300(Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateTelephonySignalStrength(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->access$000(Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;I)V

    .line 494
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->refreshViews(I)V

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateTransparent(I)V
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->access$400(Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;I)V

    .line 497
    return-void
.end method

.method public onDataActivity(I)V
    .locals 2
    .parameter "direction"

    .prologue
    const/4 v1, 0x0

    .line 517
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataActivity:I

    .line 518
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateDataIcon(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->access$200(Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;I)V

    .line 519
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->refreshViews(I)V

    .line 520
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 2
    .parameter "state"
    .parameter "networkType"

    .prologue
    const/4 v1, 0x0

    .line 505
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataState:I

    .line 506
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;

    iput p2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataNetType:I

    .line 507
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateDataNetType(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;I)V

    .line 508
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateDataIcon(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->access$200(Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;I)V

    .line 509
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->refreshViews(I)V

    .line 510
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2
    .parameter "state"

    .prologue
    const/4 v1, 0x0

    .line 478
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;

    iput-object p1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mServiceState:Landroid/telephony/ServiceState;

    .line 479
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateTelephonySignalStrength(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->access$000(Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;I)V

    .line 480
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateDataNetType(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;I)V

    .line 481
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateDataIcon(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->access$200(Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;I)V

    .line 482
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->refreshViews(I)V

    .line 483
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2
    .parameter "signalStrength"

    .prologue
    const/4 v1, 0x0

    .line 468
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;

    iput-object p1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 469
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateTelephonySignalStrength(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->access$000(Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;I)V

    .line 470
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->refreshViews(I)V

    .line 471
    return-void
.end method
