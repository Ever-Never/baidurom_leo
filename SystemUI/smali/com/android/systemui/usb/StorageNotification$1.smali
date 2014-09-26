.class Lcom/android/systemui/usb/StorageNotification$1;
.super Ljava/lang/Object;
.source "StorageNotification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/usb/StorageNotification;->onUsbMassStorageConnectionChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/usb/StorageNotification;

.field final synthetic val$connected:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/usb/StorageNotification;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/systemui/usb/StorageNotification$1;->this$0:Lcom/android/systemui/usb/StorageNotification;

    iput-boolean p2, p0, Lcom/android/systemui/usb/StorageNotification$1;->val$connected:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/systemui/usb/StorageNotification$1;->val$connected:Z

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification$1;->this$0:Lcom/android/systemui/usb/StorageNotification;

    #getter for: Lcom/android/systemui/usb/StorageNotification;->mLastConnected:Z
    invoke-static {v0}, Lcom/android/systemui/usb/StorageNotification;->access$000(Lcom/android/systemui/usb/StorageNotification;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification$1;->this$0:Lcom/android/systemui/usb/StorageNotification;

    iget-boolean v1, p0, Lcom/android/systemui/usb/StorageNotification$1;->val$connected:Z

    #calls: Lcom/android/systemui/usb/StorageNotification;->onUsbMassStorageConnectionChangedAsync(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui/usb/StorageNotification;->access$100(Lcom/android/systemui/usb/StorageNotification;Z)V

    .line 109
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification$1;->this$0:Lcom/android/systemui/usb/StorageNotification;

    iget-boolean v1, p0, Lcom/android/systemui/usb/StorageNotification$1;->val$connected:Z

    #setter for: Lcom/android/systemui/usb/StorageNotification;->mLastConnected:Z
    invoke-static {v0, v1}, Lcom/android/systemui/usb/StorageNotification;->access$002(Lcom/android/systemui/usb/StorageNotification;Z)Z

    .line 110
    return-void

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification$1;->this$0:Lcom/android/systemui/usb/StorageNotification;

    iget-boolean v1, p0, Lcom/android/systemui/usb/StorageNotification$1;->val$connected:Z

    #calls: Lcom/android/systemui/usb/StorageNotification;->onUsbMassStorageConnectionChangedAsync(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui/usb/StorageNotification;->access$100(Lcom/android/systemui/usb/StorageNotification;Z)V

    goto :goto_0
.end method
