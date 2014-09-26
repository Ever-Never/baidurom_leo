.class Lcom/inveno/newpiflow/channel/WaterwallChannelGridAdapter$Holder;
.super Ljava/lang/Object;
.source "WaterwallChannelGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inveno/newpiflow/channel/WaterwallChannelGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Holder"
.end annotation


# instance fields
.field channelNameTv:Landroid/widget/TextView;

.field deleteItem:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/inveno/newpiflow/channel/WaterwallChannelGridAdapter;


# direct methods
.method private constructor <init>(Lcom/inveno/newpiflow/channel/WaterwallChannelGridAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/inveno/newpiflow/channel/WaterwallChannelGridAdapter$Holder;->this$0:Lcom/inveno/newpiflow/channel/WaterwallChannelGridAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/inveno/newpiflow/channel/WaterwallChannelGridAdapter;Lcom/inveno/newpiflow/channel/WaterwallChannelGridAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/inveno/newpiflow/channel/WaterwallChannelGridAdapter$Holder;-><init>(Lcom/inveno/newpiflow/channel/WaterwallChannelGridAdapter;)V

    return-void
.end method
