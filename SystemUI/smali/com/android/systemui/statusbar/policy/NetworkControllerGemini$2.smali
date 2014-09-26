.class Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$2;
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
    .line 523
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    const/4 v1, 0x1

    .line 549
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneStateGemini:I

    .line 554
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->isCdma(I)Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->access$300(Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateTelephonySignalStrength(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->access$000(Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;I)V

    .line 556
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->refreshViews(I)V

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateTransparent(I)V
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->access$400(Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;I)V

    .line 559
    return-void
.end method

.method public onDataActivity(I)V
    .locals 2
    .parameter "direction"

    .prologue
    const/4 v1, 0x1

    .line 579
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataActivityGemini:I

    .line 580
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateDataIcon(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->access$200(Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;I)V

    .line 581
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->refreshViews(I)V

    .line 582
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 2
    .parameter "state"
    .parameter "networkType"

    .prologue
    const/4 v1, 0x1

    .line 567
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataStateGemini:I

    .line 568
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;

    iput p2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataNetTypeGemini:I

    .line 569
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateDataNetType(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;I)V

    .line 570
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateDataIcon(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->access$200(Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;I)V

    .line 571
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->refreshViews(I)V

    .line 572
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2
    .parameter "state"

    .prologue
    const/4 v1, 0x1

    .line 540
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;

    iput-object p1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mServiceStateGemini:Landroid/telephony/ServiceState;

    .line 541
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateTelephonySignalStrength(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->access$000(Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;I)V

    .line 542
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateDataNetType(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;I)V

    .line 543
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateDataIcon(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->access$200(Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;I)V

    .line 544
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->refreshViews(I)V

    .line 545
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2
    .parameter "signalStrength"

    .prologue
    const/4 v1, 0x1

    .line 530
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;

    iput-object p1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSignalStrengthGemini:Landroid/telephony/SignalStrength;

    .line 531
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateTelephonySignalStrength(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->access$000(Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;I)V

    .line 532
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->refreshViews(I)V

    .line 533
    return-void
.end method
