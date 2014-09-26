.class Lcom/baidu/launcher/ui/common/GuidePagerView$1;
.super Ljava/lang/Object;
.source "GuidePagerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/common/GuidePagerView;->initGuidePagerList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/common/GuidePagerView;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/common/GuidePagerView;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/baidu/launcher/ui/common/GuidePagerView$1;->this$0:Lcom/baidu/launcher/ui/common/GuidePagerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/GuidePagerView$1;->this$0:Lcom/baidu/launcher/ui/common/GuidePagerView;

    #getter for: Lcom/baidu/launcher/ui/common/GuidePagerView;->mLauncher:Lcom/baidu/launcher/app/Launcher;
    invoke-static {v0}, Lcom/baidu/launcher/ui/common/GuidePagerView;->access$000(Lcom/baidu/launcher/ui/common/GuidePagerView;)Lcom/baidu/launcher/app/Launcher;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/app/Launcher;->showGuidePager(Z)V

    .line 69
    return-void
.end method
