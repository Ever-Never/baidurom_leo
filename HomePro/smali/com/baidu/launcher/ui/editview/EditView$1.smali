.class Lcom/baidu/launcher/ui/editview/EditView$1;
.super Ljava/lang/Object;
.source "EditView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/editview/EditView;->show(ZLjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/editview/EditView;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/editview/EditView;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/baidu/launcher/ui/editview/EditView$1;->this$0:Lcom/baidu/launcher/ui/editview/EditView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView$1;->this$0:Lcom/baidu/launcher/ui/editview/EditView;

    #calls: Lcom/baidu/launcher/ui/editview/EditView;->doShowAnimation()V
    invoke-static {v0}, Lcom/baidu/launcher/ui/editview/EditView;->access$100(Lcom/baidu/launcher/ui/editview/EditView;)V

    .line 155
    return-void
.end method
