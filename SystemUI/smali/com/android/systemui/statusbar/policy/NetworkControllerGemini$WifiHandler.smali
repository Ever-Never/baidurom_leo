.class Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$WifiHandler;
.super Landroid/os/Handler;
.source "NetworkControllerGemini.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;)V
    .locals 0
    .parameter

    .prologue
    .line 1189
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$WifiHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1192
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 1211
    :cond_0
    :goto_0
    return-void

    .line 1194
    :sswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_1

    .line 1195
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$WifiHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x11001

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 1198
    :cond_1
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "Failed to connect to wifi"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1202
    :sswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$WifiHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiActivity:I

    if-eq v0, v1, :cond_0

    .line 1203
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$WifiHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiActivity:I

    .line 1204
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$WifiHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->refreshViews()V

    goto :goto_0

    .line 1192
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x11000 -> :sswitch_0
    .end sparse-switch
.end method
