.class Lcom/baidu/launcher/ui/editview/EditView$10;
.super Ljava/lang/Object;
.source "EditView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/editview/EditView;->buildUpAlertDialog(I)V
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
    .line 623
    iput-object p1, p0, Lcom/baidu/launcher/ui/editview/EditView$10;->this$0:Lcom/baidu/launcher/ui/editview/EditView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 628
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 629
    return-void
.end method
