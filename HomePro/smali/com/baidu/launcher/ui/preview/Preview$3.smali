.class Lcom/baidu/launcher/ui/preview/Preview$3;
.super Ljava/lang/Object;
.source "Preview.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/preview/Preview;->buildUpAlertDialog(Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/preview/Preview;

.field final synthetic val$info:Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/preview/Preview;Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 436
    iput-object p1, p0, Lcom/baidu/launcher/ui/preview/Preview$3;->this$0:Lcom/baidu/launcher/ui/preview/Preview;

    iput-object p2, p0, Lcom/baidu/launcher/ui/preview/Preview$3;->val$info:Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 440
    iget-object v0, p0, Lcom/baidu/launcher/ui/preview/Preview$3;->this$0:Lcom/baidu/launcher/ui/preview/Preview;

    iget-object v1, p0, Lcom/baidu/launcher/ui/preview/Preview$3;->val$info:Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/ui/preview/Preview;->showDraggedView(Ljava/lang/Object;Z)V

    .line 441
    return-void
.end method
