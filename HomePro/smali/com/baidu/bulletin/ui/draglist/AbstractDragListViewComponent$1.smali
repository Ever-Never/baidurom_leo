.class Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$1;
.super Ljava/lang/Object;
.source "AbstractDragListViewComponent.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->setEmptyView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$1;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 117
    const/4 v0, 0x1

    return v0
.end method
