.class Lcom/android/systemui/usb/UsbStorageService$1;
.super Landroid/content/BroadcastReceiver;
.source "UsbStorageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/usb/UsbStorageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/usb/UsbStorageService;


# direct methods
.method constructor <init>(Lcom/android/systemui/usb/UsbStorageService;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/systemui/usb/UsbStorageService$1;->this$0:Lcom/android/systemui/usb/UsbStorageService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 68
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageService$1;->this$0:Lcom/android/systemui/usb/UsbStorageService;

    #calls: Lcom/android/systemui/usb/UsbStorageService;->handleUsbStateChanged(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/android/systemui/usb/UsbStorageService;->access$000(Lcom/android/systemui/usb/UsbStorageService;Landroid/content/Intent;)V

    .line 71
    :cond_0
    return-void
.end method
