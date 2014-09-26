.class public Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService$LocalBinder;
.super Landroid/os/Binder;
.source "CloudStorageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;


# direct methods
.method public constructor <init>(Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService$LocalBinder;->this$0:Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService$LocalBinder;->this$0:Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;

    return-object v0
.end method
