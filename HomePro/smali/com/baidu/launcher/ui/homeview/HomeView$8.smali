.class Lcom/baidu/launcher/ui/homeview/HomeView$8;
.super Ljava/lang/Object;
.source "HomeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/homeview/HomeView;->onHomeDataAppUpdate(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/homeview/HomeView;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1380
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/HomeView$8;->this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

    iput-object p2, p0, Lcom/baidu/launcher/ui/homeview/HomeView$8;->val$packageName:Ljava/lang/String;

    iput p3, p0, Lcom/baidu/launcher/ui/homeview/HomeView$8;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1384
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView$8;->this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

    #getter for: Lcom/baidu/launcher/ui/homeview/HomeView;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;
    invoke-static {v0}, Lcom/baidu/launcher/ui/homeview/HomeView;->access$300(Lcom/baidu/launcher/ui/homeview/HomeView;)Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/HomeView$8;->val$packageName:Ljava/lang/String;

    iget v2, p0, Lcom/baidu/launcher/ui/homeview/HomeView$8;->val$state:I

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->updateShortcuts(Ljava/lang/String;I)V

    .line 1385
    return-void
.end method
