.class Lcom/baidu/launcher/ui/preview/Preview$2;
.super Ljava/lang/Object;
.source "Preview.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 444
    iput-object p1, p0, Lcom/baidu/launcher/ui/preview/Preview$2;->this$0:Lcom/baidu/launcher/ui/preview/Preview;

    iput-object p2, p0, Lcom/baidu/launcher/ui/preview/Preview$2;->val$info:Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 449
    iget-object v0, p0, Lcom/baidu/launcher/ui/preview/Preview$2;->this$0:Lcom/baidu/launcher/ui/preview/Preview;

    iget-object v1, p0, Lcom/baidu/launcher/ui/preview/Preview$2;->val$info:Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/ui/preview/Preview;->showDraggedView(Ljava/lang/Object;Z)V

    .line 450
    return-void
.end method
