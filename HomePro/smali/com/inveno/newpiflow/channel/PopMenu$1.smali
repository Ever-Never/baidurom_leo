.class Lcom/inveno/newpiflow/channel/PopMenu$1;
.super Ljava/lang/Object;
.source "PopMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inveno/newpiflow/channel/PopMenu;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/inveno/newpiflow/channel/PopMenu;


# direct methods
.method constructor <init>(Lcom/inveno/newpiflow/channel/PopMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/inveno/newpiflow/channel/PopMenu$1;->this$0:Lcom/inveno/newpiflow/channel/PopMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/inveno/newpiflow/channel/PopMenu$1;->this$0:Lcom/inveno/newpiflow/channel/PopMenu;

    invoke-virtual {v0}, Lcom/inveno/newpiflow/channel/PopMenu;->dismiss()V

    .line 65
    return-void
.end method
