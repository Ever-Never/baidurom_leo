.class Lcom/android/systemui/usb/UsbStorageService$4;
.super Ljava/lang/Object;
.source "UsbStorageService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/usb/UsbStorageService;->checkStorageUsers()V
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
    .line 274
    iput-object p1, p0, Lcom/android/systemui/usb/UsbStorageService$4;->this$0:Lcom/android/systemui/usb/UsbStorageService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageService$4;->this$0:Lcom/android/systemui/usb/UsbStorageService;

    #calls: Lcom/android/systemui/usb/UsbStorageService;->checkStorageUsersAsync()V
    invoke-static {v0}, Lcom/android/systemui/usb/UsbStorageService;->access$500(Lcom/android/systemui/usb/UsbStorageService;)V

    .line 278
    return-void
.end method
