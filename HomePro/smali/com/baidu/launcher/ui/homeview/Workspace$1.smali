.class Lcom/baidu/launcher/ui/homeview/Workspace$1;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/homeview/Workspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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
    .line 437
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/Workspace$1;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace$1;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->computeScroll()V

    .line 441
    return-void
.end method
