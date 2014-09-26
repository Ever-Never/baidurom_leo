.class Lcom/baidu/bulletin/db/manager/CacheManager$1;
.super Ljava/lang/Thread;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/db/manager/CacheManager;->clearImagesAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/db/manager/CacheManager;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/db/manager/CacheManager;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/baidu/bulletin/db/manager/CacheManager$1;->this$0:Lcom/baidu/bulletin/db/manager/CacheManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/bulletin/db/manager/CacheManager$1;->this$0:Lcom/baidu/bulletin/db/manager/CacheManager;

    #calls: Lcom/baidu/bulletin/db/manager/CacheManager;->clearImagesSync()V
    invoke-static {v0}, Lcom/baidu/bulletin/db/manager/CacheManager;->access$000(Lcom/baidu/bulletin/db/manager/CacheManager;)V

    .line 42
    return-void
.end method
