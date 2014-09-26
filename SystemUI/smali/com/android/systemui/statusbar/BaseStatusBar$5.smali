.class Lcom/android/systemui/statusbar/BaseStatusBar$5;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar;->getNotificationLongClicker()Landroid/view/View$OnLongClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/BaseStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0
    .parameter

    .prologue
    .line 392
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 8
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 396
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    #setter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mAnchor:Landroid/view/View;
    invoke-static {v4, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$102(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/view/View;)Landroid/view/View;

    .line 397
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 398
    .local v0, entry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Landroid/os/IBinder;

    #setter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mkey:Landroid/os/IBinder;
    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$202(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 400
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getNotificationPopupMenu(Lcom/android/systemui/statusbar/NotificationData$Entry;)Landroid/view/View;

    move-result-object v5

    #setter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mLayout:Landroid/view/View;
    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$302(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/view/View;)Landroid/view/View;

    .line 401
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    #getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mLayout:Landroid/view/View;
    invoke-static {v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$300(Lcom/android/systemui/statusbar/BaseStatusBar;)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    .line 422
    :goto_0
    return v2

    .line 403
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e004c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 404
    .local v1, width:I
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isSystemNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 405
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v5, v5, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e004e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    #setter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mPopupHeight:I
    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$402(Lcom/android/systemui/statusbar/BaseStatusBar;I)I

    .line 409
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    new-instance v5, Landroid/widget/PopupWindow;

    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    #getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mLayout:Landroid/view/View;
    invoke-static {v6}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$300(Lcom/android/systemui/statusbar/BaseStatusBar;)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    #getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mPopupHeight:I
    invoke-static {v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$400(Lcom/android/systemui/statusbar/BaseStatusBar;)I

    move-result v7

    invoke-direct {v5, v6, v1, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v5, v4, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationBlamePopup:Landroid/widget/PopupWindow;

    .line 410
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationBlamePopup:Landroid/widget/PopupWindow;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 411
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationBlamePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 412
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationBlamePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 414
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    #calls: Lcom/android/systemui/statusbar/BaseStatusBar;->getPopDirect()Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$500(Lcom/android/systemui/statusbar/BaseStatusBar;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 415
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    #getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mLayout:Landroid/view/View;
    invoke-static {v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$300(Lcom/android/systemui/statusbar/BaseStatusBar;)Landroid/view/View;

    move-result-object v2

    const v4, 0x7f0202a6

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 416
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationBlamePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    :goto_2
    move v2, v3

    .line 422
    goto :goto_0

    .line 407
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v5, v5, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e004d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    #setter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mPopupHeight:I
    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$402(Lcom/android/systemui/statusbar/BaseStatusBar;I)I

    goto :goto_1

    .line 418
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    #getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mLayout:Landroid/view/View;
    invoke-static {v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$300(Lcom/android/systemui/statusbar/BaseStatusBar;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0202a2

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 419
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationBlamePopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    rsub-int/lit8 v5, v5, 0x0

    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    #getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mPopupHeight:I
    invoke-static {v6}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$400(Lcom/android/systemui/statusbar/BaseStatusBar;)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v4, p1, v2, v5}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_2
.end method
