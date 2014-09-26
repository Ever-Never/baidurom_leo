.class public Lcom/baidu/launcher/feedback/CommonQuestionAdapter;
.super Landroid/widget/BaseAdapter;
.source "CommonQuestionAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/feedback/CommonQuestionItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "aContext"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/feedback/CommonQuestionItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p2, aDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/feedback/CommonQuestionItem;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/baidu/launcher/feedback/CommonQuestionAdapter;->mContext:Landroid/content/Context;

    .line 22
    if-nez p2, :cond_0

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/feedback/CommonQuestionAdapter;->mDataList:Ljava/util/ArrayList;

    .line 28
    :goto_0
    return-void

    .line 25
    :cond_0
    iput-object p2, p0, Lcom/baidu/launcher/feedback/CommonQuestionAdapter;->mDataList:Ljava/util/ArrayList;

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/baidu/launcher/feedback/CommonQuestionAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "aPosition"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/launcher/feedback/CommonQuestionAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "aPosition"

    .prologue
    .line 46
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "aPosition"
    .parameter "aContentView"
    .parameter "aParent"

    .prologue
    .line 52
    if-nez p2, :cond_0

    .line 53
    iget-object v3, p0, Lcom/baidu/launcher/feedback/CommonQuestionAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03004a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 58
    .local v1, contentView:Landroid/view/View;
    :goto_0
    const v3, 0x7f080026

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 59
    .local v2, title:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/baidu/launcher/feedback/CommonQuestionAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/feedback/CommonQuestionItem;

    invoke-virtual {v3}, Lcom/baidu/launcher/feedback/CommonQuestionItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    const v3, 0x7f0800fc

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 61
    .local v0, content:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/baidu/launcher/feedback/CommonQuestionAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/feedback/CommonQuestionItem;

    invoke-virtual {v3}, Lcom/baidu/launcher/feedback/CommonQuestionItem;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    return-object v1

    .line 56
    .end local v0           #content:Landroid/widget/TextView;
    .end local v1           #contentView:Landroid/view/View;
    .end local v2           #title:Landroid/widget/TextView;
    :cond_0
    move-object v1, p2

    .restart local v1       #contentView:Landroid/view/View;
    goto :goto_0
.end method

.method public setDateList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/feedback/CommonQuestionItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, aDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/feedback/CommonQuestionItem;>;"
    iput-object p1, p0, Lcom/baidu/launcher/feedback/CommonQuestionAdapter;->mDataList:Ljava/util/ArrayList;

    .line 32
    return-void
.end method
