.class Lcom/baidu/bulletin/ui/BulletinPageAdapter$1;
.super Ljava/lang/Object;
.source "BulletinPageAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/ui/BulletinPageAdapter;->initStartButton(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/ui/BulletinPageAdapter;

.field final synthetic val$startButton:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/ui/BulletinPageAdapter;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/baidu/bulletin/ui/BulletinPageAdapter$1;->this$0:Lcom/baidu/bulletin/ui/BulletinPageAdapter;

    iput-object p2, p0, Lcom/baidu/bulletin/ui/BulletinPageAdapter$1;->val$startButton:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 106
    iget-object v1, p0, Lcom/baidu/bulletin/ui/BulletinPageAdapter$1;->val$startButton:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 108
    const/4 v0, 0x2

    .line 111
    .local v0, key:B
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/UIController;->getUIController()Lcom/baidu/bulletin/ui/logic/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bulletin/ui/logic/UIController;->onRefresh()Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/baidu/bulletin/ui/BulletinPageAdapter$1;->val$startButton:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 114
    :cond_0
    return-void
.end method
