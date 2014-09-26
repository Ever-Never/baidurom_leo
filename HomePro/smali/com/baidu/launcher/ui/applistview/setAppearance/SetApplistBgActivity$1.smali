.class Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity$1;
.super Ljava/lang/Object;
.source "SetApplistBgActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity$1;->this$0:Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 93
    if-eqz p2, :cond_0

    .line 94
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity$1;->this$0:Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;

    const/16 v1, 0x32

    #calls: Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->updateAlpha(I)V
    invoke-static {v0, v1}, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->access$000(Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;I)V

    .line 95
    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropUtil;->mApplistBgChange:Z

    .line 97
    :cond_0
    return-void
.end method
