.class Lyi/util/AppUpdateHelper$AppUpdateCheckTask$1;
.super Ljava/lang/Thread;
.source "AppUpdateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyi/util/AppUpdateHelper$AppUpdateCheckTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lyi/util/AppUpdateHelper$AppUpdateCheckTask;


# direct methods
.method constructor <init>(Lyi/util/AppUpdateHelper$AppUpdateCheckTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lyi/util/AppUpdateHelper$AppUpdateCheckTask$1;->this$1:Lyi/util/AppUpdateHelper$AppUpdateCheckTask;

    .line 312
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 316
    iget-object v1, p0, Lyi/util/AppUpdateHelper$AppUpdateCheckTask$1;->this$1:Lyi/util/AppUpdateHelper$AppUpdateCheckTask;

    #getter for: Lyi/util/AppUpdateHelper$AppUpdateCheckTask;->mClient:Lyi/util/AppUpdateHelper$AppUpdateHttpClient;
    invoke-static {v1}, Lyi/util/AppUpdateHelper$AppUpdateCheckTask;->access$0(Lyi/util/AppUpdateHelper$AppUpdateCheckTask;)Lyi/util/AppUpdateHelper$AppUpdateHttpClient;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 317
    iget-object v1, p0, Lyi/util/AppUpdateHelper$AppUpdateCheckTask$1;->this$1:Lyi/util/AppUpdateHelper$AppUpdateCheckTask;

    #getter for: Lyi/util/AppUpdateHelper$AppUpdateCheckTask;->this$0:Lyi/util/AppUpdateHelper;
    invoke-static {v1}, Lyi/util/AppUpdateHelper$AppUpdateCheckTask;->access$2(Lyi/util/AppUpdateHelper$AppUpdateCheckTask;)Lyi/util/AppUpdateHelper;

    move-result-object v1

    iget-object v2, p0, Lyi/util/AppUpdateHelper$AppUpdateCheckTask$1;->this$1:Lyi/util/AppUpdateHelper$AppUpdateCheckTask;

    #getter for: Lyi/util/AppUpdateHelper$AppUpdateCheckTask;->mClient:Lyi/util/AppUpdateHelper$AppUpdateHttpClient;
    invoke-static {v2}, Lyi/util/AppUpdateHelper$AppUpdateCheckTask;->access$0(Lyi/util/AppUpdateHelper$AppUpdateCheckTask;)Lyi/util/AppUpdateHelper$AppUpdateHttpClient;

    move-result-object v2

    #calls: Lyi/util/AppUpdateHelper;->checkUpdateSync(Lyi/util/AppUpdateHelper$AppUpdateHttpClient;)Lyi/util/AppUpdateHelper$AppUpdateInfo;
    invoke-static {v1, v2}, Lyi/util/AppUpdateHelper;->access$0(Lyi/util/AppUpdateHelper;Lyi/util/AppUpdateHelper$AppUpdateHttpClient;)Lyi/util/AppUpdateHelper$AppUpdateInfo;

    move-result-object v0

    .line 318
    .local v0, info:Lyi/util/AppUpdateHelper$AppUpdateInfo;
    iget-object v1, p0, Lyi/util/AppUpdateHelper$AppUpdateCheckTask$1;->this$1:Lyi/util/AppUpdateHelper$AppUpdateCheckTask;

    #getter for: Lyi/util/AppUpdateHelper$AppUpdateCheckTask;->mListener:Lyi/util/AppUpdateHelper$UpdateListener;
    invoke-static {v1}, Lyi/util/AppUpdateHelper$AppUpdateCheckTask;->access$1(Lyi/util/AppUpdateHelper$AppUpdateCheckTask;)Lyi/util/AppUpdateHelper$UpdateListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 319
    iget-object v1, p0, Lyi/util/AppUpdateHelper$AppUpdateCheckTask$1;->this$1:Lyi/util/AppUpdateHelper$AppUpdateCheckTask;

    #getter for: Lyi/util/AppUpdateHelper$AppUpdateCheckTask;->mListener:Lyi/util/AppUpdateHelper$UpdateListener;
    invoke-static {v1}, Lyi/util/AppUpdateHelper$AppUpdateCheckTask;->access$1(Lyi/util/AppUpdateHelper$AppUpdateCheckTask;)Lyi/util/AppUpdateHelper$UpdateListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lyi/util/AppUpdateHelper$UpdateListener;->onCheckUpdateResult(Lyi/util/AppUpdateHelper$AppUpdateInfo;)V

    .line 322
    .end local v0           #info:Lyi/util/AppUpdateHelper$AppUpdateInfo;
    :cond_0
    return-void
.end method
