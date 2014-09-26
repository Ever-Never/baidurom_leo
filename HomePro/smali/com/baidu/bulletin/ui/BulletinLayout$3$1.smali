.class Lcom/baidu/bulletin/ui/BulletinLayout$3$1;
.super Ljava/lang/Object;
.source "BulletinLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/ui/BulletinLayout$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/bulletin/ui/BulletinLayout$3;

.field final synthetic val$uiController:Lcom/baidu/bulletin/ui/logic/UIController;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/ui/BulletinLayout$3;Lcom/baidu/bulletin/ui/logic/UIController;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 650
    iput-object p1, p0, Lcom/baidu/bulletin/ui/BulletinLayout$3$1;->this$1:Lcom/baidu/bulletin/ui/BulletinLayout$3;

    iput-object p2, p0, Lcom/baidu/bulletin/ui/BulletinLayout$3$1;->val$uiController:Lcom/baidu/bulletin/ui/logic/UIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Lcom/baidu/bulletin/ui/BulletinLayout$3$1;->val$uiController:Lcom/baidu/bulletin/ui/logic/UIController;

    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/logic/UIController;->showSettings()V

    .line 654
    return-void
.end method
