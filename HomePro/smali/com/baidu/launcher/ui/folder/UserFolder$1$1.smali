.class Lcom/baidu/launcher/ui/folder/UserFolder$1$1;
.super Ljava/lang/Object;
.source "UserFolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/folder/UserFolder$1;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/launcher/ui/folder/UserFolder$1;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/folder/UserFolder$1;)V
    .locals 0
    .parameter

    .prologue
    .line 393
    iput-object p1, p0, Lcom/baidu/launcher/ui/folder/UserFolder$1$1;->this$1:Lcom/baidu/launcher/ui/folder/UserFolder$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 396
    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/UserFolder$1$1;->this$1:Lcom/baidu/launcher/ui/folder/UserFolder$1;

    iget-object v2, v2, Lcom/baidu/launcher/ui/folder/UserFolder$1;->this$0:Lcom/baidu/launcher/ui/folder/UserFolder;

    iget-object v2, v2, Lcom/baidu/launcher/ui/folder/UserFolder;->mContent:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 397
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 398
    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/UserFolder$1$1;->this$1:Lcom/baidu/launcher/ui/folder/UserFolder$1;

    iget-object v2, v2, Lcom/baidu/launcher/ui/folder/UserFolder$1;->this$0:Lcom/baidu/launcher/ui/folder/UserFolder;

    iget-object v2, v2, Lcom/baidu/launcher/ui/folder/UserFolder;->mContent:Landroid/widget/GridView;

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 397
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 400
    :cond_0
    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/UserFolder$1$1;->this$1:Lcom/baidu/launcher/ui/folder/UserFolder$1;

    iget-object v2, v2, Lcom/baidu/launcher/ui/folder/UserFolder$1;->val$adapter:Lcom/baidu/launcher/ui/folder/FolderAdapter;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/folder/FolderAdapter;->notifyDataSetChanged()V

    .line 401
    return-void
.end method
