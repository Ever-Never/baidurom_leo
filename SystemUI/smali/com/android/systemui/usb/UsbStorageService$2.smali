.class Lcom/android/systemui/usb/UsbStorageService$2;
.super Landroid/os/storage/StorageEventListener;
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
    .line 74
    iput-object p1, p0, Lcom/android/systemui/usb/UsbStorageService$2;->this$0:Lcom/android/systemui/usb/UsbStorageService;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    .line 78
    const-string v0, "shared"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageService$2;->this$0:Lcom/android/systemui/usb/UsbStorageService;

    #getter for: Lcom/android/systemui/usb/UsbStorageService;->mLastMountPath:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/systemui/usb/UsbStorageService;->access$100(Lcom/android/systemui/usb/UsbStorageService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageService$2;->this$0:Lcom/android/systemui/usb/UsbStorageService;

    const/4 v1, 0x1

    #calls: Lcom/android/systemui/usb/UsbStorageService;->switchDisplay(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/usb/UsbStorageService;->access$200(Lcom/android/systemui/usb/UsbStorageService;I)V

    .line 81
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageService$2;->this$0:Lcom/android/systemui/usb/UsbStorageService;

    const/4 v1, 0x0

    #calls: Lcom/android/systemui/usb/UsbStorageService;->setFree(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/usb/UsbStorageService;->access$300(Lcom/android/systemui/usb/UsbStorageService;I)V

    .line 83
    :cond_0
    const-string v0, "mounted"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageService$2;->this$0:Lcom/android/systemui/usb/UsbStorageService;

    const/16 v1, 0x320

    #calls: Lcom/android/systemui/usb/UsbStorageService;->setFree(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/usb/UsbStorageService;->access$300(Lcom/android/systemui/usb/UsbStorageService;I)V

    .line 88
    :cond_1
    return-void
.end method
