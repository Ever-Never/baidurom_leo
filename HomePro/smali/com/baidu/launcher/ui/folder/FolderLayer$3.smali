.class Lcom/baidu/launcher/ui/folder/FolderLayer$3;
.super Lcom/baidu/launcher/ui/animation/AnimationAdapter;
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
    .line 422
    iput-object p1, p0, Lcom/baidu/launcher/ui/folder/FolderLayer$3;->this$0:Lcom/baidu/launcher/ui/folder/FolderLayer;

    invoke-direct {p0}, Lcom/baidu/launcher/ui/animation/AnimationAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "animation"

    .prologue
    .line 425
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FolderLayer$3;->this$0:Lcom/baidu/launcher/ui/folder/FolderLayer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    #calls: Lcom/baidu/launcher/ui/folder/FolderLayer;->fadeLayer(Ljava/lang/Runnable;ZZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/baidu/launcher/ui/folder/FolderLayer;->access$600(Lcom/baidu/launcher/ui/folder/FolderLayer;Ljava/lang/Runnable;ZZ)V

    .line 426
    return-void
.end method
