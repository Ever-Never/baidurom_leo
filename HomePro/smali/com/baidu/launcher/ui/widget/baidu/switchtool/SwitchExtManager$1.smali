.class Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtManager$1;
.super Ljava/lang/Object;
.source "SwitchExtManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtManager;->open(Landroid/content/Context;Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtManager;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtManager;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtManager$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtManager$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtManager;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtManager;->close()V

    .line 59
    return-void
.end method
