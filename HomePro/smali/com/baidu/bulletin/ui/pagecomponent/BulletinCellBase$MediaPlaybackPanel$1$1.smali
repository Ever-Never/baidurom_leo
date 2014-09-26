.class Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel$1$1;
.super Ljava/lang/Object;
.source "BulletinCellBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel$1;->onStateChanged(Lcom/baidu/bulletin/utils/MusicPlayer$State;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel$1;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel$1;)V
    .locals 0
    .parameter

    .prologue
    .line 320
    iput-object p1, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel$1$1;->this$2:Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel$1$1;->this$2:Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel$1;

    iget-object v0, v0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel$1;->this$1:Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel;

    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel;->refreshPlayStatus()V

    .line 324
    return-void
.end method
