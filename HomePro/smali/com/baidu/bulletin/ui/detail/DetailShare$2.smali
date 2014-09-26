.class final Lcom/baidu/bulletin/ui/detail/DetailShare$2;
.super Ljava/lang/Object;
.source "DetailShare.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/ui/detail/DetailShare;->installSharedAppdialog(Landroid/content/Context;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$docId:I

.field final synthetic val$mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 428
    iput-object p1, p0, Lcom/baidu/bulletin/ui/detail/DetailShare$2;->val$mContext:Landroid/content/Context;

    iput p2, p0, Lcom/baidu/bulletin/ui/detail/DetailShare$2;->val$docId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 432
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailShare$2;->val$mContext:Landroid/content/Context;

    iget v1, p0, Lcom/baidu/bulletin/ui/detail/DetailShare$2;->val$docId:I

    #calls: Lcom/baidu/bulletin/ui/detail/DetailShare;->lunchAppInstall(Landroid/content/Context;I)V
    invoke-static {v0, v1}, Lcom/baidu/bulletin/ui/detail/DetailShare;->access$700(Landroid/content/Context;I)V

    .line 433
    return-void
.end method
