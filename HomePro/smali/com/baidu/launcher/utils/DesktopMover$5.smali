.class Lcom/baidu/launcher/utils/DesktopMover$5;
.super Landroid/widget/BaseAdapter;
.source "DesktopMover.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/utils/DesktopMover;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/utils/DesktopMover;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/utils/DesktopMover;)V
    .locals 0
    .parameter

    .prologue
    .line 496
    iput-object p1, p0, Lcom/baidu/launcher/utils/DesktopMover$5;->this$0:Lcom/baidu/launcher/utils/DesktopMover;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/baidu/launcher/utils/DesktopMover$5;->this$0:Lcom/baidu/launcher/utils/DesktopMover;

    #getter for: Lcom/baidu/launcher/utils/DesktopMover;->mProvdersMatched:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/baidu/launcher/utils/DesktopMover;->access$100(Lcom/baidu/launcher/utils/DesktopMover;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/utils/DesktopMover$5;->this$0:Lcom/baidu/launcher/utils/DesktopMover;

    #getter for: Lcom/baidu/launcher/utils/DesktopMover;->mProvdersMatched:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/baidu/launcher/utils/DesktopMover;->access$100(Lcom/baidu/launcher/utils/DesktopMover;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 504
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 509
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "contentView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 514
    if-nez p2, :cond_0

    .line 515
    iget-object v2, p0, Lcom/baidu/launcher/utils/DesktopMover$5;->this$0:Lcom/baidu/launcher/utils/DesktopMover;

    #getter for: Lcom/baidu/launcher/utils/DesktopMover;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/baidu/launcher/utils/DesktopMover;->access$200(Lcom/baidu/launcher/utils/DesktopMover;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const/high16 v3, 0x7f03

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 517
    :cond_0
    move v0, p1

    .local v0, select:I
    move-object v1, p2

    .line 519
    check-cast v1, Landroid/widget/TextView;

    .line 520
    .local v1, textView:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/baidu/launcher/utils/DesktopMover$5;->this$0:Lcom/baidu/launcher/utils/DesktopMover;

    #getter for: Lcom/baidu/launcher/utils/DesktopMover;->mProvdersMatched:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/baidu/launcher/utils/DesktopMover;->access$100(Lcom/baidu/launcher/utils/DesktopMover;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/utils/DesktopMover$Provider;

    iget-object v2, v2, Lcom/baidu/launcher/utils/DesktopMover$Provider;->appLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 521
    iget-object v2, p0, Lcom/baidu/launcher/utils/DesktopMover$5;->this$0:Lcom/baidu/launcher/utils/DesktopMover;

    #getter for: Lcom/baidu/launcher/utils/DesktopMover;->mProvdersMatched:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/baidu/launcher/utils/DesktopMover;->access$100(Lcom/baidu/launcher/utils/DesktopMover;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/utils/DesktopMover$Provider;

    iget-object v2, v2, Lcom/baidu/launcher/utils/DesktopMover$Provider;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 522
    new-instance v2, Lcom/baidu/launcher/utils/DesktopMover$5$1;

    invoke-direct {v2, p0, v0}, Lcom/baidu/launcher/utils/DesktopMover$5$1;-><init>(Lcom/baidu/launcher/utils/DesktopMover$5;I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 558
    return-object p2
.end method
