.class Lcom/baidu/launcher/ui/folder/UserFolder$1;
.super Lcom/baidu/launcher/ui/animation/AnimationAdapter;
.source "UserFolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/folder/UserFolder;->moveView(Landroid/view/View;[I[ILcom/baidu/launcher/ui/folder/FolderAdapter;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/folder/UserFolder;

.field final synthetic val$adapter:Lcom/baidu/launcher/ui/folder/FolderAdapter;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/folder/UserFolder;Lcom/baidu/launcher/ui/folder/FolderAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 390
    iput-object p1, p0, Lcom/baidu/launcher/ui/folder/UserFolder$1;->this$0:Lcom/baidu/launcher/ui/folder/UserFolder;

    iput-object p2, p0, Lcom/baidu/launcher/ui/folder/UserFolder$1;->val$adapter:Lcom/baidu/launcher/ui/folder/FolderAdapter;

    invoke-direct {p0}, Lcom/baidu/launcher/ui/animation/AnimationAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 393
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/UserFolder$1;->this$0:Lcom/baidu/launcher/ui/folder/UserFolder;

    new-instance v1, Lcom/baidu/launcher/ui/folder/UserFolder$1$1;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/folder/UserFolder$1$1;-><init>(Lcom/baidu/launcher/ui/folder/UserFolder$1;)V

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/folder/UserFolder;->post(Ljava/lang/Runnable;)Z

    .line 403
    return-void
.end method
