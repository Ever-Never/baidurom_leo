.class Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel$1;
.super Ljava/lang/Object;
.source "BulletinCellBase.java"

# interfaces
.implements Lcom/baidu/bulletin/utils/MusicPlayer$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field handler:Landroid/os/Handler;

.field final synthetic this$1:Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel;)V
    .locals 1
    .parameter

    .prologue
    .line 315
    iput-object p1, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel$1;->this$1:Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel$1;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onProgressBarUpdata(I)V
    .locals 0
    .parameter "percent"

    .prologue
    .line 351
    return-void
.end method

.method public onStateChanged(Lcom/baidu/bulletin/utils/MusicPlayer$State;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 320
    iget-object v0, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel$1;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel$1$1;

    invoke-direct {v1, p0}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel$1$1;-><init>(Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 326
    return-void
.end method

.method public onToastStateChanged(Lcom/baidu/bulletin/utils/MusicPlayer$Toast;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel$1;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel$1$2;

    invoke-direct {v1, p0, p1}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel$1$2;-><init>(Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel$1;Lcom/baidu/bulletin/utils/MusicPlayer$Toast;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 346
    return-void
.end method
