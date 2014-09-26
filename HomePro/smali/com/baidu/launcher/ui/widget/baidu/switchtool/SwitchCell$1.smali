.class Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell$1;
.super Ljava/lang/Object;
.source "SwitchCell.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;->listener:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell$UserActionListener;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;->access$000(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;)Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell$UserActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;->listener:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell$UserActionListener;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;->access$000(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;)Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell$UserActionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;

    invoke-interface {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell$UserActionListener;->onClicked(Landroid/view/View;)V

    .line 40
    :cond_0
    return-void
.end method
