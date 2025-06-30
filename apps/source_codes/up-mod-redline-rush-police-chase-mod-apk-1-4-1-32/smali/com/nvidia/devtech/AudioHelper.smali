.class public Lcom/nvidia/devtech/AudioHelper;
.super Ljava/lang/Object;
.source "AudioHelper.java"


# static fields
.field private static final MAX_SOUND_STREAMS:I = 0xa

.field private static ResourceLocation:Ljava/lang/String; = "com.nvidia.devtech.audio:raw/"

.field private static final TAG:Ljava/lang/String; = "AudioHelper"

.field private static instance:Lcom/nvidia/devtech/AudioHelper;


# instance fields
.field private MusicPlayer:Landroid/media/MediaPlayer;

.field private context:Landroid/content/Context;

.field private restartMusic:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/nvidia/devtech/AudioHelper;->context:Landroid/content/Context;

    .line 39
    iput-object v0, p0, Lcom/nvidia/devtech/AudioHelper;->MusicPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    .line 173
    iput-boolean v0, p0, Lcom/nvidia/devtech/AudioHelper;->restartMusic:Z

    return-void
.end method

.method public static getInstance()Lcom/nvidia/devtech/AudioHelper;
    .locals 1

    .line 71
    sget-object v0, Lcom/nvidia/devtech/AudioHelper;->instance:Lcom/nvidia/devtech/AudioHelper;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/nvidia/devtech/AudioHelper;

    invoke-direct {v0}, Lcom/nvidia/devtech/AudioHelper;-><init>()V

    sput-object v0, Lcom/nvidia/devtech/AudioHelper;->instance:Lcom/nvidia/devtech/AudioHelper;

    .line 75
    invoke-virtual {v0}, Lcom/nvidia/devtech/AudioHelper;->Initialise()V

    .line 78
    :cond_0
    sget-object v0, Lcom/nvidia/devtech/AudioHelper;->instance:Lcom/nvidia/devtech/AudioHelper;

    return-object v0
.end method


# virtual methods
.method Initialise()V
    .locals 0

    return-void
.end method

.method public LoadSound(Ljava/lang/String;I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "filename",
            "Priority"
        }
    .end annotation

    const/4 p1, -0x1

    return p1
.end method

.method public LoadSoundAsset(Ljava/lang/String;I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "filename",
            "Priority"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public MusicPause()V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/nvidia/devtech/AudioHelper;->MusicPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/nvidia/devtech/AudioHelper;->MusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    return-void
.end method

.method public MusicSetDataSource(Ljava/lang/String;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "filename",
            "looped"
        }
    .end annotation

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MusicSetDataSource:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/nvidia/devtech/AudioHelper;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    .line 125
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/nvidia/devtech/AudioHelper;->MusicPlayer:Landroid/media/MediaPlayer;

    .line 126
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 127
    iget-object p1, p0, Lcom/nvidia/devtech/AudioHelper;->MusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 128
    iget-object p1, p0, Lcom/nvidia/devtech/AudioHelper;->MusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 132
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ex: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public MusicStart()V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/nvidia/devtech/AudioHelper;->MusicPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_0
    return-void
.end method

.method public MusicStop()V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/nvidia/devtech/AudioHelper;->MusicPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/nvidia/devtech/AudioHelper;->MusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 161
    iget-object v0, p0, Lcom/nvidia/devtech/AudioHelper;->MusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    :cond_0
    return-void
.end method

.method public MusicVolume(FF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "VolumeL",
            "VolumeR"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/nvidia/devtech/AudioHelper;->MusicPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_0
    return-void
.end method

.method public PauseSound(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "SoundID"
        }
    .end annotation

    return-void
.end method

.method public PlaySound(IFFIIF)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "SoundID",
            "lv",
            "rv",
            "priority",
            "loop",
            "rate"
        }
    .end annotation

    const/4 p1, -0x1

    return p1
.end method

.method public ResumeSound(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "SoundID"
        }
    .end annotation

    return-void
.end method

.method SetMaxVolume()V
    .locals 4

    .line 150
    iget-object v0, p0, Lcom/nvidia/devtech/AudioHelper;->context:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x3

    .line 151
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    const/4 v3, 0x0

    .line 153
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void
.end method

.method public SetResouceLocation(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 61
    sput-object p1, Lcom/nvidia/devtech/AudioHelper;->ResourceLocation:Ljava/lang/String;

    return-void
.end method

.method public SetVolume(IFF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "SoundID",
            "vl",
            "vr"
        }
    .end annotation

    return-void
.end method

.method public StopSound(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "SoundID"
        }
    .end annotation

    return-void
.end method

.method public UnloadSample(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "SoundID"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public finalize()V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/nvidia/devtech/AudioHelper;->MusicPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/nvidia/devtech/AudioHelper;->MusicPlayer:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/nvidia/devtech/AudioHelper;->MusicPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/nvidia/devtech/AudioHelper;->MusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    const/4 v0, 0x1

    .line 179
    iput-boolean v0, p0, Lcom/nvidia/devtech/AudioHelper;->restartMusic:Z

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/nvidia/devtech/AudioHelper;->MusicPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/nvidia/devtech/AudioHelper;->restartMusic:Z

    if-eqz v1, :cond_0

    .line 187
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x0

    .line 188
    iput-boolean v0, p0, Lcom/nvidia/devtech/AudioHelper;->restartMusic:Z

    :cond_0
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lcom/nvidia/devtech/AudioHelper;->context:Landroid/content/Context;

    return-void
.end method
