.class Lcom/baidu/launcher/ui/folder/Folder$4;
.super Lcom/baidu/launcher/ui/animation/AnimatorListenerAdapter;
.source "Folder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/folder/Folder;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/folder/Folder;

.field final synthetic val$itemInfo:Lcom/baidu/launcher/data/item/ListItemInfo;

.field final synthetic val$view:Lcom/baidu/launcher/ui/common/ActionTextView;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/folder/Folder;Lcom/baidu/launcher/ui/common/ActionTextView;Lcom/baidu/launcher/data/item/ListItemInfo;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/baidu/launcher/ui/folder/Folder$4;->this$0:Lcom/baidu/launcher/ui/folder/Folder;

    iput-object p2, p0, Lcom/baidu/launcher/ui/folder/Folder$4;->val$view:Lcom/baidu/launcher/ui/common/ActionTextView;

    iput-object p3, p0, Lcom/baidu/launcher/ui/folder/Folder$4;->val$itemInfo:Lcom/baidu/launcher/data/item/ListItemInfo;

    invoke-direct {p0}, Lcom/baidu/launcher/ui/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/baidu/launcher/ui/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 242
    iget-object v1, p0, Lcom/baidu/launcher/ui/folder/Folder$4;->val$view:Lcom/baidu/launcher/ui/common/ActionTextView;

    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/Folder$4;->val$itemInfo:Lcom/baidu/launcher/data/item/ListItemInfo;

    iget-boolean v0, v0, Lcom/baidu/launcher/data/item/ListItemInfo;->isVisible:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/baidu/launcher/ui/common/ActionTextView;->setHide(Z)V

    .line 243
    return-void

    .line 242
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
