.class Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$1;
.super Landroid/os/Handler;
.source "CameraWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 79
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 136
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 81
    :pswitch_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 82
    .local v3, obj:Ljava/lang/Object;
    if-eqz v3, :cond_1

    .line 83
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;

    check-cast v3, Ljava/util/List;

    .end local v3           #obj:Ljava/lang/Object;
    #setter for: Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->currPhoto:Ljava/util/List;
    invoke-static {v4, v3}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->access$002(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;Ljava/util/List;)Ljava/util/List;

    .line 85
    :cond_1
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->isCanUpdate:Z
    invoke-static {v4}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->access$100(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 86
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;

    #calls: Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->updatePhotoContainer()V
    invoke-static {v4}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->access$200(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;)V

    goto :goto_0

    .line 91
    :pswitch_2
    const-string v4, "CameraWidget_tag"

    const-string v5, "SAVE_COMPELET"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;

    #calls: Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->updateNewPhoto()V
    invoke-static {v4}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->access$300(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;)V

    goto :goto_0

    .line 96
    :pswitch_3
    const-string v4, "CameraWidget_tag"

    const-string v5, "onAutoFocusMoving AUTO_FOCUS_FINISH"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->access$500(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$1$1;

    invoke-direct {v5, p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$1$1;-><init>(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$1;)V

    const-wide/16 v6, 0x2bc

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 109
    :pswitch_4
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;

    invoke-virtual {v4}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->stopCameraAndHidePreview()V

    goto :goto_0

    .line 114
    :pswitch_5
    :try_start_0
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->access$500(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils;->updateExistsFiles(Landroid/os/Handler;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v1

    .line 116
    .local v1, e:Ljava/sql/SQLException;
    invoke-virtual {v1}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_0

    .line 121
    .end local v1           #e:Ljava/sql/SQLException;
    :pswitch_6
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 122
    .local v2, imagecount:I
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mWorkingDrawables:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->access$600(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 123
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mWorkingFlag:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->access$700(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 127
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v2           #imagecount:I
    :pswitch_7
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mWorkingFlag:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->access$700(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;)Landroid/widget/ImageView;

    move-result-object v4

    const v5, 0x7f0201a6

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 130
    :pswitch_8
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mPreview:Landroid/view/TextureView;
    invoke-static {v4}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->access$800(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;)Landroid/view/TextureView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/TextureView;->setVisibility(I)V

    goto/16 :goto_0

    .line 133
    :pswitch_9
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mPhotoContainer:Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView;
    invoke-static {v4}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->access$900(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;)Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView;->onPause()V

    goto/16 :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
