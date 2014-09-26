.class Lcom/baidu/launcher/feedback/FeedBackFragment$SelectAdapter;
.super Landroid/widget/BaseAdapter;
.source "FeedBackFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/feedback/FeedBackFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectAdapter"
.end annotation


# instance fields
.field mData:[Ljava/lang/String;

.field mType:I

.field final synthetic this$0:Lcom/baidu/launcher/feedback/FeedBackFragment;


# direct methods
.method public constructor <init>(Lcom/baidu/launcher/feedback/FeedBackFragment;I)V
    .locals 1
    .parameter
    .parameter "type"

    .prologue
    .line 318
    iput-object p1, p0, Lcom/baidu/launcher/feedback/FeedBackFragment$SelectAdapter;->this$0:Lcom/baidu/launcher/feedback/FeedBackFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 315
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/launcher/feedback/FeedBackFragment$SelectAdapter;->mType:I

    .line 319
    packed-switch p2, :pswitch_data_0

    .line 329
    :goto_0
    return-void

    .line 321
    :pswitch_0
    #getter for: Lcom/baidu/launcher/feedback/FeedBackFragment;->mAgeData:[Ljava/lang/String;
    invoke-static {p1}, Lcom/baidu/launcher/feedback/FeedBackFragment;->access$1000(Lcom/baidu/launcher/feedback/FeedBackFragment;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/feedback/FeedBackFragment$SelectAdapter;->mData:[Ljava/lang/String;

    goto :goto_0

    .line 324
    :pswitch_1
    #getter for: Lcom/baidu/launcher/feedback/FeedBackFragment;->mGenderData:[Ljava/lang/String;
    invoke-static {p1}, Lcom/baidu/launcher/feedback/FeedBackFragment;->access$1300(Lcom/baidu/launcher/feedback/FeedBackFragment;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/feedback/FeedBackFragment$SelectAdapter;->mData:[Ljava/lang/String;

    goto :goto_0

    .line 319
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/baidu/launcher/feedback/FeedBackFragment$SelectAdapter;->mData:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 338
    iget-object v0, p0, Lcom/baidu/launcher/feedback/FeedBackFragment$SelectAdapter;->mData:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 343
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 348
    if-nez p2, :cond_0

    .line 349
    iget-object v1, p0, Lcom/baidu/launcher/feedback/FeedBackFragment$SelectAdapter;->this$0:Lcom/baidu/launcher/feedback/FeedBackFragment;

    invoke-virtual {v1}, Lcom/baidu/launcher/feedback/FeedBackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300ab

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 352
    :cond_0
    const v1, 0x7f0800fc

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 353
    .local v0, tv:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/baidu/launcher/feedback/FeedBackFragment$SelectAdapter;->mData:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    return-object p2
.end method
