.class Lcom/baidu/bulletin/ui/settings/ConfigItem$2;
.super Ljava/lang/Object;
.source "ConfigItem.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/ui/settings/ConfigItem;->showConfirmDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/ui/settings/ConfigItem;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/ui/settings/ConfigItem;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/baidu/bulletin/ui/settings/ConfigItem$2;->this$0:Lcom/baidu/bulletin/ui/settings/ConfigItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/baidu/bulletin/ui/settings/ConfigItem$2;->this$0:Lcom/baidu/bulletin/ui/settings/ConfigItem;

    #calls: Lcom/baidu/bulletin/ui/settings/ConfigItem;->switchState()V
    invoke-static {v0}, Lcom/baidu/bulletin/ui/settings/ConfigItem;->access$000(Lcom/baidu/bulletin/ui/settings/ConfigItem;)V

    .line 121
    return-void
.end method
