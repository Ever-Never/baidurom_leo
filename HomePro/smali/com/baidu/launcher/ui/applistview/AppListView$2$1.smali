.class Lcom/baidu/launcher/ui/applistview/AppListView$2$1;
.super Ljava/lang/Thread;
.source "AppListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/applistview/AppListView$2;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/launcher/ui/applistview/AppListView$2;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/applistview/AppListView$2;)V
    .locals 0
    .parameter

    .prologue
    .line 379
    iput-object p1, p0, Lcom/baidu/launcher/ui/applistview/AppListView$2$1;->this$1:Lcom/baidu/launcher/ui/applistview/AppListView$2;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView$2$1;->this$1:Lcom/baidu/launcher/ui/applistview/AppListView$2;

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/AppListView$2;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    const/4 v1, 0x1

    #calls: Lcom/baidu/launcher/ui/applistview/AppListView;->animationEnd(Z)V
    invoke-static {v0, v1}, Lcom/baidu/launcher/ui/applistview/AppListView;->access$500(Lcom/baidu/launcher/ui/applistview/AppListView;Z)V

    .line 382
    return-void
.end method
