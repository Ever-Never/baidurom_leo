.class Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$2;
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
    .line 141
    iput-object p1, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$2;->this$0:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$2;->this$0:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;

    #calls: Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->onSaveClicked()V
    invoke-static {v0}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->access$000(Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;)V

    .line 144
    return-void
.end method
