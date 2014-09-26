.class Lcom/baidu/bulletin/ui/BulletinRefreshButton$1;
.super Ljava/lang/Object;
.source "BulletinRefreshButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/ui/BulletinRefreshButton;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/ui/BulletinRefreshButton;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/ui/BulletinRefreshButton;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/baidu/bulletin/ui/BulletinRefreshButton$1;->this$0:Lcom/baidu/bulletin/ui/BulletinRefreshButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 56
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/baidu/bulletin/ui/BulletinRefreshButton$1;->this$0:Lcom/baidu/bulletin/ui/BulletinRefreshButton;

    #getter for: Lcom/baidu/bulletin/ui/BulletinRefreshButton;->mState:I
    invoke-static {v1}, Lcom/baidu/bulletin/ui/BulletinRefreshButton;->access$000(Lcom/baidu/bulletin/ui/BulletinRefreshButton;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 57
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/UIController;->getUIController()Lcom/baidu/bulletin/ui/logic/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/logic/UIController;->onRefresh()Z

    .line 58
    :cond_0
    return-void
.end method
