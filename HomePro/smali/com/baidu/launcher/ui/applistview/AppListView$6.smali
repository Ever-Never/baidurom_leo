.class Lcom/baidu/launcher/ui/applistview/AppListView$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AppListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/applistview/AppListView;->zoom(FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/applistview/AppListView;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/applistview/AppListView;)V
    .locals 0
    .parameter

    .prologue
    .line 845
    iput-object p1, p0, Lcom/baidu/launcher/ui/applistview/AppListView$6;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 848
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView$6;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    #calls: Lcom/baidu/launcher/ui/applistview/AppListView;->onAnimationEnd()V
    invoke-static {v0}, Lcom/baidu/launcher/ui/applistview/AppListView;->access$1000(Lcom/baidu/launcher/ui/applistview/AppListView;)V

    .line 849
    return-void
.end method
