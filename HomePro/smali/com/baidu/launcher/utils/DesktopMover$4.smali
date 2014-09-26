.class Lcom/baidu/launcher/utils/DesktopMover$4;
.super Ljava/lang/Object;
.source "DesktopMover.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/utils/DesktopMover;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/utils/DesktopMover;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/utils/DesktopMover;)V
    .locals 0
    .parameter

    .prologue
    .line 451
    iput-object p1, p0, Lcom/baidu/launcher/utils/DesktopMover$4;->this$0:Lcom/baidu/launcher/utils/DesktopMover;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 454
    iget-object v0, p0, Lcom/baidu/launcher/utils/DesktopMover$4;->this$0:Lcom/baidu/launcher/utils/DesktopMover;

    invoke-virtual {v0}, Lcom/baidu/launcher/utils/DesktopMover;->checkDesktopMove()V

    .line 455
    return-void
.end method
