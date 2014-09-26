.class Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$1;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$1;->this$0:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$1;->this$0:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->setResult(I)V

    .line 137
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$1;->this$0:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->finish()V

    .line 138
    return-void
.end method
