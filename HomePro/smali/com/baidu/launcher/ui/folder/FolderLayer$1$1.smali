.class Lcom/baidu/launcher/ui/folder/FolderLayer$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FolderLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/folder/FolderLayer$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/launcher/ui/folder/FolderLayer$1;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/folder/FolderLayer$1;)V
    .locals 0
    .parameter

    .prologue
    .line 360
    iput-object p1, p0, Lcom/baidu/launcher/ui/folder/FolderLayer$1$1;->this$1:Lcom/baidu/launcher/ui/folder/FolderLayer$1;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 362
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FolderLayer$1$1;->this$1:Lcom/baidu/launcher/ui/folder/FolderLayer$1;

    iget-object v0, v0, Lcom/baidu/launcher/ui/folder/FolderLayer$1;->this$0:Lcom/baidu/launcher/ui/folder/FolderLayer;

    #getter for: Lcom/baidu/launcher/ui/folder/FolderLayer;->mFolderLayout:Lcom/baidu/launcher/ui/folder/FolderContainer;
    invoke-static {v0}, Lcom/baidu/launcher/ui/folder/FolderLayer;->access$000(Lcom/baidu/launcher/ui/folder/FolderLayer;)Lcom/baidu/launcher/ui/folder/FolderContainer;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/ui/folder/FolderContainer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 363
    return-void
.end method
