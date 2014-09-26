.class Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "PullGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field btn_download:Landroid/widget/Button;

.field imageview_cover:Landroid/widget/ImageView;

.field path:Landroid/net/Uri;

.field status:I

.field textview_size:Landroid/widget/TextView;

.field textview_title:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter$ViewHolder;->this$0:Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
