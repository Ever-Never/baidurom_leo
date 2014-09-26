.class Lcom/android/systemui/usb/UsbStorageService$3;
.super Ljava/lang/Object;
.source "UsbStorageService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/usb/UsbStorageService;->setFree(I)V
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
    .line 94
    iput-object p1, p0, Lcom/android/systemui/usb/UsbStorageService$3;->this$0:Lcom/android/systemui/usb/UsbStorageService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageService$3;->this$0:Lcom/android/systemui/usb/UsbStorageService;

    const/4 v1, 0x0

    #setter for: Lcom/android/systemui/usb/UsbStorageService;->mBusy:Z
    invoke-static {v0, v1}, Lcom/android/systemui/usb/UsbStorageService;->access$402(Lcom/android/systemui/usb/UsbStorageService;Z)Z

    .line 98
    return-void
.end method
