.class Lcom/baidu/bulletin/ui/AsyncImageLoader$1$2;
.super Ljava/lang/Object;
.source "AsyncImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/ui/AsyncImageLoader$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/bulletin/ui/AsyncImageLoader$1;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/ui/AsyncImageLoader$1;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/baidu/bulletin/ui/AsyncImageLoader$1$2;->this$1:Lcom/baidu/bulletin/ui/AsyncImageLoader$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/baidu/bulletin/ui/AsyncImageLoader$1$2;->this$1:Lcom/baidu/bulletin/ui/AsyncImageLoader$1;

    iget-object v0, v0, Lcom/baidu/bulletin/ui/AsyncImageLoader$1;->val$callback:Lcom/baidu/bulletin/ui/AsyncImageLoader$Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/baidu/bulletin/ui/AsyncImageLoader$Callback;->onLoaded(Landroid/graphics/drawable/Drawable;)V

    .line 112
    return-void
.end method
