.class Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService$TaskManagerObserver;
.super Landroid/database/ContentObserver;
.source "CloudStorageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskManagerObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;


# direct methods
.method public constructor <init>(Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;)V
    .locals 1
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService$TaskManagerObserver;->this$0:Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;

    .line 186
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 187
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService$TaskManagerObserver;->this$0:Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;

    #calls: Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->updateFromProvider()V
    invoke-static {v0}, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->access$9(Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;)V

    .line 192
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 193
    return-void
.end method
