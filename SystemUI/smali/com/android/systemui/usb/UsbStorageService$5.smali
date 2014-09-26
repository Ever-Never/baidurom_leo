.class Lcom/android/systemui/usb/UsbStorageService$5;
.super Ljava/lang/Object;
.source "UsbStorageService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/usb/UsbStorageService;->switchUsbMassStorage(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/usb/UsbStorageService;

.field final synthetic val$on:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/usb/UsbStorageService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lcom/android/systemui/usb/UsbStorageService$5;->this$0:Lcom/android/systemui/usb/UsbStorageService;

    iput-boolean p2, p0, Lcom/android/systemui/usb/UsbStorageService$5;->val$on:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/android/systemui/usb/UsbStorageService$5;->val$on:Z

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageService$5;->this$0:Lcom/android/systemui/usb/UsbStorageService;

    #getter for: Lcom/android/systemui/usb/UsbStorageService;->mStorageManager:Landroid/os/storage/StorageManager;
    invoke-static {v0}, Lcom/android/systemui/usb/UsbStorageService;->access$600(Lcom/android/systemui/usb/UsbStorageService;)Landroid/os/storage/StorageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->enableUsbMassStorage()V

    .line 312
    :goto_0
    return-void

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageService$5;->this$0:Lcom/android/systemui/usb/UsbStorageService;

    #getter for: Lcom/android/systemui/usb/UsbStorageService;->mStorageManager:Landroid/os/storage/StorageManager;
    invoke-static {v0}, Lcom/android/systemui/usb/UsbStorageService;->access$600(Lcom/android/systemui/usb/UsbStorageService;)Landroid/os/storage/StorageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->disableUsbMassStorage()V

    goto :goto_0
.end method
