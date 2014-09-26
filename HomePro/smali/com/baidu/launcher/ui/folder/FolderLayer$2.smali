.class Lcom/baidu/launcher/ui/folder/FolderLayer$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FolderLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/folder/FolderLayer;->startFolderCloseAnim(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/folder/FolderLayer;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/folder/FolderLayer;)V
    .locals 0
    .parameter

    .prologue
    .line 406
    iput-object p1, p0, Lcom/baidu/launcher/ui/folder/FolderLayer$2;->this$0:Lcom/baidu/launcher/ui/folder/FolderLayer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .parameter "animation"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 409
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FolderLayer$2;->this$0:Lcom/baidu/launcher/ui/folder/FolderLayer;

    #getter for: Lcom/baidu/launcher/ui/folder/FolderLayer;->mFolderLayout:Lcom/baidu/launcher/ui/folder/FolderContainer;
    invoke-static {v0}, Lcom/baidu/launcher/ui/folder/FolderLayer;->access$000(Lcom/baidu/launcher/ui/folder/FolderLayer;)Lcom/baidu/launcher/ui/folder/FolderContainer;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/baidu/launcher/ui/folder/FolderContainer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 410
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FolderLayer$2;->this$0:Lcom/baidu/launcher/ui/folder/FolderLayer;

    const/4 v1, 0x1

    #calls: Lcom/baidu/launcher/ui/folder/FolderLayer;->fadeLayer(Ljava/lang/Runnable;ZZ)V
    invoke-static {v0, v3, v2, v1}, Lcom/baidu/launcher/ui/folder/FolderLayer;->access$600(Lcom/baidu/launcher/ui/folder/FolderLayer;Ljava/lang/Runnable;ZZ)V

    .line 411
    return-void
.end method
