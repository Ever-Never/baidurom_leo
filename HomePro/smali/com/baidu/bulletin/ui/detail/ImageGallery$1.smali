.class Lcom/baidu/bulletin/ui/detail/ImageGallery$1;
.super Ljava/lang/Object;
.source "ImageGallery.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/detail/ImageGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/ui/detail/ImageGallery;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/ui/detail/ImageGallery;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/baidu/bulletin/ui/detail/ImageGallery$1;->this$0:Lcom/baidu/bulletin/ui/detail/ImageGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "arg1"
    .parameter "position"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v2, -0x1

    .line 126
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ImageGallery$1;->this$0:Lcom/baidu/bulletin/ui/detail/ImageGallery;

    #getter for: Lcom/baidu/bulletin/ui/detail/ImageGallery;->mCurItemPosition:I
    invoke-static {v0}, Lcom/baidu/bulletin/ui/detail/ImageGallery;->access$000(Lcom/baidu/bulletin/ui/detail/ImageGallery;)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 127
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ImageGallery$1;->this$0:Lcom/baidu/bulletin/ui/detail/ImageGallery;

    #setter for: Lcom/baidu/bulletin/ui/detail/ImageGallery;->mCurItemPosition:I
    invoke-static {v0, p3}, Lcom/baidu/bulletin/ui/detail/ImageGallery;->access$002(Lcom/baidu/bulletin/ui/detail/ImageGallery;I)I

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ImageGallery$1;->this$0:Lcom/baidu/bulletin/ui/detail/ImageGallery;

    #getter for: Lcom/baidu/bulletin/ui/detail/ImageGallery;->mCurItemPosition:I
    invoke-static {v0}, Lcom/baidu/bulletin/ui/detail/ImageGallery;->access$000(Lcom/baidu/bulletin/ui/detail/ImageGallery;)I

    move-result v0

    if-le p3, v0, :cond_3

    .line 132
    invoke-static {}, Lcom/baidu/bulletin/utils/BulletinUBC;->statForBeautyGirlImageNextFlip()V

    .line 136
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ImageGallery$1;->this$0:Lcom/baidu/bulletin/ui/detail/ImageGallery;

    #setter for: Lcom/baidu/bulletin/ui/detail/ImageGallery;->mCurItemPosition:I
    invoke-static {v0, p3}, Lcom/baidu/bulletin/ui/detail/ImageGallery;->access$002(Lcom/baidu/bulletin/ui/detail/ImageGallery;I)I

    .line 137
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ImageGallery$1;->this$0:Lcom/baidu/bulletin/ui/detail/ImageGallery;

    #getter for: Lcom/baidu/bulletin/ui/detail/ImageGallery;->mCurItemPosition:I
    invoke-static {v0}, Lcom/baidu/bulletin/ui/detail/ImageGallery;->access$000(Lcom/baidu/bulletin/ui/detail/ImageGallery;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ImageGallery$1;->this$0:Lcom/baidu/bulletin/ui/detail/ImageGallery;

    #getter for: Lcom/baidu/bulletin/ui/detail/ImageGallery;->mCurItemPosition:I
    invoke-static {v0}, Lcom/baidu/bulletin/ui/detail/ImageGallery;->access$000(Lcom/baidu/bulletin/ui/detail/ImageGallery;)I

    move-result v0

    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/ImageGallery$1;->this$0:Lcom/baidu/bulletin/ui/detail/ImageGallery;

    #getter for: Lcom/baidu/bulletin/ui/detail/ImageGallery;->mCount:I
    invoke-static {v1}, Lcom/baidu/bulletin/ui/detail/ImageGallery;->access$100(Lcom/baidu/bulletin/ui/detail/ImageGallery;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_0

    .line 138
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ImageGallery$1;->this$0:Lcom/baidu/bulletin/ui/detail/ImageGallery;

    #setter for: Lcom/baidu/bulletin/ui/detail/ImageGallery;->mLastPosition:I
    invoke-static {v0, v2}, Lcom/baidu/bulletin/ui/detail/ImageGallery;->access$202(Lcom/baidu/bulletin/ui/detail/ImageGallery;I)I

    goto :goto_0

    .line 133
    :cond_3
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ImageGallery$1;->this$0:Lcom/baidu/bulletin/ui/detail/ImageGallery;

    #getter for: Lcom/baidu/bulletin/ui/detail/ImageGallery;->mCurItemPosition:I
    invoke-static {v0}, Lcom/baidu/bulletin/ui/detail/ImageGallery;->access$000(Lcom/baidu/bulletin/ui/detail/ImageGallery;)I

    move-result v0

    if-ge p3, v0, :cond_2

    .line 134
    invoke-static {}, Lcom/baidu/bulletin/utils/BulletinUBC;->statForBeautyGirlImagePrevFlip()V

    goto :goto_1
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
