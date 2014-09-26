.class Lcom/baidu/launcher/ui/homeview/Workspace$2;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/homeview/Workspace;->onDrop(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/homeview/Workspace;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/homeview/Workspace;)V
    .locals 0
    .parameter

    .prologue
    .line 1828
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/Workspace$2;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1838
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace$2;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->setAllowLongPress(Z)V

    .line 1839
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1835
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1831
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace$2;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->setAllowLongPress(Z)V

    .line 1832
    return-void
.end method
