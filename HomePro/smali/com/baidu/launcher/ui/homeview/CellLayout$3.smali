.class Lcom/baidu/launcher/ui/homeview/CellLayout$3;
.super Ljava/lang/Object;
.source "CellLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/homeview/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/homeview/CellLayout;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/homeview/CellLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$3;->this$0:Lcom/baidu/launcher/ui/homeview/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$3;->this$0:Lcom/baidu/launcher/ui/homeview/CellLayout;

    const/4 v1, 0x0

    #setter for: Lcom/baidu/launcher/ui/homeview/CellLayout;->doubleClick:Z
    invoke-static {v0, v1}, Lcom/baidu/launcher/ui/homeview/CellLayout;->access$202(Lcom/baidu/launcher/ui/homeview/CellLayout;Z)Z

    .line 293
    return-void
.end method
