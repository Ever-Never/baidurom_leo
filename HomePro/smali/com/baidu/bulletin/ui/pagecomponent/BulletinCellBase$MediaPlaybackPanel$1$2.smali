.class Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel$1$2;
.super Ljava/lang/Object;
.source "BulletinCellBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel$1;->onToastStateChanged(Lcom/baidu/bulletin/utils/MusicPlayer$Toast;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel$1;

.field final synthetic val$state:Lcom/baidu/bulletin/utils/MusicPlayer$Toast;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel$1;Lcom/baidu/bulletin/utils/MusicPlayer$Toast;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 330
    iput-object p1, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel$1$2;->this$2:Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel$1;

    iput-object p2, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel$1$2;->val$state:Lcom/baidu/bulletin/utils/MusicPlayer$Toast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 333
    const-string v0, "MediaPlaybackPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel$1$2;->val$state:Lcom/baidu/bulletin/utils/MusicPlayer$Toast;

    invoke-virtual {v2}, Lcom/baidu/bulletin/utils/MusicPlayer$Toast;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    sget-object v0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$2;->$SwitchMap$com$baidu$bulletin$utils$MusicPlayer$Toast:[I

    iget-object v1, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel$1$2;->val$state:Lcom/baidu/bulletin/utils/MusicPlayer$Toast;

    invoke-virtual {v1}, Lcom/baidu/bulletin/utils/MusicPlayer$Toast;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 344
    :goto_0
    return-void

    .line 341
    :pswitch_0
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/UIController;->getUIController()Lcom/baidu/bulletin/ui/logic/UIController;

    move-result-object v0

    const-string v1, "\u97f3\u4e50\u6682\u65f6\u65e0\u6cd5\u64ad\u653e"

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/logic/UIController;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 334
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
